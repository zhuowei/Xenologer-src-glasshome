package com.google.glass.util;

import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.io.Files;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

public class CachedFilesManager
{
  private static final long DELETION_BUDGET_MS = 200L;
  private static final String TAG = CachedFilesManager.class.getSimpleName();
  private static CachedFilesManager sharedInstance;
  private final File dir;
  public final int dirPathLength;
  private final Map<String, Integer> filePathToUsageCount;
  private final FileSaver fileSaver;
  private final long limitInByte;
  private final int limitInCount;
  private int numOfFiles;
  private int pendingTrimmings;
  private long sizeInBytes;
  private final long targetLimitInByte;
  private final int targetLimitInCount;

  public CachedFilesManager(String paramString, long paramLong, int paramInt)
  {
    this.dir = new File(paramString);
    this.filePathToUsageCount = new HashMap();
    this.fileSaver = new FileSaver(paramString);
    this.dirPathLength = this.dir.getAbsolutePath().length();
    this.limitInByte = paramLong;
    this.targetLimitInByte = (paramLong >> 1);
    this.limitInCount = paramInt;
    this.targetLimitInCount = (paramInt >> 1);
    this.numOfFiles = -1;
    this.sizeInBytes = -1L;
    this.pendingTrimmings = 0;
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        CachedFilesManager.this.setupFileBookkeeping();
      }
    });
  }

  private long getAvailableExternalStorageSpaceInByte()
  {
    try
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      long l = localStatFs.getBlockSize();
      int i = localStatFs.getAvailableBlocks();
      return l * i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return 0L;
  }

  public static CachedFilesManager getSharedInstance()
  {
    return sharedInstance;
  }

  public static void setSharedInstance(CachedFilesManager paramCachedFilesManager)
  {
    sharedInstance = paramCachedFilesManager;
  }

  private void setupFileBookkeeping()
  {
    while (true)
    {
      int j;
      synchronized (this.filePathToUsageCount)
      {
        if ((this.numOfFiles < 0) || (this.sizeInBytes < 0L))
        {
          Log.i(TAG, "Scanning " + this.dir + " for the amount of files and the total size of files ...");
          this.numOfFiles = 0;
          this.sizeInBytes = 0L;
          File[] arrayOfFile = this.dir.listFiles();
          if (arrayOfFile != null)
          {
            int i = arrayOfFile.length;
            j = 0;
            if (j < i)
            {
              File localFile = arrayOfFile[j];
              if (!localFile.isFile())
                break label146;
              this.numOfFiles = (1 + this.numOfFiles);
              this.sizeInBytes += localFile.length();
              break label146;
            }
          }
        }
        return;
      }
      label146: j++;
    }
  }

  private void trimCachedFilesIfNeeded()
  {
    synchronized (this.filePathToUsageCount)
    {
      if ((this.sizeInBytes > this.limitInByte) || (this.numOfFiles > this.limitInCount))
        trimTo(this.targetLimitInByte, this.targetLimitInCount);
      this.pendingTrimmings = (-1 + this.pendingTrimmings);
      return;
    }
  }

  private void trimTo(long paramLong, int paramInt)
  {
    Thread.currentThread();
    Assert.assertTrue(Thread.holdsLock(this.filePathToUsageCount));
    long l = System.currentTimeMillis();
    List localList = Arrays.asList(this.dir.listFiles());
    Collections.sort(localList, new Comparator()
    {
      public int compare(File paramAnonymousFile1, File paramAnonymousFile2)
      {
        if (paramAnonymousFile1.lastModified() < paramAnonymousFile2.lastModified())
          return -1;
        if (paramAnonymousFile1.lastModified() > paramAnonymousFile2.lastModified())
          return 1;
        return paramAnonymousFile1.compareTo(paramAnonymousFile2);
      }
    });
    Iterator localIterator = localList.iterator();
    label260: 
    do
    {
      while (localIterator.hasNext())
      {
        File localFile = (File)localIterator.next();
        if (localFile.isFile())
          if (this.filePathToUsageCount.containsKey(localFile.getAbsolutePath()))
          {
            Log.v(TAG, "Can't delete file " + localFile.getAbsolutePath() + " which is still in use");
          }
          else
          {
            this.sizeInBytes -= localFile.length();
            this.numOfFiles = (-1 + this.numOfFiles);
            localFile.delete();
            Log.v(TAG, "delete file " + localFile.getName() + ", sizeInBytes =  " + this.sizeInBytes + ", numOfFiles = " + this.numOfFiles + ", targetSize = " + paramLong + ", targetCount = " + paramInt);
            if ((this.sizeInBytes > paramLong) || (this.numOfFiles > paramInt))
              break label260;
          }
      }
      return;
    }
    while ((200L + l >= System.currentTimeMillis()) || (this.sizeInBytes > this.limitInByte) || (this.numOfFiles > this.limitInCount));
    Log.v(TAG, "Exist trimming due to timeout: " + (System.currentTimeMillis() - l) + "ms, size = " + this.sizeInBytes + ", count = " + this.numOfFiles);
  }

  private void updateFileBookkeeping(int paramInt1, long paramLong, int paramInt2)
  {
    synchronized (this.filePathToUsageCount)
    {
      this.numOfFiles = (paramInt1 + this.numOfFiles);
      this.sizeInBytes = (paramLong + this.sizeInBytes);
      this.pendingTrimmings = (paramInt2 + this.pendingTrimmings);
      if ((this.numOfFiles < 0) || (this.sizeInBytes < 0L))
        Log.i(TAG, "Bookkeeping " + this.dir + " has become corrupt");
      return;
    }
  }

  public boolean contains(Type paramType, String paramString)
  {
    Assert.assertNotUiThread();
    String str = getPath(paramType, paramString);
    if (str == null)
      return false;
    try
    {
      increaseUsage(str);
      File localFile = new File(str);
      if (localFile.exists())
      {
        long l = localFile.length();
        if (l != 0L);
      }
      else
      {
        return false;
      }
      localFile.setLastModified(this.fileSaver.getModifiedTime());
      return true;
    }
    finally
    {
      releaseUsage(str);
    }
  }

  public void disableMockModifiedTimeForTest()
  {
    this.fileSaver.disableMockModifiedTimeForTest();
  }

  public void enableMockModifiedTimeForTest()
  {
    this.fileSaver.enableMockModifiedTimeForTest();
  }

  public String getPath(Type paramType, String paramString)
  {
    File localFile = this.dir;
    if (!localFile.exists())
      return null;
    return localFile.getAbsolutePath() + File.separator + paramType.prefix + paramString;
  }

  public Type getType(String paramString)
  {
    if (!paramString.startsWith(this.dir.getAbsolutePath()))
      return Type.NONE;
    return Type.get(paramString.substring(1 + this.dirPathLength));
  }

  public void increaseUsage(String paramString)
  {
    Assert.assertNotUiThread();
    if (paramString == null)
    {
      Log.w(TAG, "increaseUsage with null filePath");
      return;
    }
    while (true)
    {
      Integer localInteger1;
      synchronized (this.filePathToUsageCount)
      {
        localInteger1 = (Integer)this.filePathToUsageCount.get(paramString);
        if (localInteger1 == null)
        {
          localObject2 = Integer.valueOf(1);
          this.filePathToUsageCount.put(paramString, localObject2);
          return;
        }
      }
      Integer localInteger2 = Integer.valueOf(1 + localInteger1.intValue());
      Object localObject2 = localInteger2;
    }
  }

  public <T> T load(Type paramType, String paramString, Loader<T> paramLoader)
  {
    try
    {
      Assert.assertNotUiThread();
      Object localObject2 = load(getPath(paramType, paramString), paramLoader);
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }

  public <T> T load(String paramString, Loader<T> paramLoader)
  {
    if (paramString == null)
    {
      Log.w(TAG, "load with null filePath");
      return null;
    }
    try
    {
      increaseUsage(paramString);
      Object localObject2 = paramLoader.load(paramString);
      if (localObject2 != null)
        new File(paramString).setLastModified(this.fileSaver.getModifiedTime());
      while (true)
      {
        return localObject2;
        Log.v(TAG, "Failed to load [" + paramString + "]");
      }
    }
    finally
    {
      releaseUsage(paramString);
    }
  }

  public boolean noPendingTrimmings()
  {
    while (true)
    {
      synchronized (this.filePathToUsageCount)
      {
        if (this.pendingTrimmings == 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }

  public void releaseUsage(String paramString)
  {
    Assert.assertNotUiThread();
    if (paramString == null)
    {
      Log.w(TAG, "releaseUsage with null filePath");
      return;
    }
    while (true)
    {
      Integer localInteger;
      synchronized (this.filePathToUsageCount)
      {
        localInteger = (Integer)this.filePathToUsageCount.get(paramString);
        if ((localInteger == null) || (localInteger.intValue() < 0))
        {
          Log.w(TAG, "Bad releasing: usageCount = " + localInteger + " found for " + paramString);
          this.filePathToUsageCount.remove(paramString);
          return;
        }
      }
      if (localInteger.intValue() == 1)
        this.filePathToUsageCount.remove(paramString);
      else if (localInteger.intValue() > 1)
        this.filePathToUsageCount.put(paramString, Integer.valueOf(-1 + localInteger.intValue()));
    }
  }

  public boolean save(Type paramType, String paramString, FileSaver.Saver paramSaver)
  {
    Assert.assertNotUiThread();
    setupFileBookkeeping();
    String str = getPath(paramType, paramString);
    try
    {
      increaseUsage(str);
      File localFile = new File(str);
      if (localFile.exists())
        updateFileBookkeeping(-1, -localFile.length(), 0);
      if (!this.fileSaver.write(paramSaver, localFile.getAbsolutePath()))
      {
        long l = 1024L + paramSaver.getEstimatedSizeBytes();
        if (getAvailableExternalStorageSpaceInByte() < l)
        {
          Log.w(TAG, "Space may be full for content of size " + paramSaver.getEstimatedSizeBytes() + ". Trim and retry.");
          if (!trimBySize(l))
          {
            Log.w(TAG, "No space to trim for content of size " + paramSaver.getEstimatedSizeBytes());
            return false;
          }
          boolean bool = this.fileSaver.write(paramSaver, localFile.getAbsolutePath());
          if (!bool)
            return false;
        }
        else
        {
          return false;
        }
      }
      updateFileBookkeeping(1, localFile.length(), 1);
      AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
      {
        public void run()
        {
          CachedFilesManager.this.trimCachedFilesIfNeeded();
        }
      });
      return true;
    }
    finally
    {
      releaseUsage(str);
    }
  }

  public boolean trimBySize(long paramLong)
  {
    synchronized (this.filePathToUsageCount)
    {
      if (this.sizeInBytes >= paramLong)
      {
        trimTo(this.sizeInBytes - paramLong, this.targetLimitInCount);
        return true;
      }
      return false;
    }
  }

  public static class ByteArrayLoader
    implements CachedFilesManager.Loader<byte[]>
  {
    public byte[] load(String paramString)
    {
      if (paramString == null)
        return null;
      try
      {
        byte[] arrayOfByte = Files.toByteArray(new File(paramString));
        return arrayOfByte;
      }
      catch (IOException localIOException)
      {
        Log.e(CachedFilesManager.TAG, "Error reading from " + paramString, localIOException);
      }
      return null;
    }
  }

  public static abstract interface Loader<T>
  {
    public abstract T load(String paramString);
  }

  public static enum Type
  {

    @VisibleForTesting
    public String prefix;

    static
    {
      ATTACHMENT = new Type("ATTACHMENT", 1, "a_");
      AUDIO = new Type("AUDIO", 2, "o_");
      BUG_REPORT = new Type("BUG_REPORT", 3, "b_");
      GLASSWARE_ICON = new Type("GLASSWARE_ICON", 4, "gi_");
      ICON = new Type("ICON", 5, "i_");
      PICTURE = new Type("PICTURE", 6, "p_");
      PROTO_BUFFER = new Type("PROTO_BUFFER", 7, "pb_");
      SHARE = new Type("SHARE", 8, "s_");
      THUMBNAIL = new Type("THUMBNAIL", 9, "t_");
      VIDEO = new Type("VIDEO", 10, "v_");
      Type[] arrayOfType = new Type[11];
      arrayOfType[0] = NONE;
      arrayOfType[1] = ATTACHMENT;
      arrayOfType[2] = AUDIO;
      arrayOfType[3] = BUG_REPORT;
      arrayOfType[4] = GLASSWARE_ICON;
      arrayOfType[5] = ICON;
      arrayOfType[6] = PICTURE;
      arrayOfType[7] = PROTO_BUFFER;
      arrayOfType[8] = SHARE;
      arrayOfType[9] = THUMBNAIL;
      arrayOfType[10] = VIDEO;
    }

    private Type(String paramString)
    {
      this.prefix = paramString;
    }

    public static Type get(String paramString)
    {
      for (Type localType : values())
      {
        String str = localType.prefix;
        if ((str != null) && (paramString.startsWith(str)))
          return localType;
      }
      return NONE;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CachedFilesManager
 * JD-Core Version:    0.6.2
 */
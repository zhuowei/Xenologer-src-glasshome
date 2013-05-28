package com.google.glass.home.sync;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import android.util.LruCache;
import com.google.common.annotations.VisibleForTesting;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class AttachmentUploadTracker
{
  static final int MAX_LRU_CACHE_SIZE = 1000;
  static final int NUM_BYTES_FOR_HASHING = 524288;
  private static final String TAG = AttachmentUploadTracker.class.getSimpleName();
  static final String TRACKING_PREFS_FILENAME = "attachment_upload_tracking_prefs";
  private final AttachmentLruCache lruCache;
  private final SharedPreferences prefs;

  public AttachmentUploadTracker(Context paramContext)
  {
    this(paramContext, 1000);
  }

  @VisibleForTesting
  AttachmentUploadTracker(Context paramContext, int paramInt)
  {
    this.prefs = paramContext.getSharedPreferences("attachment_upload_tracking_prefs", 0);
    this.lruCache = new AttachmentLruCache(paramInt);
    Map localMap = this.prefs.getAll();
    if (localMap != null)
    {
      Iterator localIterator = localMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        this.lruCache.put(localEntry.getKey(), (String)localEntry.getValue());
      }
    }
  }

  // ERROR //
  private static String computeHash(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: new 100	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 103	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_1
    //   9: aload_1
    //   10: invokevirtual 106	java/io/File:exists	()Z
    //   13: ifeq +12 -> 25
    //   16: aload_1
    //   17: invokevirtual 110	java/io/File:length	()J
    //   20: lconst_0
    //   21: lcmp
    //   22: ifne +35 -> 57
    //   25: new 112	java/io/FileNotFoundException
    //   28: dup
    //   29: new 114	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 115	java/lang/StringBuilder:<init>	()V
    //   36: ldc 117
    //   38: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: aload_0
    //   42: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: ldc 123
    //   47: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: invokespecial 127	java/io/FileNotFoundException:<init>	(Ljava/lang/String;)V
    //   56: athrow
    //   57: aconst_null
    //   58: astore_2
    //   59: bipush 64
    //   61: invokestatic 133	com/google/common/hash/Hashing:goodFastHash	(I)Lcom/google/common/hash/HashFunction;
    //   64: invokeinterface 139 1 0
    //   69: astore_3
    //   70: ldc 140
    //   72: newarray byte
    //   74: astore 7
    //   76: new 142	java/io/FileInputStream
    //   79: dup
    //   80: aload_1
    //   81: invokespecial 145	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   84: astore 8
    //   86: iconst_0
    //   87: istore 9
    //   89: iload 9
    //   91: ldc 9
    //   93: if_icmpge +18 -> 111
    //   96: aload 8
    //   98: aload 7
    //   100: invokevirtual 149	java/io/FileInputStream:read	([B)I
    //   103: istore 12
    //   105: iload 12
    //   107: iconst_m1
    //   108: if_icmpne +23 -> 131
    //   111: aload 8
    //   113: ifnull +8 -> 121
    //   116: aload 8
    //   118: invokevirtual 152	java/io/FileInputStream:close	()V
    //   121: aload_3
    //   122: invokeinterface 158 1 0
    //   127: invokevirtual 161	com/google/common/hash/HashCode:toString	()Ljava/lang/String;
    //   130: areturn
    //   131: ldc 9
    //   133: iload 9
    //   135: isub
    //   136: istore 13
    //   138: aload_3
    //   139: aload 7
    //   141: iconst_0
    //   142: iload 13
    //   144: iload 12
    //   146: invokestatic 167	java/lang/Math:min	(II)I
    //   149: invokeinterface 171 4 0
    //   154: pop
    //   155: iload 9
    //   157: iload 12
    //   159: iadd
    //   160: istore 9
    //   162: goto -73 -> 89
    //   165: astore 10
    //   167: getstatic 28	com/google/glass/home/sync/AttachmentUploadTracker:TAG	Ljava/lang/String;
    //   170: ldc 173
    //   172: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   175: pop
    //   176: goto -55 -> 121
    //   179: astore 4
    //   181: aload_2
    //   182: ifnull +7 -> 189
    //   185: aload_2
    //   186: invokevirtual 152	java/io/FileInputStream:close	()V
    //   189: aload 4
    //   191: athrow
    //   192: astore 5
    //   194: getstatic 28	com/google/glass/home/sync/AttachmentUploadTracker:TAG	Ljava/lang/String;
    //   197: ldc 173
    //   199: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   202: pop
    //   203: goto -14 -> 189
    //   206: astore 4
    //   208: aload 8
    //   210: astore_2
    //   211: goto -30 -> 181
    //
    // Exception table:
    //   from	to	target	type
    //   116	121	165	java/io/IOException
    //   70	86	179	finally
    //   185	189	192	java/io/IOException
    //   96	105	206	finally
    //   138	155	206	finally
  }

  public void clearAttachmentIdForPath(String paramString)
    throws IOException
  {
    String str = computeHash(paramString);
    this.lruCache.remove(str);
    this.prefs.edit().remove(str).commit();
  }

  public final String getAttachmentIdForPath(String paramString)
    throws IOException
  {
    String str1 = computeHash(paramString);
    Object localObject = (String)this.lruCache.get(str1);
    if (localObject == null);
    try
    {
      String str2 = this.prefs.getString(str1, null);
      localObject = str2;
      return localObject;
    }
    catch (ClassCastException localClassCastException)
    {
      Log.w(TAG, "Ran into a non-string pref for " + paramString + " -- removing and returning null.");
      this.prefs.edit().remove(paramString).commit();
    }
    return null;
  }

  @VisibleForTesting
  AttachmentLruCache getLruCache()
  {
    return this.lruCache;
  }

  public boolean setAttachmentIdForPath(String paramString1, String paramString2)
    throws IOException
  {
    String str = computeHash(paramString1);
    this.lruCache.put(str, paramString2);
    return this.prefs.edit().putString(str, paramString2).commit();
  }

  @VisibleForTesting
  class AttachmentLruCache extends LruCache<String, String>
  {
    public AttachmentLruCache(int arg2)
    {
      super();
    }

    protected void entryRemoved(boolean paramBoolean, String paramString1, String paramString2, String paramString3)
    {
      if (paramBoolean);
      try
      {
        AttachmentUploadTracker.this.clearAttachmentIdForPath(paramString1);
        return;
      }
      catch (IOException localIOException)
      {
        Log.w(AttachmentUploadTracker.TAG, "Failed to evict from LRU cache", localIOException);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.AttachmentUploadTracker
 * JD-Core Version:    0.6.2
 */
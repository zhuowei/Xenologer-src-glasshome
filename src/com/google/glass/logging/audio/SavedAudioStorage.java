package com.google.glass.logging.audio;

import android.content.Context;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.common.io.Files;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.voice.AlignmentInfo;
import com.google.glass.voice.SensoryResult;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public class SavedAudioStorage
{

  @VisibleForTesting
  static final long MAX_NEGATIVE_RECORDING_LENGTH_MS = 0L;

  @VisibleForTesting
  static final long MAX_POSITIVE_RECORDING_LENGTH_MS = 0L;

  @VisibleForTesting
  static final long MAX_RECORDING_AGE = 0L;

  @VisibleForTesting
  static final int MAX_SAVED_FILE_COUNT = 50;
  static final long MILLIS_PER_SECOND = TimeUnit.SECONDS.toMillis(1L);

  @VisibleForTesting
  static final long POSITIVE_RECORDING_PAD_LENGTH_MS;
  private static final List<Labs.Feature> STORAGE_LABS;
  private static final String TAG = SavedAudioStorage.class.getSimpleName();
  private SavedAudioSyncer syncer;

  static
  {
    MAX_POSITIVE_RECORDING_LENGTH_MS = TimeUnit.SECONDS.toMillis(10L);
    MAX_NEGATIVE_RECORDING_LENGTH_MS = TimeUnit.SECONDS.toMillis(15L);
    POSITIVE_RECORDING_PAD_LENGTH_MS = TimeUnit.SECONDS.toMillis(2L);
    MAX_RECORDING_AGE = TimeUnit.DAYS.toMillis(7L);
    Labs.Feature[] arrayOfFeature = new Labs.Feature[3];
    arrayOfFeature[0] = Labs.Feature.SAVE_AUDIO;
    arrayOfFeature[1] = Labs.Feature.LOG_POS_SENSORY_REC;
    arrayOfFeature[2] = Labs.Feature.LOG_NEG_SENSORY_REC;
    STORAGE_LABS = Arrays.asList(arrayOfFeature);
  }

  public SavedAudioStorage(SavedAudioSyncer paramSavedAudioSyncer)
  {
    this.syncer = paramSavedAudioSyncer;
  }

  private void addToDatabase(Context paramContext, String paramString, List<SensoryResult> paramList, long paramLong1, long paramLong2)
  {
    SavedAudioDatabaseHelper localSavedAudioDatabaseHelper = new SavedAudioDatabaseHelper(paramContext);
    try
    {
      insert(localSavedAudioDatabaseHelper, paramString, paramList, paramLong2, paramLong1);
      limitSavedFileCount(localSavedAudioDatabaseHelper);
      return;
    }
    finally
    {
      localSavedAudioDatabaseHelper.close();
    }
  }

  private static boolean createSavedAudioDirectory()
  {
    File localFile = new File(BufferedAudioSaver.SAVE_TO_DISK_BASE_PATH);
    if ((!localFile.exists()) && (!localFile.mkdir()))
    {
      Log.e(TAG, "Error creating base path for saved audio: " + localFile);
      return false;
    }
    return true;
  }

  private static boolean deleteFile(File paramFile)
  {
    if (!paramFile.exists())
      Log.w(TAG, "Cannot delete " + paramFile + " because it does not exist.");
    while (paramFile.delete())
      return true;
    Log.w(TAG, "Failed to delete " + paramFile);
    return false;
  }

  private static boolean deleteFile(String paramString)
  {
    return deleteFile(new File(paramString));
  }

  private static void deleteFileAndRecord(SavedAudioDatabaseHelper paramSavedAudioDatabaseHelper, SavedAudioRecord paramSavedAudioRecord)
  {
    if (deleteFile(paramSavedAudioRecord.getFilename()))
    {
      Log.d(TAG, "Deleting " + paramSavedAudioRecord);
      paramSavedAudioDatabaseHelper.delete(paramSavedAudioRecord);
    }
  }

  private void deleteOldAudioInternal(SavedAudioDatabaseHelper paramSavedAudioDatabaseHelper)
  {
    List localList = paramSavedAudioDatabaseHelper.list();
    long l = System.currentTimeMillis();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      SavedAudioRecord localSavedAudioRecord = (SavedAudioRecord)localIterator.next();
      if (l - localSavedAudioRecord.getTimestamp() > MAX_RECORDING_AGE)
        deleteFileAndRecord(paramSavedAudioDatabaseHelper, localSavedAudioRecord);
    }
  }

  public static List<Labs.Feature> getEnabledStorageLabs()
  {
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = STORAGE_LABS.iterator();
    while (localIterator.hasNext())
    {
      Labs.Feature localFeature = (Labs.Feature)localIterator.next();
      if (Labs.isEnabled(localFeature))
        localArrayList.add(localFeature);
    }
    return localArrayList;
  }

  private static long getLengthMs(File paramFile, long paramLong)
  {
    return toMillis(paramFile.length(), paramLong);
  }

  public static long getRecocognizedAudioEndMs(List<SensoryResult> paramList)
  {
    long l = 0L;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      l += ((SensoryResult)localIterator.next()).getPhraseEndMillis();
    return l;
  }

  public static long getRecognizedAudioStartMs(List<SensoryResult> paramList)
  {
    return ((SensoryResult)paramList.get(0)).getPhraseStartMillis();
  }

  private void insert(SavedAudioDatabaseHelper paramSavedAudioDatabaseHelper, String paramString, List<SensoryResult> paramList, long paramLong1, long paramLong2)
  {
    String str = AlignmentInfo.getRecognizedCommandString(paramList, paramLong1);
    SavedAudioRecord localSavedAudioRecord1 = SavedAudioRecord.newSavedAudioRecord(paramString, System.currentTimeMillis()).setSampleRate(Long.valueOf(paramLong2));
    if (!paramList.isEmpty());
    for (boolean bool = true; ; bool = false)
    {
      SavedAudioRecord localSavedAudioRecord2 = localSavedAudioRecord1.setRecognized(Boolean.valueOf(bool)).setRecognizedCommands(str);
      Log.d(TAG, "Saved " + localSavedAudioRecord2);
      paramSavedAudioDatabaseHelper.insert(localSavedAudioRecord2);
      return;
    }
  }

  private void limitSavedFileCount(SavedAudioDatabaseHelper paramSavedAudioDatabaseHelper)
  {
    List localList = paramSavedAudioDatabaseHelper.list();
    if (localList.size() <= 50);
    while (true)
    {
      return;
      Iterator localIterator = localList.subList(0, -50 + localList.size()).iterator();
      while (localIterator.hasNext())
        deleteFileAndRecord(paramSavedAudioDatabaseHelper, (SavedAudioRecord)localIterator.next());
    }
  }

  public static AudioSaver newAudioSaver(long paramLong)
  {
    if (Labs.isEnabled(Labs.Feature.SAVE_AUDIO))
    {
      Log.d(TAG, "SAVE_AUDIO lab is enabled, will save all audio from mic to disk.");
      return newBufferedAudioSaver(paramLong);
    }
    if (Labs.isEnabled(Labs.Feature.LOG_POS_SENSORY_REC))
      return newBufferedAudioSaver(paramLong);
    if (Labs.isEnabled(Labs.Feature.LOG_NEG_SENSORY_REC))
      return newBufferedAudioSaver(paramLong);
    return newNoOpSaver();
  }

  private static AudioSaver newBufferedAudioSaver(long paramLong)
  {
    if (!createSavedAudioDirectory())
      return newNoOpSaver();
    return new BufferedAudioSaver(paramLong);
  }

  private static NoOpAudioSaver newNoOpSaver()
  {
    return new NoOpAudioSaver();
  }

  private void slice(File paramFile, long paramLong1, long paramLong2, long paramLong3)
    throws IOException
  {
    if (paramLong2 > paramLong3)
      throw new IllegalArgumentException("Illegal bound milliseconds: " + paramLong2 + " > " + paramLong3);
    byte[] arrayOfByte = Files.toByteArray(paramFile);
    int i = toByteLength(paramLong2, paramLong1);
    int j = toByteLength(paramLong3 - paramLong2, paramLong1);
    if (arrayOfByte.length < i + j)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(arrayOfByte.length);
      arrayOfObject[1] = Integer.valueOf(i);
      arrayOfObject[2] = Integer.valueOf(j);
      throw new IOException(String.format("Illegal slice bounds; file length: %d, offset: %d, length: %d", arrayOfObject));
    }
    if (!paramFile.delete())
      throw new IOException("Failed to delete.");
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
    try
    {
      localFileOutputStream.write(arrayOfByte, i, j);
      return;
    }
    finally
    {
      localFileOutputStream.close();
    }
  }

  private void storeAudioBlocking(Context paramContext, String paramString, List<SensoryResult> paramList, long paramLong, List<Labs.Feature> paramList1)
  {
    if (paramList1.contains(Labs.Feature.SAVE_AUDIO))
      addToDatabase(paramContext, paramString, paramList, paramLong, 0L);
    File localFile;
    boolean bool1;
    do
    {
      return;
      localFile = new File(paramString);
      bool1 = paramList1.contains(Labs.Feature.LOG_POS_SENSORY_REC);
      boolean bool2 = paramList1.contains(Labs.Feature.LOG_NEG_SENSORY_REC);
      if (paramList.isEmpty())
      {
        if (bool2)
          try
          {
            if (getLengthMs(localFile, paramLong) > MAX_NEGATIVE_RECORDING_LENGTH_MS)
              slice(localFile, paramLong, 0L, MAX_NEGATIVE_RECORDING_LENGTH_MS);
            addToDatabase(paramContext, paramString, paramList, paramLong, 0L);
            return;
          }
          catch (IOException localIOException2)
          {
            Log.e(TAG, "Failed to trim file", localIOException2);
            deleteFile(localFile);
            return;
          }
        deleteFile(localFile);
        return;
      }
    }
    while (!bool1);
    try
    {
      long l = trimFile(paramList, paramLong, localFile);
      addToDatabase(paramContext, paramString, paramList, paramLong, l);
      return;
    }
    catch (IOException localIOException1)
    {
      Log.e(TAG, "Failed to trim file", localIOException1);
      deleteFile(localFile);
    }
  }

  public static int toByteLength(long paramLong1, long paramLong2)
  {
    return (int)(2.0F * (float)paramLong2 * (float)paramLong1 / (float)MILLIS_PER_SECOND);
  }

  public static long toMillis(long paramLong1, long paramLong2)
  {
    return ()((float)(paramLong1 * MILLIS_PER_SECOND) / (2.0F * (float)paramLong2));
  }

  private void uploadStoredAudioInternal(Context paramContext, SavedAudioDatabaseHelper paramSavedAudioDatabaseHelper, List<Labs.Feature> paramList)
    throws SyncFailedException
  {
    boolean bool1 = paramList.contains(Labs.Feature.LOG_POS_SENSORY_REC);
    boolean bool2 = paramList.contains(Labs.Feature.LOG_NEG_SENSORY_REC);
    boolean bool3 = paramList.contains(Labs.Feature.SAVE_AUDIO);
    if ((!bool1) && (!bool2));
    while (true)
    {
      return;
      List localList = paramSavedAudioDatabaseHelper.list();
      Log.d(TAG, "Syncing " + localList.size() + " saved audio records.");
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        SavedAudioRecord localSavedAudioRecord = (SavedAudioRecord)localIterator.next();
        if ((!localSavedAudioRecord.isSynced()) && ((localSavedAudioRecord.isRecognized()) || (bool2)) && ((!localSavedAudioRecord.isRecognized()) || (bool1)))
        {
          try
          {
            this.syncer.sync(paramContext, localSavedAudioRecord);
            localSavedAudioRecord.setSynced(Boolean.valueOf(true));
            Log.d(TAG, "Synced " + localSavedAudioRecord + " successfully.");
            if (bool3)
              paramSavedAudioDatabaseHelper.update(localSavedAudioRecord);
          }
          catch (SyncFailedException localSyncFailedException)
          {
            if ((localSyncFailedException.getCause() instanceof FileNotFoundException))
            {
              Log.w(TAG, localSavedAudioRecord.getFilename() + " not found, deleting record.");
              paramSavedAudioDatabaseHelper.delete(localSavedAudioRecord);
              continue;
            }
            throw localSyncFailedException;
          }
          deleteFileAndRecord(paramSavedAudioDatabaseHelper, localSavedAudioRecord);
        }
      }
    }
  }

  public void deleteOldAudio(Context paramContext)
  {
    SavedAudioDatabaseHelper localSavedAudioDatabaseHelper = new SavedAudioDatabaseHelper(paramContext);
    try
    {
      deleteOldAudioInternal(localSavedAudioDatabaseHelper);
      return;
    }
    finally
    {
      localSavedAudioDatabaseHelper.close();
    }
  }

  public void storeAudio(final Context paramContext, final String paramString, final List<SensoryResult> paramList, final long paramLong, List<Labs.Feature> paramList1)
  {
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        try
        {
          SavedAudioStorage.this.storeAudioBlocking(paramContext, paramString, paramList, paramLong, this.val$enabledLabs);
          return;
        }
        catch (Exception localException)
        {
          Log.e(SavedAudioStorage.TAG, "Failed to store audio", localException);
        }
      }
    });
  }

  @VisibleForTesting
  long trimFile(List<SensoryResult> paramList, long paramLong, File paramFile)
    throws IOException
  {
    long l1 = getRecognizedAudioStartMs(paramList);
    long l2 = getRecocognizedAudioEndMs(paramList);
    if (l2 - l1 > MAX_POSITIVE_RECORDING_LENGTH_MS)
      throw new IOException("Audio is too long");
    long l3 = POSITIVE_RECORDING_PAD_LENGTH_MS;
    long l4 = getLengthMs(paramFile, paramLong);
    long l5;
    if (l1 < l3)
    {
      l5 = 0L;
      if (l2 + l3 <= l4)
        break label113;
    }
    label113: for (long l6 = l4; ; l6 = l2 + l3)
    {
      if ((l5 > 0L) || (l6 < l4))
        slice(paramFile, paramLong, l5, l6);
      return l5;
      l5 = l1 - l3;
      break;
    }
  }

  public void uploadStoredAudio(Context paramContext, List<Labs.Feature> paramList)
    throws SyncFailedException
  {
    SavedAudioDatabaseHelper localSavedAudioDatabaseHelper = new SavedAudioDatabaseHelper(paramContext);
    try
    {
      uploadStoredAudioInternal(paramContext, localSavedAudioDatabaseHelper, paramList);
      return;
    }
    finally
    {
      localSavedAudioDatabaseHelper.close();
    }
  }

  static class NoOpAudioSaver
    implements AudioSaver
  {
    public void finishSavingAudio()
    {
    }

    public boolean isSavingAudio()
    {
      return false;
    }

    public void onResult(SensoryResult paramSensoryResult)
    {
    }

    public void prepareToSaveAudio()
    {
    }

    public void registerWithStorage(Context paramContext, SavedAudioStorage paramSavedAudioStorage)
    {
    }

    public void saveAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.SavedAudioStorage
 * JD-Core Version:    0.6.2
 */
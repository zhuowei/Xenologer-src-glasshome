package com.google.glass.logging.audio;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import com.google.common.collect.Lists;
import com.google.glass.voice.SensoryResult;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

public abstract class FileAudioSaver
  implements AudioSaver
{
  public static final String SAVE_TO_DISK_BASE_PATH = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "recorded_audio" + File.separator;
  private static final String TAG = FileAudioSaver.class.getSimpleName();
  private String destinationPath;
  private final long sampleRate;
  private FileOutputStream saveToDiskOutputStream;
  private boolean savingAudio;
  private final List<SensoryResult> sensoryResults = Lists.newArrayList();

  public FileAudioSaver(long paramLong)
  {
    this.sampleRate = paramLong;
  }

  public FileAudioSaver(long paramLong, String paramString)
  {
    this.sampleRate = paramLong;
    this.destinationPath = paramString;
  }

  public final void finishSavingAudio()
  {
    if (!this.savingAudio)
    {
      Log.w(TAG, "finishSavingAudio() called before preparing or after finishing.");
      return;
    }
    Log.d(TAG, "Closing out writing audio to disk");
    onFinishSavingAudio();
    try
    {
      this.saveToDiskOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Error closing output stream for saved audio", localIOException);
      return;
    }
    finally
    {
      this.saveToDiskOutputStream = null;
      this.savingAudio = false;
    }
  }

  public final String getDestinationPath()
  {
    return this.destinationPath;
  }

  protected FileOutputStream getFileOutputStream()
  {
    return this.saveToDiskOutputStream;
  }

  public final boolean isSavingAudio()
  {
    return this.savingAudio;
  }

  protected void onFinishSavingAudio()
  {
  }

  protected void onPrepareToSaveAudio()
  {
  }

  public final void onResult(SensoryResult paramSensoryResult)
  {
    this.sensoryResults.add(paramSensoryResult);
  }

  abstract void onSaveAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public final void prepareToSaveAudio()
    throws IOException
  {
    if (this.savingAudio)
    {
      Log.w(TAG, "prepareToSaveAudio() called more than once.");
      return;
    }
    this.sensoryResults.clear();
    this.savingAudio = true;
    if (this.destinationPath == null)
      this.destinationPath = (SAVE_TO_DISK_BASE_PATH + System.currentTimeMillis() + ".pcm");
    Log.d(TAG, "Setting up to save audio to: " + this.destinationPath);
    this.saveToDiskOutputStream = new FileOutputStream(this.destinationPath);
    onPrepareToSaveAudio();
  }

  public final void registerWithStorage(Context paramContext, SavedAudioStorage paramSavedAudioStorage)
  {
    paramSavedAudioStorage.storeAudio(paramContext, getDestinationPath(), this.sensoryResults, this.sampleRate, SavedAudioStorage.getEnabledStorageLabs());
  }

  public final void saveAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.savingAudio)
    {
      Log.w(TAG, "saveAudio() called before preparing or after finishing.");
      return;
    }
    onSaveAudio(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.FileAudioSaver
 * JD-Core Version:    0.6.2
 */
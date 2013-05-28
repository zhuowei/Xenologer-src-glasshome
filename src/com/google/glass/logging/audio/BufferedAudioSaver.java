package com.google.glass.logging.audio;

import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.IOException;

public class BufferedAudioSaver extends FileAudioSaver
{
  public static final int BYTES_PER_SENSORY_READ = 160;
  public static final int SAVE_TO_DISK_BUFFER_CAPACITY = 8000;
  private static final String TAG = BufferedAudioSaver.class.getSimpleName();
  private BufferedOutputStream bufferedStream;

  public BufferedAudioSaver(long paramLong)
  {
    super(paramLong);
  }

  public BufferedAudioSaver(long paramLong, String paramString)
  {
    super(paramLong, paramString);
  }

  protected void onFinishSavingAudio()
  {
    try
    {
      this.bufferedStream.flush();
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Failed to flush buffered stream!", localIOException);
    }
  }

  public void onPrepareToSaveAudio()
  {
    this.bufferedStream = new BufferedOutputStream(getFileOutputStream(), 8000);
  }

  void onSaveAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.bufferedStream.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Failed to write to buffered stream!", localIOException);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.BufferedAudioSaver
 * JD-Core Version:    0.6.2
 */
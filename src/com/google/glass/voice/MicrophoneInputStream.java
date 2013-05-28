package com.google.glass.voice;

import android.content.Context;
import android.media.AudioRecord;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;

public class MicrophoneInputStream extends InputStream
{
  public static final int AUDIO_FORMAT = 2;
  public static final int AUDIO_SOURCE = 6;
  private static final int BUFFER_SIZE_SECONDS = 4;
  public static final int CHANNEL_CONFIG = 16;
  public static final double MAX_AMPLITUDE = 32767.0D;
  private static final long MICROSECONDS_BETWEEN_AMPLITUDE = 50000L;
  public static final float MICROSECONDS_PER_SAMPLE_16_KHZ = 62.5F;
  public static final float MICROSECONDS_PER_SAMPLE_8_KHZ = 125.0F;
  public static final int SAMPLE_RATE_16000_HZ = 16000;
  public static final int SAMPLE_RATE_8000_HZ = 8000;
  private static final String TAG = MicrophoneInputStream.class.getSimpleName();
  private AudioRecord audioRecord;
  private final MicrophoneInputStreamListener listener;
  protected boolean listening;
  private long microsecondsFromStart;
  private final float microsecondsPerSample;
  private long microsecondsSinceLastAmplitude = 50000L;
  private final int sampleRate;

  public MicrophoneInputStream(Context paramContext, MicrophoneInputStreamListener paramMicrophoneInputStreamListener, int paramInt)
  {
    this.listener = paramMicrophoneInputStreamListener;
    this.sampleRate = paramInt;
    this.microsecondsPerSample = determineMicrosecondsPerSample(paramInt);
  }

  private double calculateAmplitude(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    double d = 0.0D;
    for (int i = paramInt1; i < -2 + (paramInt1 + paramInt2); i += 2)
    {
      int j = paramArrayOfByte[(i + 1)] << 8 & paramArrayOfByte[i];
      d += j * j;
    }
    return Math.sqrt(d / (paramInt2 / 2)) / 32767.0D;
  }

  public static float determineMicrosecondsPerSample(int paramInt)
  {
    if (paramInt == 16000)
      return 62.5F;
    if (paramInt == 8000)
      return 125.0F;
    throw new RuntimeException("Unexpected sample rate: " + paramInt);
  }

  private void releaseMicrophone()
  {
    if (this.audioRecord != null);
    try
    {
      this.audioRecord.stop();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e(TAG, "Error stopping audio record", localIllegalStateException);
      return;
    }
    finally
    {
      this.audioRecord.release();
      Log.d(TAG, "audioRecord.release() called");
      this.audioRecord = null;
    }
  }

  public long getMicrosecondsSoFar()
  {
    return this.microsecondsFromStart;
  }

  public int getSampleRate()
  {
    return this.sampleRate;
  }

  public boolean isListening()
  {
    try
    {
      boolean bool = this.listening;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  @VisibleForTesting
  protected boolean isMock()
  {
    return false;
  }

  protected void onRawBytesRead(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l = paramInt2 / 2 * ()this.microsecondsPerSample;
    this.microsecondsFromStart = (l + this.microsecondsFromStart);
    this.microsecondsSinceLastAmplitude -= l;
    if (this.microsecondsSinceLastAmplitude <= 0L)
    {
      this.listener.onAmplitudeChanged(calculateAmplitude(paramArrayOfByte, paramInt1, paramInt2));
      this.microsecondsSinceLastAmplitude = 50000L;
    }
    this.listener.onAudioData(paramArrayOfByte, paramInt1, paramInt2);
    this.listener.onTimestampedAudioData(this.microsecondsFromStart, paramArrayOfByte, paramInt1, paramInt2);
  }

  public int read()
    throws IOException
  {
    throw new IOException("not implemented");
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while (true)
    {
      int i;
      try
      {
        if (this.listening)
        {
          i = this.audioRecord.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, this.sampleRate / 10));
          if (i == -3)
          {
            Log.e(TAG, "ERROR_INVALID_OPERATION");
            stopListening();
          }
        }
        else
        {
          i = -1;
          return i;
        }
        if (i == -2)
        {
          Log.e(TAG, "ERROR_BAD_VALUE");
          stopListening();
          continue;
        }
      }
      finally
      {
      }
      if (i != 0)
        onRawBytesRead(paramArrayOfByte, paramInt1, i);
    }
  }

  public void startListening()
    throws MicrophoneInputException, IOException
  {
    try
    {
      Log.d(TAG, "Starting listening on MicrophoneInputStream with sample rate " + this.sampleRate);
      int i = Math.max(AudioRecord.getMinBufferSize(this.sampleRate, 16, 2), 4 * this.sampleRate);
      Log.d(TAG, "Creating AudioRecord with sample rate " + this.sampleRate);
      this.audioRecord = new AudioRecord(6, this.sampleRate, 16, 2, i);
      if (this.audioRecord.getState() != 1)
      {
        releaseMicrophone();
        throw new MicrophoneInputException("Couldn't create AudioRecord");
      }
    }
    finally
    {
    }
    this.audioRecord.startRecording();
    Log.d(TAG, "RecordingState: " + this.audioRecord.getRecordingState());
    if (this.audioRecord.getRecordingState() != 3)
    {
      releaseMicrophone();
      throw new MicrophoneInputException("Couldn't start recording");
    }
    this.listening = true;
  }

  public void stopListening()
  {
    try
    {
      Log.d(TAG, "Stopping listening: " + this.listening + ", listener: " + this.listener);
      this.listening = false;
      releaseMicrophone();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static abstract interface MicrophoneInputStreamListener
  {
    public abstract void onAmplitudeChanged(double paramDouble);

    public abstract void onAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

    public abstract void onTimestampedAudioData(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.MicrophoneInputStream
 * JD-Core Version:    0.6.2
 */
package com.google.glass.voice;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicReference;

public class MockMicrophoneInputStream extends MicrophoneInputStream
{
  private static final String TAG = MockMicrophoneInputStream.class.getSimpleName();
  private AtomicReference<InputStream> cannedAudioInputStreamRef = new AtomicReference();

  public MockMicrophoneInputStream(Context paramContext, MicrophoneInputStream.MicrophoneInputStreamListener paramMicrophoneInputStreamListener, int paramInt)
  {
    super(paramContext, paramMicrophoneInputStreamListener, paramInt);
  }

  public void feedCannedAudio(InputStream paramInputStream)
  {
    if (paramInputStream == null)
      throw new IllegalArgumentException("Canned audio input stream cannot be null");
    Log.d(TAG, "received canned audio input stream");
    this.cannedAudioInputStreamRef.set(paramInputStream);
  }

  protected boolean isMock()
  {
    return true;
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    InputStream localInputStream = (InputStream)this.cannedAudioInputStreamRef.get();
    if (localInputStream != null);
    try
    {
      int j = localInputStream.read(paramArrayOfByte, paramInt1, paramInt2);
      if (j != -1)
      {
        onRawBytesRead(paramArrayOfByte, paramInt1, j);
        return j;
      }
      Log.i(TAG, "finished reading from canned audio, passing zeros");
      localInputStream.close();
      this.cannedAudioInputStreamRef.compareAndSet(localInputStream, null);
      for (int i = paramInt1; i < paramInt1 + paramInt2; i++)
        paramArrayOfByte[i] = 0;
    }
    catch (IOException localIOException)
    {
      while (true)
        Log.e(TAG, "Error reading canned audio, passing zeros instead", localIOException);
      onRawBytesRead(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramInt2;
  }

  public void startListening()
  {
    Log.i(TAG, "starting listening");
    this.listening = true;
  }

  public void stopListening()
  {
    Log.d(TAG, "stopping listening");
    this.listening = false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.MockMicrophoneInputStream
 * JD-Core Version:    0.6.2
 */
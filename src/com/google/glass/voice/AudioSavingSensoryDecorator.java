package com.google.glass.voice;

import android.util.Log;
import com.google.glass.logging.audio.AudioSaver;
import com.google.glass.logging.audio.BufferedAudioSaver;
import com.google.glass.logging.audio.FileAudioSaver;
import java.io.IOException;
import java.nio.ByteBuffer;

public class AudioSavingSensoryDecorator extends Sensory
{
  private static final String TAG = AudioSavingSensoryDecorator.class.getSimpleName();
  private AudioSaver audioSaver;
  private byte[] buf;
  private Sensory delegate;
  private String name;
  private int phaseCount;

  private AudioSavingSensoryDecorator(Sensory paramSensory, String paramString)
  {
    this.delegate = paramSensory;
    this.name = paramString;
  }

  public static AudioSavingSensoryDecorator createAudioSavingSensoryDecorator(Sensory paramSensory, String paramString)
  {
    if (paramSensory == null)
      return null;
    return new AudioSavingSensoryDecorator(paramSensory, paramString);
  }

  private byte[] getBuffer(int paramInt)
  {
    if ((this.buf == null) || (this.buf.length < paramInt))
      this.buf = new byte[paramInt];
    return this.buf;
  }

  public VoiceCommandRecognitionResult pipePhrasespot(ByteBuffer paramByteBuffer, long paramLong)
  {
    if (this.audioSaver == null)
    {
      StringBuilder localStringBuilder = new StringBuilder().append(FileAudioSaver.SAVE_TO_DISK_BASE_PATH).append(this.name).append("-");
      int j = this.phaseCount;
      this.phaseCount = (j + 1);
      this.audioSaver = new BufferedAudioSaver(paramLong, j + ".pcm");
    }
    if (!this.audioSaver.isSavingAudio());
    try
    {
      Log.d(TAG, "Preparing audio saver");
      this.audioSaver.prepareToSaveAudio();
      int i = paramByteBuffer.position();
      paramByteBuffer.rewind();
      byte[] arrayOfByte = getBuffer(i);
      paramByteBuffer.get(arrayOfByte, 0, i);
      this.audioSaver.saveAudio(arrayOfByte, 0, i);
      paramByteBuffer.rewind();
      return this.delegate.pipePhrasespot(paramByteBuffer, paramLong);
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  void reinitialize()
  {
    this.delegate.reinitialize();
    if (this.audioSaver != null)
    {
      this.audioSaver.finishSavingAudio();
      this.audioSaver = null;
    }
  }

  VoiceCommand stringToCommand(String paramString)
  {
    return this.delegate.stringToCommand(paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.AudioSavingSensoryDecorator
 * JD-Core Version:    0.6.2
 */
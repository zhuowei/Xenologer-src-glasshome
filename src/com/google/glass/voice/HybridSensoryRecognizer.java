package com.google.glass.voice;

import com.google.common.collect.Lists;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public class HybridSensoryRecognizer extends Sensory
{
  private final List<Sensory> recognizers;

  public HybridSensoryRecognizer(Sensory[] paramArrayOfSensory)
  {
    this.recognizers = Lists.newArrayList(paramArrayOfSensory);
  }

  public void closePhrasespot()
  {
    Iterator localIterator = this.recognizers.iterator();
    while (localIterator.hasNext())
      ((Sensory)localIterator.next()).closePhrasespot();
  }

  public VoiceCommandRecognitionResult pipePhrasespot(ByteBuffer paramByteBuffer, long paramLong)
  {
    Iterator localIterator = this.recognizers.iterator();
    while (localIterator.hasNext())
    {
      VoiceCommandRecognitionResult localVoiceCommandRecognitionResult = ((Sensory)localIterator.next()).pipePhrasespot(paramByteBuffer, paramLong);
      if (localVoiceCommandRecognitionResult != null)
        return localVoiceCommandRecognitionResult;
      paramByteBuffer.rewind();
    }
    return null;
  }

  void reinitialize()
  {
    Iterator localIterator = this.recognizers.iterator();
    while (localIterator.hasNext())
      ((Sensory)localIterator.next()).reinitialize();
  }

  VoiceCommand stringToCommand(String paramString)
  {
    return new VoiceCommand(paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.HybridSensoryRecognizer
 * JD-Core Version:    0.6.2
 */
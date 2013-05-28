package com.google.glass.voice;

public class VoiceCommandRecognitionResult
{
  private final VoiceCommand recognizedCommand;
  private final SensoryResult sensoryResult;

  public VoiceCommandRecognitionResult(VoiceCommand paramVoiceCommand, SensoryResult paramSensoryResult)
  {
    this.recognizedCommand = paramVoiceCommand;
    this.sensoryResult = paramSensoryResult;
  }

  public VoiceCommand getRecognizedCommand()
  {
    return this.recognizedCommand;
  }

  public SensoryResult getSensoryResult()
  {
    return this.sensoryResult;
  }

  public String toString()
  {
    return "VoiceCommandRecognitionResult [recognizedCommand=" + this.recognizedCommand + ", sensoryResult=" + this.sensoryResult + "]";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceCommandRecognitionResult
 * JD-Core Version:    0.6.2
 */
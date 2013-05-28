package com.google.glass.voice;

public abstract interface VoiceServiceListener
{
  public abstract void onAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract void onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract void onVoiceAmplitudeChanged(double paramDouble);

  public abstract void onVoiceCommand(VoiceCommand paramVoiceCommand);

  public abstract void onVoiceServiceConnected();

  public abstract void onVoiceServiceDisconnected();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceServiceListener
 * JD-Core Version:    0.6.2
 */
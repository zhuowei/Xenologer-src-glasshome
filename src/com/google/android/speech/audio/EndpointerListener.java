package com.google.android.speech.audio;

public abstract interface EndpointerListener
{
  public abstract void onEndOfSpeech();

  public abstract void onMusicDetected();

  public abstract void onNoSpeechDetected();

  public abstract void onStartOfSpeech(long paramLong);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.EndpointerListener
 * JD-Core Version:    0.6.2
 */
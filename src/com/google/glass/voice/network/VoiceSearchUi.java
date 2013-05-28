package com.google.glass.voice.network;

import com.google.majel.proto.MajelProtos.MajelResponse;

public abstract interface VoiceSearchUi
{
  public abstract void onError(SpeechException paramSpeechException);

  public abstract void onMajelResult(MajelProtos.MajelResponse paramMajelResponse);

  public abstract void onRecognitionResult(CharSequence paramCharSequence, float paramFloat);

  public abstract void setSpeechLevelSource(SpeechLevelSource paramSpeechLevelSource);

  public abstract void showDone();

  public abstract void showListening();

  public abstract void showNoSpeechDetected();

  public abstract void showRecognizing();

  public abstract void showRecording();

  public abstract void updateRecognizedText(CharSequence paramCharSequence1, CharSequence paramCharSequence2);

  public static abstract interface SpeechException
  {
    public abstract Exception getException();

    public abstract Type getType();

    public static enum Type
    {
      static
      {
        Type[] arrayOfType = new Type[4];
        arrayOfType[0] = AUDIO_RECOGNIZE;
        arrayOfType[1] = NETWORK_RECOGNIZE;
        arrayOfType[2] = NO_MATCH;
        arrayOfType[3] = SERVER;
      }
    }
  }

  public static abstract interface SpeechLevelSource
  {
    public abstract int getSpeechLevel();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.VoiceSearchUi
 * JD-Core Version:    0.6.2
 */
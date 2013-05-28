package com.google.android.speech.listeners;

import com.google.android.speech.exception.RecognizeException;
import com.google.audio.ears.proto.EarsService.EarsResultsResponse;
import com.google.majel.proto.MajelProtos.MajelResponse;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.s3.PinholeStream.PinholeOutput;

public class RecognitionEventListenerAdapter
  implements RecognitionEventListener
{
  public void onBeginningOfSpeech()
  {
  }

  public void onDone()
  {
  }

  public void onEndOfSpeech()
  {
  }

  public void onError(RecognizeException paramRecognizeException)
  {
  }

  public void onMajelResult(MajelProtos.MajelResponse paramMajelResponse)
  {
  }

  public void onMediaDataResult(byte[] paramArrayOfByte)
  {
  }

  public void onMusicDetected()
  {
  }

  public void onNoSpeechDetected()
  {
  }

  public void onPinholeResult(PinholeStream.PinholeOutput paramPinholeOutput)
  {
  }

  public void onReadyForSpeech(float paramFloat1, float paramFloat2)
  {
  }

  public void onRecognitionCancelled()
  {
  }

  public void onRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
  }

  public void onSoundSearchResult(EarsService.EarsResultsResponse paramEarsResultsResponse)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.speech.listeners.RecognitionEventListenerAdapter
 * JD-Core Version:    0.6.2
 */
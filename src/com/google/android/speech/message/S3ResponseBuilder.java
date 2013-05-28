package com.google.android.speech.message;

import com.google.majel.proto.MajelProtos.MajelResponse;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.s3.S3.S3Response;
import com.google.speech.speech.s3.Majel.MajelServiceEvent;
import com.google.speech.speech.s3.Recognizer.RecognizerEvent;

public class S3ResponseBuilder
{
  public static S3.S3Response createDone()
  {
    return new S3.S3Response().setStatus(1);
  }

  public static S3.S3Response createInProgress(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    return new S3.S3Response().setStatus(0).setRecognizerEventExtension(new Recognizer.RecognizerEvent().setRecognitionEvent(paramRecognitionEvent));
  }

  public static S3.S3Response createWithMajel(MajelProtos.MajelResponse paramMajelResponse)
  {
    return new S3.S3Response().setStatus(0).setMajelServiceEventExtension(new Majel.MajelServiceEvent().setMajel(paramMajelResponse));
  }

  public static S3.S3Response createWithRecognitionEvent(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    return new S3.S3Response().setStatus(0).setRecognizerEventExtension(new Recognizer.RecognizerEvent().setRecognitionEvent(paramRecognitionEvent));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.speech.message.S3ResponseBuilder
 * JD-Core Version:    0.6.2
 */
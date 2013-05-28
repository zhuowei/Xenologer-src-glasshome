package com.google.android.speech.message;

import android.util.Log;
import com.google.android.speech.exception.ServerRecognizeException;
import com.google.android.speech.listeners.RecognitionEventListener;
import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.network.IoUtils;
import com.google.majel.proto.MajelProtos.MajelResponse;
import com.google.protobuf.micro.ByteStringMicro;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.s3.PinholeStream.PinholeOutput;
import com.google.speech.s3.S3.S3Response;
import com.google.speech.speech.s3.Majel.MajelServiceEvent;
import com.google.speech.speech.s3.Recognizer.RecognizerEvent;
import com.google.speech.speech.s3.SoundSearch.SoundSearchServiceEvent;
import com.google.speech.speech.s3.Synthesis.TtsServiceEvent;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class S3ResponseProcessor
{
  private static final boolean DEBUG = false;
  private static final String TAG = "S3ResponseProcessor";
  private final ByteArrayOutputStream mAudioBytes = new ByteArrayOutputStream();
  private final SpeechLibLogger mLogger;

  public S3ResponseProcessor(SpeechLibLogger paramSpeechLibLogger)
  {
    this.mLogger = paramSpeechLibLogger;
  }

  private void processDone(RecognitionEventListener paramRecognitionEventListener)
  {
    paramRecognitionEventListener.onDone();
  }

  public static MajelProtos.MajelResponse processMajelServiceEvent(Majel.MajelServiceEvent paramMajelServiceEvent)
  {
    MajelProtos.MajelResponse localMajelResponse = new MajelProtos.MajelResponse();
    if (paramMajelServiceEvent.hasCompressedMajelResponse())
      try
      {
        byte[] arrayOfByte = IoUtils.uncompress(paramMajelServiceEvent.getCompressedMajelResponse().toByteArray());
        if (arrayOfByte != null)
          localMajelResponse.mergeFrom(arrayOfByte);
        paramMajelServiceEvent.clearCompressedMajelResponse();
        paramMajelServiceEvent.setMajel(localMajelResponse);
        return localMajelResponse;
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          Log.e("S3ResponseProcessor", "Could not gunzip response.", localIOException);
          localMajelResponse = null;
        }
      }
    return paramMajelServiceEvent.getMajel();
  }

  private void processMajelServiceEvent(RecognitionEventListener paramRecognitionEventListener, Majel.MajelServiceEvent paramMajelServiceEvent)
  {
    MajelProtos.MajelResponse localMajelResponse = processMajelServiceEvent(paramMajelServiceEvent);
    if (localMajelResponse != null)
    {
      this.mLogger.logS3MajelResultReceived();
      paramRecognitionEventListener.onMajelResult(localMajelResponse);
    }
  }

  private void processPinholeOutputEvent(RecognitionEventListener paramRecognitionEventListener, PinholeStream.PinholeOutput paramPinholeOutput)
  {
    paramRecognitionEventListener.onPinholeResult(paramPinholeOutput);
  }

  private void processRecognizerEvent(RecognitionEventListener paramRecognitionEventListener, Recognizer.RecognizerEvent paramRecognizerEvent)
  {
    RecognizerProtos.RecognitionEvent localRecognitionEvent = paramRecognizerEvent.getRecognitionEvent();
    if (localRecognitionEvent.getEventType() == 1)
      this.mLogger.logS3RecognitionCompleted();
    paramRecognitionEventListener.onRecognitionResult(localRecognitionEvent);
  }

  private void processSoundSearchEvent(RecognitionEventListener paramRecognitionEventListener, SoundSearch.SoundSearchServiceEvent paramSoundSearchServiceEvent)
  {
    if (paramSoundSearchServiceEvent.getResultsResponse() != null)
    {
      this.mLogger.logS3SoundSearchResultReceived();
      paramRecognitionEventListener.onSoundSearchResult(paramSoundSearchServiceEvent.getResultsResponse());
    }
  }

  private void processTtsServiceEvent(RecognitionEventListener paramRecognitionEventListener, Synthesis.TtsServiceEvent paramTtsServiceEvent)
  {
    if ((paramTtsServiceEvent.getEndOfData()) && (this.mAudioBytes.size() > 0))
    {
      this.mLogger.logS3TtsReceived();
      paramRecognitionEventListener.onMediaDataResult(this.mAudioBytes.toByteArray());
      return;
    }
    byte[] arrayOfByte = paramTtsServiceEvent.getAudio().toByteArray();
    this.mAudioBytes.write(arrayOfByte, 0, arrayOfByte.length);
  }

  public void process(S3.S3Response paramS3Response, RecognitionEventListener paramRecognitionEventListener)
  {
    switch (paramS3Response.getStatus())
    {
    default:
    case 0:
      do
      {
        return;
        if (paramS3Response.hasTtsServiceEventExtension())
          processTtsServiceEvent(paramRecognitionEventListener, paramS3Response.getTtsServiceEventExtension());
        if (paramS3Response.hasRecognizerEventExtension())
          processRecognizerEvent(paramRecognitionEventListener, paramS3Response.getRecognizerEventExtension());
        if (paramS3Response.hasMajelServiceEventExtension())
          processMajelServiceEvent(paramRecognitionEventListener, paramS3Response.getMajelServiceEventExtension());
        if (paramS3Response.hasSoundSearchServiceEventExtension())
          processSoundSearchEvent(paramRecognitionEventListener, paramS3Response.getSoundSearchServiceEventExtension());
      }
      while (!paramS3Response.hasPinholeOutputExtension());
      processPinholeOutputEvent(paramRecognitionEventListener, paramS3Response.getPinholeOutputExtension());
      return;
    case 1:
      processDone(paramRecognitionEventListener);
      return;
    case 2:
      paramRecognitionEventListener.onError(new ServerRecognizeException(paramS3Response.getErrorCode()));
      return;
    case 3:
    }
    Log.w("S3ResponseProcessor", "NOT_STARTED received");
    paramRecognitionEventListener.onError(new ServerRecognizeException(0));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.speech.message.S3ResponseProcessor
 * JD-Core Version:    0.6.2
 */
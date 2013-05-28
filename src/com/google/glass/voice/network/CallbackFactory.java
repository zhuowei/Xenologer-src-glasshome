package com.google.glass.voice.network;

import com.google.android.speech.audio.EndpointerListener;
import com.google.android.speech.callback.Callback;
import com.google.android.speech.embedded.Greco3Callback;
import com.google.android.speech.embedded.Greco3CallbackFactory;
import com.google.android.speech.embedded.Greco3Mode;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.message.S3ResponseBuilder;
import com.google.common.base.Preconditions;
import com.google.glass.voice.VoiceService;
import com.google.speech.recognizer.api.RecognizerProtos.AudioLevelEvent;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.s3.S3.S3Response;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.EndpointerParams;

public class CallbackFactory
  implements Greco3CallbackFactory
{
  private VoiceService voiceService;

  public CallbackFactory(VoiceService paramVoiceService)
  {
    this.voiceService = paramVoiceService;
  }

  public Greco3Callback create(Callback<S3.S3Response, RecognizeException> paramCallback, EndpointerListener paramEndpointerListener, Greco3Mode paramGreco3Mode, GstaticConfiguration.EndpointerParams paramEndpointerParams)
  {
    return new Greco3CallbackImpl(paramCallback, new EndpointerEventProcessor(paramEndpointerListener, paramEndpointerParams, this.voiceService));
  }

  public class Greco3CallbackImpl
    implements Greco3Callback
  {
    private final Callback<S3.S3Response, RecognizeException> callback;
    private final EndpointerEventProcessor endpointerProcessor;
    private final CallbackFactory.RecognizerEventProcessor recognitionEventProcessor;

    public Greco3CallbackImpl(EndpointerEventProcessor arg2)
    {
      Object localObject;
      this.endpointerProcessor = localObject;
      Callback localCallback;
      this.recognitionEventProcessor = new CallbackFactory.RecognizerEventProcessor(localCallback);
      this.callback = localCallback;
    }

    public void handleAudioLevelEvent(RecognizerProtos.AudioLevelEvent paramAudioLevelEvent)
    {
    }

    public void handleEndpointerEvent(RecognizerProtos.EndpointerEvent paramEndpointerEvent)
    {
      this.endpointerProcessor.process(paramEndpointerEvent);
    }

    public void handleError(RecognizeException paramRecognizeException)
    {
      this.callback.onError(paramRecognizeException);
    }

    public void handleProgressUpdate(long paramLong)
    {
      this.endpointerProcessor.updateProgress(paramLong);
    }

    public void handleRecognitionEvent(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
    {
      this.recognitionEventProcessor.process(paramRecognitionEvent);
    }
  }

  private static class RecognizerEventProcessor
  {
    private static final boolean DEBUG;
    private static final String TAG = RecognizerEventProcessor.class.getSimpleName();
    private final Callback<S3.S3Response, RecognizeException> callback;

    RecognizerEventProcessor(Callback<S3.S3Response, RecognizeException> paramCallback)
    {
      this.callback = ((Callback)Preconditions.checkNotNull(paramCallback));
    }

    void process(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
    {
      this.callback.onResult(S3ResponseBuilder.createInProgress(paramRecognitionEvent));
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.CallbackFactory
 * JD-Core Version:    0.6.2
 */
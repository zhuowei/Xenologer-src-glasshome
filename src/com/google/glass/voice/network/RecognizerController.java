package com.google.glass.voice.network;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.speech.Recognizer;
import com.google.android.speech.SpeechLevelSource;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.alternates.CorrectableString;
import com.google.android.speech.embedded.Greco3Grammar;
import com.google.android.speech.embedded.Greco3Mode;
import com.google.android.speech.exception.AudioRecognizeException;
import com.google.android.speech.exception.NetworkRecognizeException;
import com.google.android.speech.exception.NoMatchRecognizeException;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.listeners.RecognitionEventListenerAdapter;
import com.google.android.speech.params.AudioInputParams;
import com.google.android.speech.params.AudioInputParams.Builder;
import com.google.android.speech.params.SessionParams;
import com.google.android.speech.params.SessionParams.Builder;
import com.google.android.speech.params.SessionParams.Mode;
import com.google.android.speech.utils.RecognizedText;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.SettableFuture;
import com.google.glass.net.NetworkUtil;
import com.google.glass.util.LogHelper;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.voice.VoiceConfig;
import com.google.majel.proto.MajelProtos.MajelResponse;
import com.google.speech.recognizer.api.RecognizerProtos.Hypothesis;
import com.google.speech.recognizer.api.RecognizerProtos.PartialPart;
import com.google.speech.recognizer.api.RecognizerProtos.PartialResult;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionResult;

public class RecognizerController
{
  private static final long FORCED_TIMEOUT_MS = 20000L;
  private static final int MSG_FORCED_END = 0;
  private static final double STABILITY_THRESHOLD = 0.8D;
  private static final String TAG = RecognizerController.class.getSimpleName();
  private static final boolean VERBOSE_LOGGING;
  private Handler handler;
  private HandlerThread handlerThread;
  private QueueingGrecoListener queueingGrecoListener;
  private final Recognizer recognizer;
  private final SpeechLevelSource speechLevelSource;
  private final SpeechSettings speechSettings;

  public RecognizerController(Recognizer paramRecognizer, SpeechLevelSource paramSpeechLevelSource, SpeechSettings paramSpeechSettings)
  {
    this.recognizer = paramRecognizer;
    this.speechLevelSource = paramSpeechLevelSource;
    this.speechSettings = paramSpeechSettings;
    this.handlerThread = new HandlerThread("RecognizerController");
    this.handlerThread.start();
    this.handler = new Handler(this.handlerThread.getLooper())
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        switch (paramAnonymousMessage.what)
        {
        default:
          return;
        case 0:
        }
        Log.e(RecognizerController.TAG, "Manually timed out request after 20000ms.");
        if (RecognizerController.this.queueingGrecoListener != null)
          RecognizerController.this.queueingGrecoListener.onError(new AudioRecognizeException("Manually timed out", new RuntimeException()));
        RecognizerController.this.recognizer.cancel();
        NetworkUtil.pingGoogle();
      }
    };
  }

  private Greco3Grammar getGrammarType(SessionParams.Mode paramMode)
  {
    return null;
  }

  private Greco3Mode getGreco3Mode(SessionParams.Mode paramMode)
  {
    return Greco3Mode.ENDPOINTER_VOICESEARCH;
  }

  private static SessionParams.Mode getModeForVoiceConfig(VoiceConfig paramVoiceConfig)
  {
    if (paramVoiceConfig == VoiceConfig.VOICE_RECORD)
      return SessionParams.Mode.SERVICE_API;
    return SessionParams.Mode.VOICE_ACTIONS;
  }

  private SessionParams.Builder getSessionParamsBuilder(SessionParams.Mode paramMode)
  {
    AudioInputParams.Builder localBuilder = new AudioInputParams.Builder();
    localBuilder.setPlayBeepEnabled(false);
    SessionParams.Builder localBuilder1 = new SessionParams.Builder();
    localBuilder1.setSpokenBcp47Locale("en-US").setGreco3Grammar(getGrammarType(paramMode)).setGreco3Mode(getGreco3Mode(paramMode)).setProfanityFilterEnabled(this.speechSettings.isProfanityFilterEnabled()).setPartialResultsEnabled(true).setRecordedAudio(false).setMode(paramMode).setAudioInputParams(localBuilder.build());
    localBuilder1.setNoSpeechDetectedEnabled(true);
    return localBuilder1;
  }

  private VoiceSearchUi.SpeechException getSpeechException(final VoiceSearchUi.SpeechException.Type paramType, final Exception paramException)
  {
    return new VoiceSearchUi.SpeechException()
    {
      public Exception getException()
      {
        return paramException;
      }

      public VoiceSearchUi.SpeechException.Type getType()
      {
        return paramType;
      }
    };
  }

  private VoiceSearchUi.SpeechException.Type getSpeechExceptionType(RecognizeException paramRecognizeException)
  {
    if ((paramRecognizeException instanceof NetworkRecognizeException))
      return VoiceSearchUi.SpeechException.Type.NETWORK_RECOGNIZE;
    if ((paramRecognizeException instanceof NoMatchRecognizeException))
      return VoiceSearchUi.SpeechException.Type.NO_MATCH;
    if ((paramRecognizeException instanceof AudioRecognizeException))
      return VoiceSearchUi.SpeechException.Type.AUDIO_RECOGNIZE;
    return VoiceSearchUi.SpeechException.Type.SERVER;
  }

  public void attachVoiceSearchUi(VoiceSearchUi paramVoiceSearchUi)
  {
    Log.i(TAG, "attachVoiceSearchUi");
    if (this.queueingGrecoListener != null)
      this.queueingGrecoListener.setListener(new InternalGrecoListener(paramVoiceSearchUi));
    while (true)
    {
      paramVoiceSearchUi.setSpeechLevelSource(new VoiceSearchUi.SpeechLevelSource()
      {
        public int getSpeechLevel()
        {
          return RecognizerController.this.speechLevelSource.getSpeechLevel();
        }
      });
      return;
      Log.w(TAG, "queueingGrecoListener was null in attachVoiceSearchUi");
    }
  }

  public void cancel()
  {
    Log.i(TAG, "cancel");
    this.recognizer.cancel();
    if (this.queueingGrecoListener != null)
      this.queueingGrecoListener.setCanceled();
    this.queueingGrecoListener = null;
  }

  public void detachVoiceSearchUi()
  {
    Log.i(TAG, "detachVoiceSearchUi");
    if (this.queueingGrecoListener != null)
      this.queueingGrecoListener.setCanceled();
  }

  public void startListening(VoiceConfig paramVoiceConfig, Context paramContext)
  {
    Log.i(TAG, "startListening");
    this.queueingGrecoListener = new QueueingGrecoListener();
    SessionParams localSessionParams = getSessionParamsBuilder(getModeForVoiceConfig(paramVoiceConfig)).build();
    if (localSessionParams.getAudioInputParams().shouldStoreCompleteAudio());
    for (SettableFuture localSettableFuture = SettableFuture.create(); ; localSettableFuture = null)
    {
      this.recognizer.startListening(localSessionParams, this.queueingGrecoListener, MainThreadExecutorManager.getMainThreadExecutor(), localSettableFuture);
      this.handler.removeMessages(0);
      if (paramVoiceConfig != VoiceConfig.VOICE_RECORD)
        this.handler.sendEmptyMessageDelayed(0, 20000L);
      return;
    }
  }

  public void stopListening()
  {
    Log.i(TAG, "stopListening");
    this.recognizer.stopListening();
  }

  private class InternalGrecoListener extends RecognitionEventListenerAdapter
  {
    private CharSequence combinedRecognitionResult;
    private boolean recognitionCompleteReceived;
    private final RecognizedText recognizedText = new RecognizedText();
    private final VoiceSearchUi voiceSearchUi;

    public InternalGrecoListener(VoiceSearchUi arg2)
    {
      Object localObject;
      this.voiceSearchUi = localObject;
    }

    public String getRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
    {
      if (paramRecognitionEvent.hasResult())
      {
        RecognizerProtos.RecognitionResult localRecognitionResult = paramRecognitionEvent.getResult();
        if (localRecognitionResult.getHypothesisCount() > 0)
        {
          RecognizerProtos.Hypothesis localHypothesis = localRecognitionResult.getHypothesis(0);
          if (localHypothesis.hasText())
            return localHypothesis.getText();
        }
      }
      return null;
    }

    public void onBeginningOfSpeech()
    {
      Log.d(RecognizerController.TAG, "onBeginningOfSpeech");
      this.voiceSearchUi.showRecording();
    }

    public void onDone()
    {
      RecognizerController.this.handler.removeMessages(0);
      Log.d(RecognizerController.TAG, "onDone");
      this.voiceSearchUi.showDone();
      if (!this.recognitionCompleteReceived)
        this.voiceSearchUi.onError(RecognizerController.this.getSpeechException(VoiceSearchUi.SpeechException.Type.NO_MATCH, new NoMatchRecognizeException()));
    }

    public void onEndOfSpeech()
    {
      Log.d(RecognizerController.TAG, "onEndOfSpeech");
      this.voiceSearchUi.showRecognizing();
    }

    public void onError(RecognizeException paramRecognizeException)
    {
      RecognizerController.this.handler.removeMessages(0);
      String str = this.recognizedText.getStableForErrorReporting();
      Log.e(RecognizerController.TAG, "onError" + str, paramRecognizeException);
      this.voiceSearchUi.onError(RecognizerController.this.getSpeechException(RecognizerController.access$600(RecognizerController.this, paramRecognizeException), paramRecognizeException));
    }

    public void onMajelResult(MajelProtos.MajelResponse paramMajelResponse)
    {
      RecognizerController.this.handler.removeMessages(0);
      Log.d(RecognizerController.TAG, "onMajelResult");
      if (this.recognitionCompleteReceived)
      {
        boolean bool1 = TextUtils.isEmpty(this.combinedRecognitionResult);
        boolean bool2 = false;
        if (!bool1)
          bool2 = true;
        Preconditions.checkState(bool2);
        this.voiceSearchUi.onMajelResult(paramMajelResponse);
        return;
      }
      Log.e(RecognizerController.TAG, "No recognition result from server.");
      this.voiceSearchUi.onError(RecognizerController.this.getSpeechException(VoiceSearchUi.SpeechException.Type.NO_MATCH, new NoMatchRecognizeException()));
    }

    public void onMediaDataResult(byte[] paramArrayOfByte)
    {
      Log.d(RecognizerController.TAG, "onMediaDataResult (ignored) - audio length: " + paramArrayOfByte.length);
    }

    public void onNoSpeechDetected()
    {
      RecognizerController.this.handler.removeMessages(0);
      Log.d(RecognizerController.TAG, "onNoSpeechDetected");
      this.voiceSearchUi.showNoSpeechDetected();
    }

    public void onReadyForSpeech(float paramFloat1, float paramFloat2)
    {
      Log.d(RecognizerController.TAG, "onReadyForSpeech");
      this.voiceSearchUi.showListening();
    }

    public void onRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
    {
      if (this.recognizedText.hasCompletedRecognition())
        Log.e(RecognizerController.TAG, "Result after completed recognition.");
      do
      {
        String str1;
        String str2;
        do
        {
          return;
          if (paramRecognitionEvent.getEventType() != 0)
            break;
          RecognizerController.this.handler.removeMessages(0);
          RecognizerController.this.handler.sendEmptyMessageDelayed(0, 20000L);
          str1 = "";
          str2 = "";
          RecognizerProtos.PartialResult localPartialResult = paramRecognitionEvent.getPartialResult();
          int i = 0;
          if ((localPartialResult != null) && (i < localPartialResult.getPartCount()))
          {
            RecognizerProtos.PartialPart localPartialPart = localPartialResult.getPart(i);
            if (localPartialPart.getStability() >= 0.8D)
              str1 = str1 + localPartialPart.getText();
            while (true)
            {
              i++;
              break;
              str2 = str2 + localPartialPart.getText();
            }
          }
          LogHelper.logPii(3, RecognizerController.TAG, "onRecognitionResult(" + str1 + "," + str2 + ")");
          if (str1.length() + str2.length() == 0)
            str1 = getRecognitionResult(paramRecognitionEvent);
        }
        while ((str1 == null) || (str1.length() + str2.length() <= 0));
        this.voiceSearchUi.updateRecognizedText(str1, str2);
        return;
      }
      while (paramRecognitionEvent.getEventType() != 1);
      RecognizerController.this.handler.removeMessages(0);
      CorrectableString localCorrectableString = this.recognizedText.updateFinal(paramRecognitionEvent);
      Log.d(RecognizerController.TAG, "onRecognitionResult(combined)");
      LogHelper.logPii(3, RecognizerController.TAG, "onRecognitionResult(combined=" + localCorrectableString + ")");
      this.recognitionCompleteReceived = true;
      this.combinedRecognitionResult = localCorrectableString;
      if (TextUtils.isEmpty(localCorrectableString))
      {
        this.voiceSearchUi.onError(RecognizerController.this.getSpeechException(VoiceSearchUi.SpeechException.Type.NO_MATCH, new NoMatchRecognizeException()));
        return;
      }
      if ((paramRecognitionEvent.hasCombinedResult()) && (paramRecognitionEvent.getCombinedResult().getHypothesisCount() > 0));
      for (float f = paramRecognitionEvent.getCombinedResult().getHypothesis(0).getConfidence(); ; f = 0.0F)
      {
        this.voiceSearchUi.onRecognitionResult(localCorrectableString, f);
        return;
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.RecognizerController
 * JD-Core Version:    0.6.2
 */
package com.google.glass.home.voice;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.DecelerateInterpolator;
import com.google.android.speech.alternates.CorrectableString;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.app.GlassError;
import com.google.glass.app.GlassError.OnConfirmAction;
import com.google.glass.gesture.EyeGestureUtils;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.home.search.MicrophoneView;
import com.google.glass.home.search.StreamingTextView;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.InetConnectionState;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SettingsHelper;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.network.VoiceSearchUi;
import com.google.glass.voice.network.VoiceSearchUi.SpeechException;
import com.google.glass.voice.network.VoiceSearchUi.SpeechException.Type;
import com.google.glass.voice.network.VoiceSearchUi.SpeechLevelSource;
import com.google.glass.widget.SliderView;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.MajelProtos.MajelResponse;

public abstract class BaseVoiceInputActivity extends GlassActivity
{
  private static final long ANIMATE_IN_DURATION_MILLIS = 100L;
  private static final long ANIMATE_OUT_DURATION_MILLIS = 200L;
  private static final int ENDPOINT_CONFIRM_THRESHOLD_MILLIS = 1000;
  public static final String EXTRA_SHOULD_PLAY_INITIAL_SOUND = "should_play_initial_sound";
  public static final String EXTRA_TRIGGER_METHOD = "trigger_method";
  private static final int MSG_ON_ERROR = 9;

  @VisibleForTesting
  protected static final int MSG_ON_MAJEL_RESULT = 8;

  @VisibleForTesting
  protected static final int MSG_ON_RECOGNITION_RESULT = 7;
  private static final int MSG_SET_SPEECH_LEVEL_SOURCE = 5;
  private static final int MSG_SHOW_DONE = 4;
  private static final int MSG_SHOW_LISTENING = 0;
  private static final int MSG_SHOW_NO_SPEECH_DETECTED = 3;
  private static final int MSG_SHOW_PROGRESS_BAR = 10;
  private static final int MSG_SHOW_RECOGNIZING = 2;
  private static final int MSG_SHOW_RECORDING = 1;
  private static final int MSG_UPDATE_RECOGNIZED_TEXT = 6;
  private static final int NO_RESOURCE_ID = 0;
  private static final long SHOW_PROGRESS_BAR_DELAY_MILLIS = 250L;
  public static final int TRIGGER_METHOD_LONG_PRESS_SCREEN_OFF = 4;
  public static final int TRIGGER_METHOD_LONG_PRESS_SCREEN_ON = 3;
  public static final int TRIGGER_METHOD_MENU_TOUCH = 2;
  public static final int TRIGGER_METHOD_MENU_VOICE = 1;
  public static final int TRIGGER_METHOD_UNKNOWN = 0;
  public static final int TYPE_GLASSWARE = 3;
  public static final int TYPE_MESSAGING = 2;
  public static final int TYPE_NAVIGATION = 1;
  public static final int TYPE_SEARCH;
  private long endOfSpeechTime;

  @VisibleForTesting
  protected final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (BaseVoiceInputActivity.this.isFinishing())
        return;
      BaseVoiceInputActivity.this.updatePowerHelper(paramAnonymousMessage.what);
      BaseVoiceInputActivity.this.updateKeepScreenOn(paramAnonymousMessage.what);
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 0:
        BaseVoiceInputActivity.this.dispatchShowListening();
        return;
      case 1:
        BaseVoiceInputActivity.this.dispatchShowRecording();
        return;
      case 2:
        BaseVoiceInputActivity.this.dispatchShowRecognizing();
        return;
      case 3:
        BaseVoiceInputActivity.this.dispatchShowNoSpeechDetected();
        return;
      case 4:
        BaseVoiceInputActivity.this.dispatchShowDone();
        return;
      case 5:
        BaseVoiceInputActivity.this.dispatchSetSpeechLevelSource((VoiceSearchUi.SpeechLevelSource)paramAnonymousMessage.obj);
        return;
      case 6:
        Object[] arrayOfObject2 = (Object[])paramAnonymousMessage.obj;
        BaseVoiceInputActivity.this.dispatchUpdateRecognizedText((CharSequence)arrayOfObject2[0], (CharSequence)arrayOfObject2[1]);
        return;
      case 7:
        Object[] arrayOfObject1 = (Object[])paramAnonymousMessage.obj;
        BaseVoiceInputActivity.this.dispatchOnRecognitionResult((CorrectableString)arrayOfObject1[0], ((Float)arrayOfObject1[1]).floatValue());
        return;
      case 8:
        BaseVoiceInputActivity.this.dispatchOnMajelResult((MajelProtos.MajelResponse)paramAnonymousMessage.obj);
        return;
      case 9:
        BaseVoiceInputActivity.this.dispatchOnError((VoiceSearchUi.SpeechException)paramAnonymousMessage.obj);
        return;
      case 10:
      }
      BaseVoiceInputActivity.this.progressSlider.startIndeterminate();
    }
  };
  private boolean hasMajelResponse = false;
  private boolean hasRecognitionResults = false;
  private boolean logFirstRecognizedText = true;
  private MicrophoneView microphone;
  private PowerHelper powerHelper;
  private SliderView progressSlider;
  private TypophileTextView prompt;
  private CorrectableString recognitionResult = null;
  private final Runnable speakAgainRunnable = new Runnable()
  {
    public void run()
    {
      BaseVoiceInputActivity.this.getSoundManager().playSound(SoundManager.SoundId.VOICE_PENDING);
      BaseVoiceInputActivity.this.reset();
      BaseVoiceInputActivity.this.setVoiceConfig(BaseVoiceInputActivity.this.getRetryVoiceConfig());
      BaseVoiceInputActivity.this.attachVoiceSearchUi(BaseVoiceInputActivity.this.voiceSearchUi);
    }
  };
  private long startTime;
  private StreamingTextView streamingTextView;
  private int triggerMethod;

  @VisibleForTesting
  protected final VoiceSearchUi voiceSearchUi = new VoiceSearchUi()
  {
    public void onError(VoiceSearchUi.SpeechException paramAnonymousSpeechException)
    {
      Message.obtain(BaseVoiceInputActivity.this.handler, 9, paramAnonymousSpeechException).sendToTarget();
    }

    public void onMajelResult(MajelProtos.MajelResponse paramAnonymousMajelResponse)
    {
      Message.obtain(BaseVoiceInputActivity.this.handler, 8, paramAnonymousMajelResponse).sendToTarget();
    }

    public void onRecognitionResult(CharSequence paramAnonymousCharSequence, float paramAnonymousFloat)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramAnonymousCharSequence;
      arrayOfObject[1] = Float.valueOf(paramAnonymousFloat);
      Message.obtain(BaseVoiceInputActivity.this.handler, 7, arrayOfObject).sendToTarget();
    }

    public void setSpeechLevelSource(VoiceSearchUi.SpeechLevelSource paramAnonymousSpeechLevelSource)
    {
      Message.obtain(BaseVoiceInputActivity.this.handler, 5, paramAnonymousSpeechLevelSource).sendToTarget();
    }

    public void showDone()
    {
      Message.obtain(BaseVoiceInputActivity.this.handler, 4).sendToTarget();
    }

    public void showListening()
    {
      Message.obtain(BaseVoiceInputActivity.this.handler, 0).sendToTarget();
    }

    public void showNoSpeechDetected()
    {
      Message.obtain(BaseVoiceInputActivity.this.handler, 3).sendToTarget();
    }

    public void showRecognizing()
    {
      Message.obtain(BaseVoiceInputActivity.this.handler, 2).sendToTarget();
    }

    public void showRecording()
    {
      Message.obtain(BaseVoiceInputActivity.this.handler, 1).sendToTarget();
    }

    public void updateRecognizedText(CharSequence paramAnonymousCharSequence1, CharSequence paramAnonymousCharSequence2)
    {
      Object[] arrayOfObject = { paramAnonymousCharSequence1, paramAnonymousCharSequence2 };
      Message.obtain(BaseVoiceInputActivity.this.handler, 6, arrayOfObject).sendToTarget();
    }
  };

  private void animateIn(View paramView, final Runnable paramRunnable)
  {
    paramView.setTranslationY(getResources().getDisplayMetrics().heightPixels);
    paramView.setVisibility(0);
    paramView.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(100L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (paramRunnable != null)
          paramRunnable.run();
      }
    });
  }

  private void animateOut(final View paramView)
  {
    paramView.animate().translationY(getResources().getDisplayMetrics().heightPixels).setInterpolator(new DecelerateInterpolator()).setDuration(200L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        paramView.setVisibility(8);
      }
    });
  }

  private void dispatchOnError(VoiceSearchUi.SpeechException paramSpeechException)
  {
    if (isMessageShowing())
    {
      Log.d(getTag(), "Received error while already showing error on screen: " + paramSpeechException.getException());
      return;
    }
    long l = System.currentTimeMillis() - this.startTime;
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[10];
    arrayOfObject[0] = "error";
    arrayOfObject[1] = paramSpeechException.getException().getClass().getSimpleName();
    arrayOfObject[2] = "detail";
    arrayOfObject[3] = paramSpeechException.getException();
    arrayOfObject[4] = "time";
    arrayOfObject[5] = Long.valueOf(l);
    arrayOfObject[6] = "type";
    arrayOfObject[7] = Integer.valueOf(getType());
    arrayOfObject[8] = "trigger";
    arrayOfObject[9] = Integer.valueOf(this.triggerMethod);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_SEARCH_ERROR, str);
    this.microphone.showNotListening();
    animateOut(this.microphone);
    this.prompt.setVisibility(8);
    this.handler.removeMessages(10);
    this.progressSlider.stopIndeterminate();
    new GlassError().setPrimaryMessageId(getErrorMessageId(paramSpeechException)).setSecondaryMessageId(getSecondaryErrorMessageId(paramSpeechException)).setIconId(getErrorIconId(paramSpeechException)).setFinishWhenDone(true).setOnConfirmRunnable(getErrorOnConfirmRunnable(paramSpeechException)).show(this);
  }

  private void dispatchOnMajelResult(MajelProtos.MajelResponse paramMajelResponse)
  {
    if (paramMajelResponse.getPeanutCount() > 0)
    {
      this.hasMajelResponse = true;
      onMajelResult(paramMajelResponse, this.recognitionResult.toString(), this.startTime, this.endOfSpeechTime);
    }
  }

  private void dispatchOnRecognitionResult(CorrectableString paramCorrectableString, float paramFloat)
  {
    this.recognitionResult = paramCorrectableString;
    this.prompt.setVisibility(8);
    this.streamingTextView.setVisibility(0);
    this.streamingTextView.setFinalRecognizedText(cleanRecognitionResults(paramCorrectableString));
    if (showProgressOnRecognitionResult())
      this.progressSlider.startIndeterminate();
    while (true)
    {
      long l1 = System.currentTimeMillis() - this.startTime;
      long l2 = System.currentTimeMillis() - this.endOfSpeechTime;
      Long localLong = Long.valueOf(this.startTime);
      Object[] arrayOfObject = new Object[12];
      arrayOfObject[0] = "hypothesis";
      arrayOfObject[1] = paramCorrectableString.toString();
      arrayOfObject[2] = "confidence";
      arrayOfObject[3] = Float.valueOf(paramFloat);
      arrayOfObject[4] = "time_total";
      arrayOfObject[5] = Long.valueOf(l1);
      arrayOfObject[6] = "time_from_eos";
      arrayOfObject[7] = Long.valueOf(l2);
      arrayOfObject[8] = "type";
      arrayOfObject[9] = Integer.valueOf(getType());
      arrayOfObject[10] = "trigger";
      arrayOfObject[11] = Integer.valueOf(this.triggerMethod);
      String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
      logUserEvent(UserEventAction.VOICE_SEARCH_RECOGNITION, str);
      onRecognitionResult(paramCorrectableString.toString());
      return;
      this.handler.removeMessages(10);
      this.progressSlider.stopIndeterminate();
    }
  }

  private void dispatchSetSpeechLevelSource(VoiceSearchUi.SpeechLevelSource paramSpeechLevelSource)
  {
    this.microphone.setSpeechLevelSource(paramSpeechLevelSource);
  }

  private void dispatchShowDone()
  {
    this.microphone.showNotListening();
    if ((!this.hasMajelResponse) && (isMajelResponseExpected()))
    {
      if (isMessageShowing())
        Log.d(getTag(), "Error to display, but error already on screen");
    }
    else
      return;
    this.progressSlider.stopIndeterminate();
    long l = System.currentTimeMillis() - this.startTime;
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = "query";
    arrayOfObject[1] = this.recognitionResult;
    arrayOfObject[2] = "time";
    arrayOfObject[3] = Long.valueOf(l);
    arrayOfObject[4] = "type";
    arrayOfObject[5] = Integer.valueOf(getType());
    arrayOfObject[6] = "trigger";
    arrayOfObject[7] = Integer.valueOf(this.triggerMethod);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_SEARCH_NO_ANSWER, str);
    new GlassError().setPrimaryMessageId(R.string.voice_search_no_answer).setIconId(R.drawable.ic_cloud_sad_big).setFinishWhenDone(true).setAutoHide(true).show(this);
  }

  private void dispatchShowListening()
  {
    this.handler.removeMessages(10);
    this.progressSlider.stopIndeterminate();
    this.streamingTextView.setVisibility(8);
    this.prompt.setText(getPromptText());
    if (this.microphone.getVisibility() == 8)
    {
      animateIn(this.prompt, null);
      animateIn(this.microphone, new Runnable()
      {
        public void run()
        {
          BaseVoiceInputActivity.this.microphone.showListening();
        }
      });
    }
    while (true)
    {
      this.streamingTextView.reset();
      return;
      if (this.prompt.getVisibility() == 8)
        this.prompt.setVisibility(0);
      this.microphone.showListening();
    }
  }

  private void dispatchShowNoSpeechDetected()
  {
    if (isMessageShowing())
    {
      Log.d(getTag(), "No-speech error to display, but error already on screen");
      return;
    }
    this.microphone.showNotListening();
    this.progressSlider.stopIndeterminate();
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = "recognition";
    arrayOfObject[1] = Boolean.valueOf(this.hasRecognitionResults);
    arrayOfObject[2] = "type";
    arrayOfObject[3] = Integer.valueOf(getType());
    arrayOfObject[4] = "trigger";
    arrayOfObject[5] = Integer.valueOf(this.triggerMethod);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_SEARCH_NO_SPEECH_DETECTED, str);
    new GlassError().setPrimaryMessageId(R.string.error_no_speech_detected).setSecondaryMessageId(R.string.error_tap_speak_again).setIconId(R.drawable.ic_exclamation_big).setFinishWhenDone(true).setOnConfirmRunnable(this.speakAgainRunnable).show(this);
  }

  private void dispatchShowRecognizing()
  {
    this.endOfSpeechTime = System.currentTimeMillis();
    this.microphone.showNotListening();
    animateOut(this.microphone);
    this.prompt.setVisibility(8);
    getSoundManager().playSound(SoundManager.SoundId.VOICE_COMPLETED);
    this.handler.sendEmptyMessageDelayed(10, 250L);
    long l = System.currentTimeMillis() - this.startTime;
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = "time";
    arrayOfObject[1] = Long.valueOf(l);
    arrayOfObject[2] = "type";
    arrayOfObject[3] = Integer.valueOf(getType());
    arrayOfObject[4] = "trigger";
    arrayOfObject[5] = Integer.valueOf(this.triggerMethod);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_SEARCH_END_OF_SPEECH, str);
  }

  private void dispatchShowRecording()
  {
    this.microphone.showRecording();
    this.streamingTextView.reset();
  }

  private void dispatchUpdateRecognizedText(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    this.hasRecognitionResults = true;
    if ((paramCharSequence1 != null) || (paramCharSequence2 != null))
    {
      CharSequence localCharSequence1 = cleanRecognitionResults(paramCharSequence1);
      CharSequence localCharSequence2 = cleanRecognitionResults(paramCharSequence2);
      if ((TextUtils.isEmpty(localCharSequence1)) && (TextUtils.isEmpty(localCharSequence2)))
        return;
      this.prompt.setVisibility(8);
      this.streamingTextView.setVisibility(0);
      this.streamingTextView.updateRecognizedText(localCharSequence1, localCharSequence2);
    }
    if (this.logFirstRecognizedText)
    {
      this.logFirstRecognizedText = false;
      long l = System.currentTimeMillis() - this.startTime;
      Long localLong = Long.valueOf(this.startTime);
      Object[] arrayOfObject = new Object[6];
      arrayOfObject[0] = "time";
      arrayOfObject[1] = Long.valueOf(l);
      arrayOfObject[2] = "type";
      arrayOfObject[3] = Integer.valueOf(getType());
      arrayOfObject[4] = "trigger";
      arrayOfObject[5] = Integer.valueOf(this.triggerMethod);
      String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
      logUserEvent(UserEventAction.VOICE_SEARCH_FIRST_RECOGNITION, str);
    }
    onUpdateRecognizedText();
  }

  private static int getErrorIconId(VoiceSearchUi.SpeechException paramSpeechException)
  {
    if (paramSpeechException.getType().equals(VoiceSearchUi.SpeechException.Type.AUDIO_RECOGNIZE))
      return R.drawable.ic_exclamation_big;
    return R.drawable.ic_cloud_sad_big;
  }

  private static int getErrorMessageId(VoiceSearchUi.SpeechException paramSpeechException)
  {
    if (paramSpeechException.getType().equals(VoiceSearchUi.SpeechException.Type.NETWORK_RECOGNIZE))
      return R.string.voice_search_network_error;
    if (paramSpeechException.getType().equals(VoiceSearchUi.SpeechException.Type.NO_MATCH))
      return R.string.voice_search_no_match;
    if (paramSpeechException.getType().equals(VoiceSearchUi.SpeechException.Type.AUDIO_RECOGNIZE))
      return R.string.voice_search_audio_error;
    return R.string.voice_search_server_error;
  }

  private Runnable getErrorOnConfirmRunnable(VoiceSearchUi.SpeechException paramSpeechException)
  {
    if ((paramSpeechException.getType().equals(VoiceSearchUi.SpeechException.Type.NO_MATCH)) || (paramSpeechException.getType().equals(VoiceSearchUi.SpeechException.Type.AUDIO_RECOGNIZE)))
      return this.speakAgainRunnable;
    return SettingsHelper.getGoToSettingsRunnable(this);
  }

  private static int getSecondaryErrorMessageId(VoiceSearchUi.SpeechException paramSpeechException)
  {
    if ((paramSpeechException.getType().equals(VoiceSearchUi.SpeechException.Type.NO_MATCH)) || (paramSpeechException.getType().equals(VoiceSearchUi.SpeechException.Type.AUDIO_RECOGNIZE)))
      return R.string.error_tap_speak_again;
    return R.string.error_tap_connection_settings;
  }

  private void reset()
  {
    this.startTime = System.currentTimeMillis();
    this.microphone.showNotListening();
    this.handler.removeMessages(10);
    this.progressSlider.stopIndeterminate();
    this.hasMajelResponse = false;
    this.recognitionResult = null;
    this.logFirstRecognizedText = true;
  }

  private void updateKeepScreenOn(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      getContentView().setKeepScreenOn(true);
      return;
    case 3:
    case 9:
    }
    getContentView().setKeepScreenOn(false);
  }

  private void updatePowerHelper(int paramInt)
  {
    switch (paramInt)
    {
    case 3:
    case 4:
    case 5:
    default:
    case 0:
    case 1:
    case 2:
    case 6:
    }
    do
      return;
    while (this.powerHelper == null);
    this.powerHelper.userActivity();
  }

  protected CharSequence cleanRecognitionResults(CharSequence paramCharSequence)
  {
    return paramCharSequence;
  }

  protected Handler getHandler()
  {
    return this.handler;
  }

  public abstract VoiceConfig getInitialVoiceConfig();

  protected int getInputTypeResId()
  {
    return 0;
  }

  protected CharSequence getInputTypeText()
  {
    int i = getInputTypeResId();
    if (i == 0)
      throw new AssertionError("Must provide input type text or ID.");
    return getResources().getText(i);
  }

  protected CharSequence getPromptText()
  {
    int i = getSpeakNowPromptResId();
    if (i == 0)
      throw new AssertionError("Must provide prompt text or ID.");
    return getResources().getText(i);
  }

  protected int getRecognizedTextLineCount()
  {
    return this.streamingTextView.getLineCount();
  }

  protected abstract VoiceConfig getRetryVoiceConfig();

  protected int getSpeakNowPromptResId()
  {
    return 0;
  }

  protected abstract int getType();

  protected boolean isMajelResponseExpected()
  {
    return false;
  }

  public boolean onConfirm()
  {
    long l = System.currentTimeMillis() - this.startTime;
    if (l > 1000L)
    {
      Log.d(getTag(), "Manually endpointed after " + l + "ms");
      endpointNetworkRecognizer();
      return true;
    }
    return false;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "type";
    arrayOfObject[1] = Integer.valueOf(getType());
    arrayOfObject[2] = "trigger";
    arrayOfObject[3] = Integer.valueOf(this.triggerMethod);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_SEARCH_DISMISS, str);
    return super.onDismiss(paramDismissAction);
  }

  protected void onMajelResult(MajelProtos.MajelResponse paramMajelResponse, String paramString, long paramLong1, long paramLong2)
  {
  }

  public void onPause()
  {
    if (!this.hasMajelResponse)
      detachVoiceSearchUi();
    if (Labs.isEnabled(Labs.Feature.DISABLE_GAZE_ON_MIC))
    {
      Log.d(getTag(), "Requesting re-enable of the GazeService after voice input complete...");
      EyeGestureUtils.enableGazeServiceAsync(this, true);
    }
    super.onPause();
  }

  protected void onRecognitionResult(String paramString)
  {
  }

  protected void onResume()
  {
    super.onResume();
    View localView = getContentView();
    TypophileTextView localTypophileTextView = (TypophileTextView)findViewById(R.id.voice_search_selected_item);
    this.microphone = ((MicrophoneView)localView.findViewById(R.id.microphone_container));
    this.prompt = ((TypophileTextView)localView.findViewById(R.id.voice_search_prompt));
    this.streamingTextView = ((StreamingTextView)localView.findViewById(R.id.streaming_text));
    this.progressSlider = ((SliderView)localView.findViewById(R.id.progress_slider));
    reset();
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      this.triggerMethod = localIntent.getIntExtra("trigger_method", 0);
      if (getGlassApplication().getConnectionState().isConnected())
        break label168;
      this.microphone.showNotListening();
      new GlassError().setPrimaryMessageId(R.string.voice_network_connectivity).setSecondaryMessageId(R.string.error_tap_connection_settings).setIconId(R.drawable.ic_cloud_sad_big).setFinishWhenDone(true).setOnConfirmAction(GlassError.OnConfirmAction.GO_TO_SETTINGS).show(this);
    }
    label168: 
    do
    {
      return;
      this.triggerMethod = 0;
      break;
      localTypophileTextView.setText(getInputTypeText());
      Long localLong = Long.valueOf(this.startTime);
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = "type";
      arrayOfObject[1] = Integer.valueOf(getType());
      arrayOfObject[2] = "trigger";
      arrayOfObject[3] = Integer.valueOf(this.triggerMethod);
      String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
      logUserEvent(UserEventAction.VOICE_SEARCH_STARTED, str);
      this.powerHelper = new PowerHelper(this);
    }
    while (!Labs.isEnabled(Labs.Feature.DISABLE_GAZE_ON_MIC));
    Log.d(getTag(), "Requesting disable of the GazeService during voice input...");
    EyeGestureUtils.enableGazeServiceAsync(this, false);
  }

  protected void onStart()
  {
    super.onStart();
    Intent localIntent = getIntent();
    if ((localIntent != null) && (localIntent.getBooleanExtra("should_play_initial_sound", false)))
      getSoundManager().playSound(SoundManager.SoundId.VOICE_PENDING);
  }

  protected void onStop()
  {
    finish();
    super.onStop();
  }

  protected void onUpdateRecognizedText()
  {
  }

  public void onVoiceServiceConnected()
  {
    super.onVoiceServiceConnected();
    attachVoiceSearchUi(this.voiceSearchUi);
  }

  protected int provideContentView()
  {
    return R.layout.voice_search_activity;
  }

  protected void showNoSpeechDetected()
  {
    Message.obtain(this.handler, 3).sendToTarget();
  }

  protected boolean showProgressOnRecognitionResult()
  {
    return true;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.BaseVoiceInputActivity
 * JD-Core Version:    0.6.2
 */
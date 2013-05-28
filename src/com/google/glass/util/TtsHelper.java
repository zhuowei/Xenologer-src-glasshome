package com.google.glass.util;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.speech.tts.TextToSpeech;
import android.speech.tts.TextToSpeech.OnInitListener;
import android.speech.tts.UtteranceProgressListener;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.voice.network.translate.NetworkTts;
import java.util.HashMap;
import java.util.concurrent.Executor;

public class TtsHelper
{
  private static final long MAX_TTS_WAKE_LOCK_HOLD_MS = 120000L;
  private static final int MSG_SPEAK_TEXT = 0;
  private static final int MSG_STOP_SPEAKING = 1;
  private static final String TAG = TtsHelper.class.getSimpleName();
  private Context context;
  private UtteranceProgressListener currentTtsListener;
  private final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 0:
        Log.d(TtsHelper.TAG, "Speaking text");
        LogHelper.logPii(3, TtsHelper.TAG, "Speaking text: " + TtsHelper.this.pendingTextToSynthesize);
        TtsHelper.access$202(TtsHelper.this, TtsHelper.this.pendingTtsListener);
        TtsHelper.this.textToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener()
        {
          private PowerManager.WakeLock wakeLock = ((PowerManager)TtsHelper.this.context.getSystemService("power")).newWakeLock(26, TtsHelper.TAG);

          private void releaseWakeLock()
          {
            if (this.wakeLock.isHeld())
            {
              Log.d(TtsHelper.TAG, "Releasing full wake lock from TTS");
              this.wakeLock.release();
            }
          }

          public void onDone(String paramAnonymous2String)
          {
            if (TtsHelper.this.currentTtsListener != null)
              TtsHelper.this.currentTtsListener.onDone(paramAnonymous2String);
            Log.d(TtsHelper.TAG, "TTS done speaking");
            releaseWakeLock();
          }

          public void onError(String paramAnonymous2String)
          {
            if (TtsHelper.this.currentTtsListener != null)
              TtsHelper.this.currentTtsListener.onError(paramAnonymous2String);
            Log.e(TtsHelper.TAG, "TTS error");
            releaseWakeLock();
          }

          public void onStart(String paramAnonymous2String)
          {
            if (TtsHelper.this.currentTtsListener != null)
              TtsHelper.this.currentTtsListener.onStart(paramAnonymous2String);
            Log.d(TtsHelper.TAG, "TTS started speaking, acquiring full wake lock");
            this.wakeLock.acquire(120000L);
          }
        });
        HashMap localHashMap = new HashMap();
        localHashMap.put("utteranceId", "");
        TtsHelper.this.textToSpeech.speak(TtsHelper.this.pendingTextToSynthesize, 0, localHashMap);
        TtsHelper.access$102(TtsHelper.this, null);
        TtsHelper.access$302(TtsHelper.this, null);
        return;
      case 1:
      }
      Log.d(TtsHelper.TAG, "Stopping speaking");
      TtsHelper.this.textToSpeech.stop();
    }
  };
  private String lastTextSynthesized;
  private String pendingTextToSynthesize;
  private UtteranceProgressListener pendingTtsListener;
  private TextToSpeech textToSpeech;
  private boolean textToSpeechInitialized;

  public TtsHelper(Context paramContext)
  {
    this.context = paramContext;
    Log.d(TAG, "Initializing TextToSpeech");
    this.textToSpeech = new TextToSpeech(paramContext, new TextToSpeech.OnInitListener()
    {
      public void onInit(int paramAnonymousInt)
      {
        Log.d(TtsHelper.TAG, "TextToSpeech initialization status: " + paramAnonymousInt);
        if (paramAnonymousInt == 0)
        {
          TtsHelper.access$602(TtsHelper.this, true);
          if (TtsHelper.this.pendingTextToSynthesize != null)
            TtsHelper.this.handler.sendEmptyMessage(0);
          return;
        }
        Log.e(TtsHelper.TAG, "Failed to initialize TextToSpeech.");
      }
    });
  }

  @VisibleForTesting
  public void clearLastTextSynthesized()
  {
    this.lastTextSynthesized = null;
  }

  @VisibleForTesting
  public String getLastTextSynthesized()
  {
    return this.lastTextSynthesized;
  }

  public void speakText(String paramString)
  {
    speakText(paramString, null);
  }

  public void speakText(String paramString, UtteranceProgressListener paramUtteranceProgressListener)
  {
    this.pendingTextToSynthesize = paramString;
    this.pendingTtsListener = paramUtteranceProgressListener;
    this.lastTextSynthesized = this.pendingTextToSynthesize;
    if (!this.textToSpeechInitialized)
    {
      Log.d(TAG, "TTS not yet initialized, queuing up text");
      LogHelper.logPii(3, TAG, "Queued up text: " + paramString);
      return;
    }
    Log.d(TAG, "TTS is ready, speaking text");
    LogHelper.logPii(3, TAG, "Speaking text: " + paramString);
    this.handler.sendEmptyMessage(0);
  }

  public void stopSpeaking()
  {
    this.pendingTextToSynthesize = null;
    this.pendingTtsListener = null;
    if (!this.textToSpeechInitialized)
      Log.d(TAG, "TTS not yet initialized, not calling stop");
    while (true)
    {
      if (NetworkTts.isTtsPlaying())
        AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
        {
          public void run()
          {
            NetworkTts.getSharedInstance().stopSpeaking();
          }
        });
      return;
      this.handler.sendEmptyMessage(1);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.TtsHelper
 * JD-Core Version:    0.6.2
 */
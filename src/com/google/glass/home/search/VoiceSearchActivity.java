package com.google.glass.home.search;

import android.content.Intent;
import android.os.Handler;
import android.os.SystemClock;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.home.voice.BaseVoiceInputActivity;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.SettingsHelper;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.network.VoiceSearchUi;
import com.google.majel.proto.MajelProtos.MajelResponse;

public class VoiceSearchActivity extends BaseVoiceInputActivity
{
  public static final String EXTRA_CALLED_BY_PRESS_TO_SEARCH = "called_by_press_to_search";
  private static final long FAST_DISMISS_DELAY_MS = 1000L;
  private boolean logFastDismiss;
  private boolean screenOn;
  private long startTime;

  private void logFastDismissed(long paramLong)
  {
    boolean bool1 = new SettingsHelper(this).isGuestModeEnabled();
    boolean bool2 = HiddenApiHelper.isDonDoffDetectorEnabled(this);
    String str1;
    Object[] arrayOfObject;
    String str2;
    if (this.screenOn)
    {
      str1 = "on";
      arrayOfObject = new Object[6];
      arrayOfObject[0] = "g";
      if (!bool1)
        break label119;
      str2 = "on";
      label50: arrayOfObject[1] = str2;
      arrayOfObject[2] = "d";
      if (!bool2)
        break label126;
    }
    label119: label126: for (String str3 = "y"; ; str3 = "n")
    {
      arrayOfObject[3] = str3;
      arrayOfObject[4] = "t";
      arrayOfObject[5] = Long.valueOf(paramLong);
      String str4 = UserEventHelper.createEventTuple("s", str1, arrayOfObject);
      logUserEvent(UserEventAction.PRESS_TO_SEARCH_DISMISSED, str4);
      return;
      str1 = "off";
      break;
      str2 = "off";
      break label50;
    }
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    if (isMessageShowing())
      return VoiceConfig.OFF;
    return VoiceConfig.SEARCH;
  }

  protected int getInputTypeResId()
  {
    return R.string.voice_menu_item_google;
  }

  protected VoiceConfig getRetryVoiceConfig()
  {
    return VoiceConfig.SEARCH;
  }

  protected int getSpeakNowPromptResId()
  {
    return R.string.voice_search_speak_now;
  }

  protected int getType()
  {
    return 0;
  }

  @VisibleForTesting
  VoiceSearchUi getVoiceSearchUi()
  {
    return this.voiceSearchUi;
  }

  @VisibleForTesting
  boolean hasPendingMajelResults()
  {
    return this.handler.hasMessages(8);
  }

  @VisibleForTesting
  boolean hasPendingRecognitionResults()
  {
    return this.handler.hasMessages(7);
  }

  protected boolean isMajelResponseExpected()
  {
    return true;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    if (this.logFastDismiss)
    {
      long l = SystemClock.uptimeMillis() - this.startTime;
      if (l <= 1000L)
        logFastDismissed(l);
    }
    return super.onDismiss(paramDismissAction);
  }

  protected void onMajelResult(MajelProtos.MajelResponse paramMajelResponse, String paramString, long paramLong1, long paramLong2)
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT");
    localIntent.putExtra("recognitionResult", paramString);
    localIntent.putExtra("majelResponse", paramMajelResponse.toByteArray());
    localIntent.putExtra("startTime", paramLong1);
    localIntent.putExtra("endofSpeech", paramLong2);
    localIntent.addFlags(32768);
    getSoundManager().playSound(SoundManager.SoundId.SUCCESS);
    startActivity(localIntent);
    finish();
  }

  protected void onStart()
  {
    super.onStart();
    Intent localIntent = getIntent();
    if ((localIntent != null) && (localIntent.hasExtra("called_by_press_to_search")))
    {
      this.startTime = SystemClock.uptimeMillis();
      this.logFastDismiss = true;
      this.screenOn = localIntent.getBooleanExtra("called_by_press_to_search", false);
      return;
    }
    this.logFastDismiss = false;
    this.screenOn = true;
  }

  protected int provideContentView()
  {
    return R.layout.voice_search_activity;
  }

  protected boolean shouldAllowLongPress()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.VoiceSearchActivity
 * JD-Core Version:    0.6.2
 */
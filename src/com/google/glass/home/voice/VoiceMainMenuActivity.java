package com.google.glass.home.voice;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.glass.app.GlassError;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.voice.menu.VoiceMenuItem;
import com.google.glass.logging.UserEventAction;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.LogHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.ScreenOffGesture;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.widget.SliderView;
import java.util.List;

public class VoiceMainMenuActivity extends MainMenuActivity
  implements VoiceMenu.VoiceMenuListener
{
  public static final String EXTRA_START_WITH_TOUCH_MODE = "com.google.glass.home.voice.START_WITH_TOUCH_MODE";
  private static final float HEAD_SCROLL_PER_ITEM = 45.0F;
  private static final float TOUCH_PIXELS_PER_ITEM = 200.0F;
  private boolean animateOnNextPause = true;
  private final SafeBroadcastReceiver connectivityReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return VoiceMainMenuActivity.this.getTag() + "/connectivityReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      boolean bool = VoiceMainMenuActivity.this.isConnected();
      VoiceMainMenuActivity.this.voiceMenu.onConnectivityChanged(bool);
    }
  };
  private float lastAccumulatorX = 0.0F;
  private SliderView progressSlider;
  private boolean touchBasedSelectionHappened;
  private boolean userTouching;
  private VoiceMenu voiceMenu;

  private void autoEnterTouchMode()
  {
    fingerDown();
    fingerUp();
    this.touchBasedSelectionHappened = true;
  }

  private void fingerDown()
  {
    this.userTouching = true;
    this.voiceMenu.getVisibleScrollView().setShouldOverscroll(true);
    this.voiceMenu.getVisibleScrollView().setShouldHighlightSelectedItem(true);
    stopOrientationSensors();
  }

  private void fingerUp()
  {
    this.voiceMenu.getVisibleScrollView().snapToNearest();
    this.userTouching = false;
  }

  private boolean isFromHandsFreeScreenOff()
  {
    Intent localIntent = getIntent();
    if (!localIntent.getBooleanExtra("screen_turned_on", false));
    while ((!ScreenOffGesture.hasScreenOffGesture(localIntent)) || (ScreenOffGesture.fromIntent(localIntent) != ScreenOffGesture.GLOBAL_LOOK_UP))
      return false;
    return true;
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    if (Labs.isEnabled(Labs.Feature.NATIVE_APP_VOICE))
      return NativeAppVoiceMenuHelper.getInstance().getMainMenuConfig(this);
    return VoiceConfig.getMainMenuConfig();
  }

  public boolean onConfirm()
  {
    if (this.touchBasedSelectionHappened)
      return this.voiceMenu.onConfirm();
    this.touchBasedSelectionHappened = true;
    getSoundManager().playSound(SoundManager.SoundId.FOCUS);
    return true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.progressSlider = ((SliderView)findViewById(R.id.progress_slider));
    this.voiceMenu = ((VoiceMenu)findViewById(R.id.voice_menu));
    this.voiceMenu.getVisibleScrollView().setShouldHighlightSelectedItem(false);
    this.voiceMenu.setListener(this);
    this.voiceMenu.setTopLevelMenuItems(getMainMenuItems());
  }

  public void onError(GlassError paramGlassError)
  {
    paramGlassError.setIconId(R.drawable.ic_exclamation_big).show(this);
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if ((paramInt == 1) && (paramBoolean))
      fingerDown();
    while ((paramInt != 0) || (paramBoolean))
      return true;
    fingerUp();
    return true;
  }

  protected void onPause()
  {
    if (this.animateOnNextPause)
      finish();
    while (true)
    {
      stopOrientationSensors();
      this.connectivityReceiver.unregister(this);
      super.onPause();
      return;
      this.animateOnNextPause = true;
      finish();
      overridePendingTransition(0, 0);
    }
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if (paramFloat1 != 0.0F)
    {
      float f = (paramFloat1 - this.lastAccumulatorX) / 200.0F;
      this.voiceMenu.getVisibleScrollView().scrollByItem(f);
    }
    this.lastAccumulatorX = paramFloat1;
    return true;
  }

  protected void onResume()
  {
    super.onResume();
    this.progressSlider.setVisibility(8);
    this.progressSlider.stopIndeterminate();
    this.connectivityReceiver.register(this, new String[] { "android.net.conn.CONNECTIVITY_CHANGE" });
    if (getIntent().getBooleanExtra("com.google.glass.home.voice.START_WITH_TOUCH_MODE", false))
      autoEnterTouchMode();
    while (true)
    {
      this.voiceMenu.showMainMenu();
      return;
      this.voiceMenu.setShouldHighlightSelectedItem(false);
      startOrientationSensors();
    }
  }

  public void onSelectedItemChanged(int paramInt)
  {
    if (this.userTouching)
    {
      getSoundManager().playSound(SoundManager.SoundId.FOCUS);
      this.touchBasedSelectionHappened = true;
    }
  }

  public void onShowSecondaryMenu()
  {
    if (this.touchBasedSelectionHappened)
    {
      autoEnterTouchMode();
      return;
    }
    this.voiceMenu.getVisibleScrollView().setShouldHighlightSelectedItem(false);
  }

  public boolean onVerticalHeadScroll(float paramFloat1, float paramFloat2)
  {
    if (this.userTouching)
      return false;
    float f = paramFloat1 / 45.0F;
    this.voiceMenu.getVisibleScrollView().scrollByItem(f);
    return true;
  }

  public boolean onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    Log.d(getTag(), "Received voice command");
    LogHelper.logPii(3, getTag(), "Voice command: " + paramVoiceCommand);
    VoiceConfig localVoiceConfig = getVoiceConfig();
    boolean bool = this.voiceMenu.onVoiceCommand(paramVoiceCommand);
    if ((bool) && (isFromHandsFreeScreenOff()) && (localVoiceConfig == VoiceConfig.getMainMenuConfig()))
      logUserEvent(UserEventAction.HANDSFREE_VOICE_ACTION);
    return bool;
  }

  protected int provideContentView()
  {
    return R.layout.voice_activity;
  }

  public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
  {
    this.voiceMenu.selectMenuItem(paramVoiceMenuItem, paramRunnable);
  }

  public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, List<? extends VoiceMenuItem> paramList)
  {
    this.voiceMenu.selectMenuItem(paramVoiceMenuItem, paramList);
  }

  public void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
  {
    this.voiceMenu.selectSecondaryMenuItem(paramVoiceMenuItem, paramRunnable);
  }

  public void setAnimateOnNextPause(boolean paramBoolean)
  {
    this.animateOnNextPause = paramBoolean;
  }

  public void showError(GlassError paramGlassError)
  {
    this.voiceMenu.showError(paramGlassError);
  }

  public void showProgressBar()
  {
    this.progressSlider.setVisibility(0);
    this.progressSlider.startIndeterminate();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.voice.VoiceMainMenuActivity
 * JD-Core Version:    0.6.2
 */
package com.google.glass.home.timeline.active;

import android.content.Context;
import android.content.Intent;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.voice.TouchMainMenuActivity;
import com.google.glass.home.voice.VoiceMainMenuActivity;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.timeline.active.ActiveItemView;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.voice.VoiceConfig;

public class HomeItemView extends ActiveItemView
{
  private ClockView clockView;
  private GuardPhraseView guardPhrase;

  public HomeItemView(Context paramContext)
  {
    super(paramContext, OngoingActivityManager.ActivityType.HOME);
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    if (!BluetoothHeadset.isInCallOrCallSetup(getContext()))
    {
      paramGlassActivity.preloadVoiceConfig(VoiceConfig.getMainMenuConfig());
      GlassApplication.from(getContext()).getUserEventHelper().log(UserEventAction.VOICE_MENU_COMMAND_TAPPED, "1");
      Intent localIntent;
      if (Labs.isEnabled(Labs.Feature.TOUCH_VOICE_MENU))
        localIntent = new Intent(paramGlassActivity, TouchMainMenuActivity.class);
      while (true)
      {
        paramGlassActivity.startActivity(localIntent);
        return true;
        localIntent = new Intent(paramGlassActivity, VoiceMainMenuActivity.class);
        localIntent.putExtra("com.google.glass.home.voice.START_WITH_TOUCH_MODE", true);
      }
    }
    return false;
  }

  public boolean onDoubleTap(GlassActivity paramGlassActivity)
  {
    return false;
  }

  public void onLoad()
  {
    this.clockView.onLoad();
    this.guardPhrase.onLoad();
  }

  public void onSettled()
  {
    super.onSettled();
    this.guardPhrase.onSettled();
  }

  public void onUnload()
  {
    this.clockView.onUnload();
    this.guardPhrase.onUnload();
  }

  public void onUnsettled()
  {
    super.onUnsettled();
    this.guardPhrase.onUnsettled();
  }

  protected void onViewInflated()
  {
    this.clockView = ((ClockView)findViewById(R.id.clock));
    this.guardPhrase = ((GuardPhraseView)findViewById(R.id.guard_phrase_hint));
  }

  public int provideContentView()
  {
    return R.layout.home_item;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.HomeItemView
 * JD-Core Version:    0.6.2
 */
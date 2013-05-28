package com.google.glass.home.settings;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.timeline.TimelineActivity;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.SettingsHelper;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.widget.SliderView;

public class SettingsTimelineActivity extends TimelineActivity
{
  private SettingsAdapter adapter;
  private SettingsTimelineView timeline;

  public VoiceConfig getInitialVoiceConfig()
  {
    if (Labs.isEnabled(Labs.Feature.OK_GLASS_EVERYWHERE))
      return VoiceConfig.GUARD;
    return VoiceConfig.OFF;
  }

  protected SettingsTimelineView getTimelineView()
  {
    return this.timeline;
  }

  public boolean onConfirm()
  {
    if (getTimelineView().onConfirm(this, false))
      return true;
    return super.onConfirm();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.adapter = new SettingsAdapter(this);
    this.timeline = ((SettingsTimelineView)findViewById(R.id.timeline));
    this.timeline.setAdapter(this.adapter);
    SliderView localSliderView = (SliderView)findViewById(R.id.settings_slider);
    localSliderView.setScrollView(this.timeline);
    localSliderView.setCount(this.adapter.getCount());
    onNewIntent(getIntent());
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    new SettingsHelper(this).goToSettingsCover();
    return super.onDismiss(paramDismissAction);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    int i = new SettingsHelper(this).indexFromIntent(getIntent());
    Log.d(getTag(), "Going to index: " + i);
    this.timeline.setSelection(i, true);
  }

  protected int provideContentView()
  {
    return R.layout.settings_timeline_activity;
  }

  protected boolean shouldScreenOffFinish()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.SettingsTimelineActivity
 * JD-Core Version:    0.6.2
 */
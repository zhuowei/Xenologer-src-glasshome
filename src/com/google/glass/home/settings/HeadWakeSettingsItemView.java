package com.google.glass.home.settings;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import com.google.glass.app.GlassApplication;
import com.google.glass.home.R.color;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.menu;
import com.google.glass.home.R.string;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.Listener;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.OptionMenu.ItemState;
import com.google.glass.widget.TypophileTextView;

public class HeadWakeSettingsItemView extends SettingsItemView
{
  private static final String TAG = HeadWakeSettingsItemView.class.getSimpleName();
  private TypophileTextView angleTextLabelView;
  private TypophileTextView angleTextView;
  private SoundManager soundManager;
  private MessageDialog.Listener turnOffListener = new HeadWakeStateChangeListener(false);
  private MessageDialog.Listener turnOnListener = new HeadWakeStateChangeListener(true);
  private HeadWakePosableHeadViewGroup wakeAngleImageView;

  public HeadWakeSettingsItemView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public HeadWakeSettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public HeadWakeSettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(getContext()).inflate(R.layout.head_wake_settings_item, this);
    this.soundManager = GlassApplication.from(paramContext).getSoundManager();
    cacheAngleOutputViews();
  }

  private void cacheAngleOutputViews()
  {
    this.angleTextLabelView = ((TypophileTextView)findViewById(R.id.head_wake_angle_label_text));
    this.angleTextView = ((TypophileTextView)findViewById(R.id.head_wake_angle_setting_text));
    this.wakeAngleImageView = ((HeadWakePosableHeadViewGroup)findViewById(R.id.head_wake_main_icon));
  }

  private float getWakeAngleDegs()
  {
    return HeadWakeAngleChooserActivity.getHeadWakeAngleDegs(getContext());
  }

  private boolean isHeadWakeEnabled()
  {
    return HiddenApiHelper.isGlobalLookUpGestureEnabled(getContext());
  }

  private void onSetTriggerAngle()
  {
    Log.i(TAG, "Switching to activity for setting the trigger angle!");
    getContext().startActivity(new Intent(getContext(), HeadWakeAngleChooserActivity.class));
  }

  private void onTurnOffHeadWake()
  {
    Log.d(TAG, "Menu head wake turn off state is selected.");
    showDialog(new MessageDialog.Builder(getContext()).setTemporaryMessage(R.string.head_wake_turning_off).setTemporaryIcon(R.drawable.ic_power_medium).setMessage(R.string.head_wake_turned_off).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, this.soundManager).setListener(this.turnOffListener).build());
  }

  private void onTurnOnHeadWake()
  {
    Log.d(TAG, "Menu head wake turn on state is selected.");
    showDialog(new MessageDialog.Builder(getContext()).setTemporaryMessage(R.string.head_wake_turning_on).setTemporaryIcon(R.drawable.ic_power_medium).setMessage(R.string.head_wake_turned_on).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, this.soundManager).setListener(this.turnOnListener).build());
  }

  static void setHeadWakeEnabledPersistent(Context paramContext, boolean paramBoolean)
  {
    Log.i(TAG, "Setting head wake in the native service to: " + paramBoolean + " ...");
    HiddenApiHelper.setGlobalLookUpEnabled(paramContext, paramBoolean);
    Log.i(TAG, "... done setting head wake native service!");
    if (paramBoolean);
    for (UserEventAction localUserEventAction = UserEventAction.HEAD_GESTURES_HEAD_WAKE_ENABLED; ; localUserEventAction = UserEventAction.HEAD_GESTURES_HEAD_WAKE_DISABLED)
    {
      GlassApplication.from(paramContext).getUserEventHelper().log(localUserEventAction);
      return;
    }
  }

  private void setWakeAngleDegs(float paramFloat)
  {
    if (this.angleTextView != null)
    {
      int i = (int)(0.5F + paramFloat);
      Resources localResources = getResources();
      TypophileTextView localTypophileTextView = this.angleTextView;
      String str = localResources.getString(R.string.head_wake_angle_text_format);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      localTypophileTextView.setText(String.format(str, arrayOfObject));
    }
    if (this.wakeAngleImageView != null)
      this.wakeAngleImageView.setHeadAngleDegs(paramFloat);
  }

  private void updateHeadWakeEnableState()
  {
    boolean bool = isHeadWakeEnabled();
    Log.v(TAG, "Head wake enabled=" + bool);
    updateHeadWakeEnableStatusText(bool);
    if (this.wakeAngleImageView != null)
      this.wakeAngleImageView.setHeadWakeEnabled(bool);
    TypophileTextView localTypophileTextView1 = this.angleTextLabelView;
    int i;
    TypophileTextView localTypophileTextView2;
    int j;
    if (bool)
    {
      i = 0;
      localTypophileTextView1.setVisibility(i);
      localTypophileTextView2 = this.angleTextView;
      j = 0;
      if (!bool)
        break label98;
    }
    while (true)
    {
      localTypophileTextView2.setVisibility(j);
      return;
      i = 8;
      break;
      label98: j = 8;
    }
  }

  private void updateHeadWakeEnableStatusText(boolean paramBoolean)
  {
    TypophileTextView localTypophileTextView = (TypophileTextView)findViewById(R.id.head_wake_enable_state);
    Resources localResources = getResources();
    if (paramBoolean)
    {
      localTypophileTextView.setText(getContext().getString(R.string.head_wake_on_status));
      localTypophileTextView.setTextColor(localResources.getColor(R.color.state_green));
      return;
    }
    localTypophileTextView.setText(getContext().getString(R.string.head_wake_off_status));
    localTypophileTextView.setTextColor(localResources.getColor(R.color.state_red));
  }

  private void updateMenuEnabledState(OptionMenu paramOptionMenu)
  {
    if (isHeadWakeEnabled());
    for (int i = R.id.head_wake_turn_off_state; ; i = R.id.head_wake_turn_on_state)
    {
      OptionMenu.Item localItem = paramOptionMenu.findItem(R.id.head_wake_enable_menu_item);
      if (localItem != null)
        localItem.setCurrentState(i);
      return;
    }
  }

  private void updateWakeAngleOutputState()
  {
    setWakeAngleDegs(getWakeAngleDegs());
  }

  public void onLoad()
  {
    updateHeadWakeEnableState();
    updateWakeAngleOutputState();
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    int i = paramItem.getItemId();
    int j;
    if (i == R.id.head_wake_enable_menu_item)
      if (paramItem.getCurrentState().getId() == R.id.head_wake_turn_off_state)
      {
        onTurnOffHeadWake();
        j = 1;
      }
    while (true)
    {
      if (j == 0)
        break label92;
      return true;
      if (paramItem.getCurrentState().getId() != R.id.head_wake_turn_on_state)
        break;
      onTurnOnHeadWake();
      break;
      if (i == R.id.head_wake_set_trigger_angle)
      {
        onSetTriggerAngle();
        j = 1;
      }
      else
      {
        Log.e(TAG, "Unknown menu item is tapped!");
        j = 0;
      }
    }
    label92: return super.onOptionsItemSelected(paramItem);
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    paramOptionMenu.inflateFrom(R.menu.head_wake_settings_menu);
    updateMenuEnabledState(paramOptionMenu);
    return true;
  }

  private class HeadWakeStateChangeListener extends MessageDialog.SimpleListener
  {
    final boolean enableState;

    public HeadWakeStateChangeListener(boolean arg2)
    {
      boolean bool;
      this.enableState = bool;
    }

    private String getStateString()
    {
      if (this.enableState)
        return "on";
      return "off";
    }

    public void onDismissed()
    {
      Log.d(HeadWakeSettingsItemView.TAG, "Turn " + getStateString() + " head wake cancelled");
    }

    public void onDone()
    {
      Log.d(HeadWakeSettingsItemView.TAG, "Turn " + getStateString() + " head wake confirmed");
      HeadWakeSettingsItemView.setHeadWakeEnabledPersistent(HeadWakeSettingsItemView.this.getContext(), this.enableState);
      HeadWakeSettingsItemView.this.updateHeadWakeEnableState();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.HeadWakeSettingsItemView
 * JD-Core Version:    0.6.2
 */
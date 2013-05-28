package com.google.glass.home.settings;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.google.glass.app.GlassApplication;
import com.google.glass.home.DonStateReceiver;
import com.google.glass.home.R.color;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.menu;
import com.google.glass.home.R.string;
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

public class DonDoffSettingsItemView extends SettingsItemView
{
  private static final String TAG = DonDoffSettingsItemView.class.getSimpleName();
  private SoundManager soundManager;
  private MessageDialog.Listener turnOffListener = new DonDoffStateChangeListener(false);

  public DonDoffSettingsItemView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public DonDoffSettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public DonDoffSettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(getContext()).inflate(R.layout.don_doff_settings_item, this);
    this.soundManager = GlassApplication.from(paramContext).getSoundManager();
  }

  private boolean isDonDoffDetectionEnabled()
  {
    return HiddenApiHelper.isDonDoffDetectorEnabled(getContext());
  }

  private void onCalibrateDonDoff()
  {
    Log.i(TAG, "Starting the DonDoffCalibrationActivity...");
    getContext().startActivity(new Intent(getContext(), DonDoffCalibrationActivity.class));
  }

  private void onTurnOffDonDoffDetection()
  {
    Log.d(TAG, "Menu don detection turn off state is selected.");
    showDialog(new MessageDialog.Builder(getContext()).setTemporaryMessage(R.string.don_doff_turning_off).setTemporaryIcon(R.drawable.ic_power_medium).setMessage(R.string.don_doff_turned_off).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, this.soundManager).setListener(this.turnOffListener).build());
  }

  static boolean setDonDoffDetectionEnabled(Context paramContext, boolean paramBoolean)
  {
    Log.i(TAG, "Setting don detector in the native service to: " + paramBoolean + " ...");
    boolean bool = HiddenApiHelper.enableDonDoff(paramContext, paramBoolean);
    Log.i(TAG, "... done setting don detector native service!");
    if (bool)
      DonStateReceiver.logDonDetectorStateUserEvent(paramContext);
    return bool;
  }

  private void showErrorDialog(int paramInt)
  {
    showDialog(new MessageDialog.Builder(getContext()).setMessage(paramInt).setIcon(R.drawable.ic_warning_large).setSound(SoundManager.SoundId.ERROR, this.soundManager).setExpanded(true).setAutoHide(false).setHandleConfirm(false).setListener(new MessageDialog.SimpleListener()
    {
    }).build());
  }

  private boolean updateDonDoffEnableIconState()
  {
    ImageView localImageView = (ImageView)findViewById(R.id.don_doff_main_icon);
    boolean bool = isDonDoffDetectionEnabled();
    if (bool)
    {
      localImageView.setImageResource(R.drawable.ic_on_head_on_160);
      return bool;
    }
    localImageView.setImageResource(R.drawable.ic_on_head_off_160);
    return bool;
  }

  private boolean updateDonDoffEnableStatusText()
  {
    TypophileTextView localTypophileTextView = (TypophileTextView)findViewById(R.id.don_doff_enable_state);
    boolean bool = isDonDoffDetectionEnabled();
    Log.d(TAG, "donDetectionEnabled: " + bool);
    Resources localResources = getResources();
    if (bool)
    {
      localTypophileTextView.setText(getContext().getString(R.string.don_doff_on_status));
      localTypophileTextView.setTextColor(localResources.getColor(R.color.state_green));
      return bool;
    }
    localTypophileTextView.setText(getContext().getString(R.string.don_doff_off_status));
    localTypophileTextView.setTextColor(localResources.getColor(R.color.state_red));
    return bool;
  }

  private void updateMenuEnabledState(OptionMenu paramOptionMenu)
  {
    if (isDonDoffDetectionEnabled());
    for (int i = R.id.don_doff_turn_off_state; ; i = R.id.don_doff_calibrate_state)
    {
      OptionMenu.Item localItem = paramOptionMenu.findItem(R.id.don_doff_enable_menu_item);
      if (localItem != null)
        localItem.setCurrentState(i);
      return;
    }
  }

  public void onLoad()
  {
    updateDonDoffEnableStatusText();
    updateDonDoffEnableIconState();
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    if (paramItem.getItemId() == R.id.don_doff_enable_menu_item)
    {
      if (paramItem.getCurrentState().getId() == R.id.don_doff_turn_off_state)
        onTurnOffDonDoffDetection();
      while (true)
      {
        return true;
        if (paramItem.getCurrentState().getId() == R.id.don_doff_calibrate_state)
          onCalibrateDonDoff();
      }
    }
    Log.e(TAG, "Unknown menu item is tapped!");
    return super.onOptionsItemSelected(paramItem);
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    paramOptionMenu.inflateFrom(R.menu.don_doff_settings_menu);
    updateMenuEnabledState(paramOptionMenu);
    return true;
  }

  private class DonDoffStateChangeListener extends MessageDialog.SimpleListener
  {
    final boolean enableState;

    public DonDoffStateChangeListener(boolean arg2)
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
      Log.d(DonDoffSettingsItemView.TAG, "Turn " + getStateString() + " don detection cancelled");
    }

    public void onDone()
    {
      Log.d(DonDoffSettingsItemView.TAG, "Turn " + getStateString() + " don detection confirmed");
      int i = 1;
      if (!DonDoffSettingsItemView.setDonDoffDetectionEnabled(DonDoffSettingsItemView.this.getContext(), this.enableState))
      {
        Log.e(DonDoffSettingsItemView.TAG, "Fail to set don/doff detection status to " + this.enableState);
        i = 0;
      }
      DonDoffSettingsItemView.this.updateDonDoffEnableStatusText();
      DonDoffSettingsItemView.this.updateDonDoffEnableIconState();
      if (i == 0)
        DonDoffSettingsItemView.this.showErrorDialog(R.string.don_doff_toggle_failure);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.DonDoffSettingsItemView
 * JD-Core Version:    0.6.2
 */
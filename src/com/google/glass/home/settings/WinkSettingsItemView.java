package com.google.glass.home.settings;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.ImageView;
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
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.TypophileTextView;

public class WinkSettingsItemView extends SettingsItemView
{
  private static final String TAG = WinkSettingsItemView.class.getSimpleName();
  private SoundManager soundManager;

  public WinkSettingsItemView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public WinkSettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public WinkSettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(getContext()).inflate(R.layout.wink_settings_item, this);
    this.soundManager = GlassApplication.from(paramContext).getSoundManager();
  }

  private boolean isWinkDetectionEnabled()
  {
    return HiddenApiHelper.isWinkDetectorRunning(getContext());
  }

  private void logWinkDetectionState()
  {
    boolean bool = isWinkDetectionEnabled();
    UserEventHelper localUserEventHelper = GlassApplication.from(getContext()).getUserEventHelper();
    if (bool)
    {
      localUserEventHelper.log(UserEventAction.EYE_GESTURES_WINK_ENABLED);
      return;
    }
    localUserEventHelper.log(UserEventAction.EYE_GESTURES_WINK_DISABLED);
  }

  private void onHelp()
  {
    Log.d(TAG, "Menu help is seleted.");
    getContext().startActivity(new Intent("com.google.glass.action.ACTION_WINK_CALIBRATION_TIPS"));
  }

  private void onSetUpWinkDetection()
  {
    Log.d(TAG, "Menu set up wink is seleted.");
    getContext().startActivity(new Intent("com.google.glass.action.ACTION_WINK_CALIBRATION"));
  }

  private void onTurnOffWinkDetection()
  {
    Log.d(TAG, "Menu wink detection turn off state is selected.");
    showDialog(new MessageDialog.Builder(getContext()).setTemporaryMessage(R.string.wink_turning_off).setTemporaryIcon(R.drawable.ic_power_medium).setMessage(R.string.wink_turned_off).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, this.soundManager).setListener(new MessageDialog.SimpleListener()
    {
      public void onDismissed()
      {
        Log.d(WinkSettingsItemView.TAG, "Turn off wink detection cancelled");
      }

      public void onDone()
      {
        Log.d(WinkSettingsItemView.TAG, "Turn off wink detection confirmed");
        if (!WinkSettingsItemView.this.setWinkDetectionEnabled(false))
        {
          Log.e(WinkSettingsItemView.TAG, "Failed to turn off wink detection.");
          WinkSettingsItemView.this.showErrorDialog(R.string.wink_toggle_failure);
        }
        WinkSettingsItemView.this.updateWinkEnableStatusUI();
      }
    }).build());
  }

  private boolean setWinkDetectionEnabled(boolean paramBoolean)
  {
    Log.i(TAG, "Setting wink detector in the native service to: " + paramBoolean + " ...");
    boolean bool = HiddenApiHelper.enableWinkDetector(getContext(), paramBoolean);
    Log.i(TAG, "... done setting wink detector native service!");
    logWinkDetectionState();
    return bool;
  }

  private void showErrorDialog(int paramInt)
  {
    showDialog(new MessageDialog.Builder(getContext()).setMessage(paramInt).setIcon(R.drawable.ic_warning_large).setSound(SoundManager.SoundId.ERROR, this.soundManager).setExpanded(true).setAutoHide(false).setHandleConfirm(false).setListener(new MessageDialog.SimpleListener()
    {
    }).build());
  }

  private boolean updateWinkEnableStatusUI()
  {
    TypophileTextView localTypophileTextView = (TypophileTextView)findViewById(R.id.wink_enable_state);
    ImageView localImageView = (ImageView)findViewById(R.id.wink_icon);
    boolean bool = isWinkDetectionEnabled();
    Log.d(TAG, "winkDetectionEnabled: " + bool);
    Resources localResources = getResources();
    if (bool)
    {
      localTypophileTextView.setText(getContext().getString(R.string.wink_on_status));
      localTypophileTextView.setTextColor(localResources.getColor(R.color.state_green));
      localImageView.setImageResource(R.drawable.ic_wink_for_photo_on_big);
      return bool;
    }
    localTypophileTextView.setText(getContext().getString(R.string.wink_off_status));
    localTypophileTextView.setTextColor(localResources.getColor(R.color.state_red));
    localImageView.setImageResource(R.drawable.ic_wink_for_photo_off_big);
    return bool;
  }

  public void onLoad()
  {
    updateWinkEnableStatusUI();
    getContext().sendBroadcast(new Intent("com.google.glass.gesture.action.PRELOAD_RESOURCES"));
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    int i = paramItem.getItemId();
    if (i == R.id.wink_setup)
    {
      onSetUpWinkDetection();
      return true;
    }
    if (i == R.id.wink_turn_off)
    {
      onTurnOffWinkDetection();
      return true;
    }
    if (i == R.id.wink_help)
    {
      onHelp();
      return true;
    }
    Log.e(TAG, "Unknown menu item is tapped!");
    return super.onOptionsItemSelected(paramItem);
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    paramOptionMenu.inflateFrom(R.menu.wink_settings_menu);
    OptionMenu.Item localItem = paramOptionMenu.findItem(R.id.wink_turn_off);
    if (localItem == null)
    {
      Log.e(TAG, "Menu item for turning off wink is null.");
      return true;
    }
    boolean bool = isWinkDetectionEnabled();
    localItem.setVisible(bool);
    String str1 = TAG;
    StringBuilder localStringBuilder = new StringBuilder().append("Wink is enabled, ");
    if (bool);
    for (String str2 = "show"; ; str2 = "hide")
    {
      Log.d(str1, str2 + " turn off menu item.");
      break;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.WinkSettingsItemView
 * JD-Core Version:    0.6.2
 */
package com.google.glass.home.settings;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.google.glass.app.GlassApplication;
import com.google.glass.gesture.EyeGestureUtils;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.menu;
import com.google.glass.home.R.string;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.SettingsHelper;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.TypophileTextView;

public class GuestSettingsItemView extends SettingsItemView
{
  private static final String TAG = GuestSettingsItemView.class.getSimpleName();
  private final TypophileTextView disabledText;
  private final TypophileTextView enabledText;
  private final ImageView icon;
  private boolean isGuestModeEnabled;
  private final SoundManager soundManager;
  private final MessageDialog.SimpleListener toggleGuestModeListener = new MessageDialog.SimpleListener()
  {
    public boolean onConfirmed()
    {
      GuestSettingsItemView.this.toggleGuestMode();
      return true;
    }

    public void onDone()
    {
      GuestSettingsItemView.this.toggleGuestMode();
    }
  };

  public GuestSettingsItemView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public GuestSettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public GuestSettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.soundManager = GlassApplication.from(paramContext).getSoundManager();
    LayoutInflater.from(paramContext).inflate(R.layout.guest_settings_item, this);
    this.icon = ((ImageView)findViewById(R.id.icon));
    this.enabledText = ((TypophileTextView)findViewById(R.id.enabled));
    this.disabledText = ((TypophileTextView)findViewById(R.id.disabled));
  }

  private void disableGuestMode(Intent paramIntent)
  {
    Log.d(TAG, "Disabling guest mode ...");
    paramIntent.putExtra("com.google.glass.EXTRA_GUEST_MODE_ENABLED", false);
    new UserEventHelper(getContext()).log(UserEventAction.GUEST_MODE_TURNED_OFF);
    onGuestModeDisabled();
    EyeGestureUtils.enableGazeServiceGuestModeAsync(getContext(), false);
  }

  private void enableGuestMode(Intent paramIntent)
  {
    Log.d(TAG, "Enabling guest mode ...");
    paramIntent.putExtra("com.google.glass.EXTRA_GUEST_MODE_ENABLED", true);
    new UserEventHelper(getContext()).log(UserEventAction.GUEST_MODE_TURNED_ON);
    onGuestModeEnabled();
    EyeGestureUtils.enableGazeServiceGuestModeAsync(getContext(), true);
  }

  private void onGuestModeDisabled()
  {
    this.icon.setImageResource(R.drawable.guest_mode_off);
    this.enabledText.setVisibility(4);
    this.disabledText.setVisibility(0);
  }

  private void onGuestModeEnabled()
  {
    this.icon.setImageResource(R.drawable.guest_mode_on);
    this.enabledText.setVisibility(0);
    this.disabledText.setVisibility(4);
  }

  private void showToggleTimer()
  {
    int i;
    if (this.isGuestModeEnabled)
      i = R.string.guest_settings_turning_off;
    for (int j = R.string.guest_settings_turned_off; ; j = R.string.guest_settings_turned_on)
    {
      showDialog(new MessageDialog.Builder(getContext()).setTemporaryMessage(i).setTemporaryIcon(R.drawable.ic_power_medium).setMessage(j).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, this.soundManager).setListener(this.toggleGuestModeListener).build());
      return;
      i = R.string.guest_settings_turning_on;
    }
  }

  private void toggleGuestMode()
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_GUEST_MODE");
    if (this.isGuestModeEnabled)
      disableGuestMode(localIntent);
    while (true)
    {
      localIntent.putExtra("com.google.glass.EXTRA_GUEST_MODE_TOGGLE_TIME", System.currentTimeMillis());
      getContext().sendStickyBroadcast(localIntent);
      TimelineHelper.goToTimelineHome(getContext());
      return;
      enableGuestMode(localIntent);
    }
  }

  private void updateMenuEnabledState(OptionMenu paramOptionMenu)
  {
    if (this.isGuestModeEnabled);
    for (int i = R.id.guest_mode_disable_state; ; i = R.id.guest_mode_start_state)
    {
      OptionMenu.Item localItem = paramOptionMenu.findItem(R.id.guest_mode_menu_item);
      if (localItem != null)
        localItem.setCurrentState(i);
      return;
    }
  }

  public void onLoad()
  {
    super.onLoad();
    this.isGuestModeEnabled = new SettingsHelper(getContext()).isGuestModeEnabled();
    if (this.isGuestModeEnabled)
    {
      onGuestModeEnabled();
      return;
    }
    onGuestModeDisabled();
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    if (paramItem.getItemId() == R.id.guest_mode_menu_item)
    {
      showToggleTimer();
      return true;
    }
    return super.onOptionsItemSelected(paramItem);
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    paramOptionMenu.inflateFrom(R.menu.guest_mode_settings_menu);
    updateMenuEnabledState(paramOptionMenu);
    return true;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.GuestSettingsItemView
 * JD-Core Version:    0.6.2
 */
package com.google.glass.home.settings;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassApplication;
import com.google.glass.hidden.HiddenSystemProperties;
import com.google.glass.home.R.color;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.OtaUpdateHelper;
import com.google.glass.util.StorageHelper;
import com.google.glass.util.StorageHelper.State;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.TypophileTextView;

public class DeviceInfoSettingsItemView extends SettingsItemView
{

  @VisibleForTesting
  static final int MENU_ID_ADB = 4;

  @VisibleForTesting
  static final int MENU_ID_DEBUG = 1;

  @VisibleForTesting
  static final int MENU_ID_LICENSES = 2;

  @VisibleForTesting
  static final int MENU_ID_RESET = 3;

  @VisibleForTesting
  static final int MENU_ID_UPDATE;
  private static final String TAG = DeviceInfoSettingsItemView.class.getSimpleName();
  private BatteryHelper battery;
  private SharedPreferences.OnSharedPreferenceChangeListener prefListener = new SharedPreferences.OnSharedPreferenceChangeListener()
  {
    public void onSharedPreferenceChanged(SharedPreferences paramAnonymousSharedPreferences, String paramAnonymousString)
    {
      DeviceInfoSettingsItemView.this.update();
    }
  };
  private TypophileTextView serialText;
  private TypophileTextView storageText;
  private TypophileTextView updateText;

  public DeviceInfoSettingsItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public DeviceInfoSettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public DeviceInfoSettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.device_info_settings_item, this);
    this.updateText = ((TypophileTextView)findViewById(R.id.update_state));
    this.serialText = ((TypophileTextView)findViewById(R.id.serial));
    this.storageText = ((TypophileTextView)findViewById(R.id.storage_state));
    this.battery = new BatteryHelper(paramContext);
  }

  private boolean isAdbEnabled()
  {
    int i = Settings.Secure.getInt(getContext().getContentResolver(), "adb_enabled", 0);
    boolean bool = false;
    if (i != 0)
      bool = true;
    return bool;
  }

  private void setAdbEnabled(boolean paramBoolean)
  {
    ContentResolver localContentResolver = getContext().getContentResolver();
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      Settings.Secure.putInt(localContentResolver, "adb_enabled", i);
      return;
    }
  }

  private void toggleAdbEnable()
  {
    boolean bool;
    MessageDialog.Builder localBuilder;
    if (!isAdbEnabled())
    {
      bool = true;
      Log.d(TAG, "Toggling ADB enable to " + bool);
      setAdbEnabled(bool);
      localBuilder = new MessageDialog.Builder(getContext());
      if (!bool)
        break label101;
    }
    label101: for (int i = R.string.deviceinfo_adb_debug_on; ; i = R.string.deviceinfo_adb_debug_off)
    {
      localBuilder.setMessage(i).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, GlassApplication.from(getContext()).getSoundManager()).build().show();
      return;
      bool = false;
      break;
    }
  }

  private void update()
  {
    Context localContext = getContext();
    Resources localResources = localContext.getResources();
    int i = localResources.getColor(R.color.state_green);
    int j = localResources.getColor(R.color.state_yellow);
    int k = localResources.getColor(R.color.state_red);
    int m = localResources.getColor(R.color.text_gray);
    String str1 = HiddenSystemProperties.get("ro.serialno.glass", localContext.getString(R.string.deviceinfo_unknown));
    this.serialText.setText(localContext.getString(R.string.deviceinfo_serial, new Object[] { str1 }));
    String str2 = OtaUpdateHelper.getUpdateName(localContext);
    StorageHelper localStorageHelper;
    int n;
    int i1;
    if (TextUtils.isEmpty(str2))
    {
      String str4 = HiddenSystemProperties.get("ro.build.version.glass", localContext.getString(R.string.deviceinfo_unknown));
      this.updateText.setText(localContext.getString(R.string.deviceinfo_version_up_to_date, new Object[] { str4 }));
      this.updateText.setTextColor(i);
      localStorageHelper = new StorageHelper(localContext);
      n = 1;
      i1 = k;
      StorageHelper.State localState = localStorageHelper.getExternalStorageState();
      Log.d(TAG, "External storage state: " + localState);
      switch (2.$SwitchMap$com$google$glass$util$StorageHelper$State[localState.ordinal()])
      {
      default:
        n = 0;
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    while (true)
    {
      if (n == 0)
        break label352;
      int i2 = R.string.deviceinfo_storage_space;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localStorageHelper.getHumanReadableByteCount();
      String str3 = localContext.getString(i2, arrayOfObject);
      this.storageText.setText(str3);
      this.storageText.setTextColor(i1);
      this.storageText.setVisibility(0);
      return;
      this.updateText.setText(localContext.getString(R.string.deviceinfo_version_update_available, new Object[] { str2 }));
      this.updateText.setTextColor(m);
      break;
      i1 = i;
      continue;
      i1 = j;
      continue;
      i1 = k;
    }
    label352: this.storageText.setVisibility(8);
  }

  public void onLoad()
  {
    update();
    OtaUpdateHelper.addCheckinListener(getContext(), this.prefListener);
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    Context localContext = getContext();
    switch (paramItem.getItemId())
    {
    default:
      return super.onOptionsItemSelected(paramItem);
    case 0:
      OtaUpdateHelper.installUpdate(localContext);
      return true;
    case 1:
      Intent localIntent = new Intent();
      localIntent.setClassName("com.android.launcher", "com.android.launcher2.Launcher");
      localContext.startActivity(localIntent);
      return true;
    case 2:
      localContext.startActivity(new Intent(getContext(), ViewLicensesActivity.class));
      return true;
    case 3:
      localContext.startActivity(new Intent(getContext(), FactoryResetActivity.class));
      return true;
    case 4:
    }
    toggleAdbEnable();
    return true;
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    Context localContext = getContext();
    paramOptionMenu.addItem(0, localContext.getString(R.string.deviceinfo_install_update), R.drawable.ic_sync_medium);
    paramOptionMenu.addItem(1, localContext.getString(R.string.deviceinfo_debug_launcher), R.drawable.ic_warning_medium);
    paramOptionMenu.addItem(2, localContext.getString(R.string.deviceinfo_menu_licenses), R.drawable.ic_document_medium);
    int i;
    if (isAdbEnabled())
    {
      i = R.string.deviceinfo_menu_adb_turn_off;
      paramOptionMenu.addItem(4, localContext.getString(i), R.drawable.ic_android_medium);
      paramOptionMenu.addItem(3, localContext.getString(R.string.deviceinfo_menu_reset), R.drawable.ic_reset_medium);
      if ((!OtaUpdateHelper.isUpdateAvailable(localContext)) || (!this.battery.isPowered()))
        break label146;
    }
    label146: for (boolean bool1 = true; ; bool1 = false)
    {
      paramOptionMenu.findItem(0).setVisible(bool1);
      boolean bool2 = Labs.isEnabled(Labs.Feature.DEBUG_LAUNCHER);
      paramOptionMenu.findItem(1).setVisible(bool2);
      return true;
      i = R.string.deviceinfo_menu_adb_turn_on;
      break;
    }
  }

  public void onUnload()
  {
    super.onUnload();
    OtaUpdateHelper.removeCheckinListener(getContext(), this.prefListener);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.DeviceInfoSettingsItemView
 * JD-Core Version:    0.6.2
 */
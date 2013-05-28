package com.google.glass.home.timeline.active;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.bluetooth.BluetoothTetheringState;
import com.google.glass.bluetooth.BluetoothTetheringState.Listener;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.color;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.home.companion.CompanionState;
import com.google.glass.home.settings.BatteryStateImageView;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.BatteryHelper.BatteryState;
import com.google.glass.util.BluetoothHelper;
import com.google.glass.util.InetConnectionState;
import com.google.glass.util.InetConnectionState.Listener;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.SettingsHelper;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import java.util.concurrent.Executor;

public class SettingsCoverView extends LinearLayout
  implements HorizontalScrollItem
{
  private static final String[] ACTIONS_TO_REGISTER_RECEIVER_FOR = { "android.net.wifi.STATE_CHANGE", "android.net.wifi.RSSI_CHANGED", "android.net.conn.CONNECTIVITY_CHANGE", "android.bluetooth.adapter.action.STATE_CHANGED", "android.bluetooth.adapter.action.SCAN_MODE_CHANGED", "android.bluetooth.device.action.BOND_STATE_CHANGED", "com.google.glass.action.HEADSET_STATE", "android.intent.action.BATTERY_CHANGED", "android.intent.action.ACTION_POWER_CONNECTED", "android.intent.action.ACTION_POWER_DISCONNECTED" };
  private static final String TAG = SettingsCoverView.class.getSimpleName();
  private final BatteryHelper battery;
  private final InetConnectionState.Listener connectivityListener = new InetConnectionState.Listener()
  {
    public void onConnectivityChanged(boolean paramAnonymousBoolean)
    {
      SettingsCoverView.this.updateConnectivity();
    }
  };
  private final int green;
  private final InetConnectionState inetState;
  private boolean isHeadset;
  private boolean isTethered;
  private final int red;
  private SafeBroadcastReceiver stateReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return SettingsCoverView.TAG + "/stateReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      int i = 1;
      String str = paramAnonymousIntent.getAction();
      if (("android.intent.action.BATTERY_CHANGED".equals(str)) || ("android.intent.action.ACTION_POWER_CONNECTED".equals(str)) || ("android.intent.action.ACTION_POWER_DISCONNECTED".equals(str)))
      {
        SettingsCoverView.this.updateBattery();
        return;
      }
      SettingsCoverView localSettingsCoverView;
      if ("com.google.glass.action.HEADSET_STATE".equals(str))
      {
        int j = paramAnonymousIntent.getIntExtra("com.google.glass.extra.STATE", 0);
        localSettingsCoverView = SettingsCoverView.this;
        if (j != i)
          break label92;
      }
      while (true)
      {
        SettingsCoverView.access$302(localSettingsCoverView, i);
        SettingsCoverView.this.updateConnectivity();
        return;
        label92: i = 0;
      }
    }
  };
  private final BluetoothTetheringState tetheringState;
  private final BluetoothTetheringState.Listener tetheringStateChangeListener = new BluetoothTetheringState.Listener()
  {
    public void onBluetoothTetheringStateChanged(int paramAnonymousInt)
    {
      SettingsCoverView localSettingsCoverView = SettingsCoverView.this;
      if (2 == paramAnonymousInt);
      for (boolean bool = true; ; bool = false)
      {
        SettingsCoverView.access$102(localSettingsCoverView, bool);
        SettingsCoverView.this.updateConnectivity();
        return;
      }
    }
  };
  private final int yellow;

  public SettingsCoverView(Context paramContext)
  {
    this(paramContext, null);
  }

  public SettingsCoverView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SettingsCoverView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = getContext().getResources();
    this.green = localResources.getColor(R.color.state_green);
    this.red = localResources.getColor(R.color.state_red);
    this.yellow = localResources.getColor(R.color.state_yellow);
    this.battery = new BatteryHelper(paramContext);
    this.tetheringState = new BluetoothTetheringState(paramContext);
    this.inetState = GlassApplication.from(paramContext).getConnectionState();
    LayoutInflater.from(getContext()).inflate(R.layout.settings_cover_view, this);
  }

  private void updateAll()
  {
    updateBattery();
    updateConnectivity();
  }

  private void updateBattery()
  {
    BatteryHelper.BatteryState localBatteryState = this.battery.getCurrentState();
    ((BatteryStateImageView)findViewById(R.id.battery_state_image)).update(localBatteryState);
    TextView localTextView = (TextView)findViewById(R.id.battery_state_text);
    int i = Math.round(localBatteryState.percent);
    if (localBatteryState.isCharged)
    {
      localTextView.setText(R.string.settings_cover_battery_charged);
      localTextView.setTextColor(this.green);
      return;
    }
    int j;
    int k;
    if ((localBatteryState.isCharging) || (localBatteryState.isPowered))
    {
      j = R.string.settings_cover_battery_percent_charging;
      Context localContext = getContext();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = String.valueOf(i);
      localTextView.setText(localContext.getString(j, arrayOfObject));
      if (i <= 30)
        break label143;
      k = this.green;
    }
    while (true)
    {
      localTextView.setTextColor(k);
      return;
      j = R.string.settings_cover_battery_percent;
      break;
      label143: if (i > 10)
        k = this.yellow;
      else
        k = this.red;
    }
  }

  private void updateConnectivity()
  {
    Context localContext = getContext();
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getContext().getSystemService("connectivity")).getNetworkInfo(1);
    ImageView localImageView = (ImageView)findViewById(R.id.data_connection_image);
    int i;
    String str;
    TextView localTextView1;
    TextView localTextView2;
    int j;
    int k;
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
    {
      i = R.drawable.ic_data_wifi_big;
      str = localContext.getString(R.string.wifi);
      localImageView.setImageResource(i);
      localTextView1 = (TextView)findViewById(R.id.data_connection_text);
      localTextView2 = (TextView)findViewById(R.id.extra_info);
      localTextView2.setVisibility(8);
      if (str == null)
        break label225;
      if (!this.inetState.isConnected())
        break label211;
      j = R.string.settings_cover_connection_data;
      k = this.green;
      label135: localTextView1.setText(localContext.getString(j, new Object[] { str }));
      localTextView1.setTextColor(k);
    }
    label211: label225: CompanionState localCompanionState;
    do
    {
      return;
      if ((BluetoothHelper.getSinglyPairedDevice() != null) && ((this.isTethered) || (this.isHeadset)))
      {
        i = R.drawable.ic_data_bt_big;
        str = localContext.getString(R.string.bluetooth);
        break;
      }
      i = R.drawable.ic_data_off_big;
      str = null;
      break;
      j = R.string.settings_cover_connection_issue;
      k = this.yellow;
      break label135;
      localTextView1.setText(R.string.settings_cover_connection_no_data);
      localTextView1.setTextColor(this.red);
      localCompanionState = HomeApplication.from(getContext()).getCompanionState();
    }
    while ((!localCompanionState.isConnected()) || (!localCompanionState.isTetheringErrorDetected()));
    localTextView2.setVisibility(0);
    localTextView2.setText(R.string.settings_cover_check_my_glass);
  }

  public TimelineItemId getBundleId()
  {
    return null;
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    new SettingsHelper(paramGlassActivity).goToSettings();
    return true;
  }

  public boolean onDoubleTap(GlassActivity paramGlassActivity)
  {
    return false;
  }

  public void onFocus()
  {
  }

  public void onLoad()
  {
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        SettingsCoverView.this.stateReceiver.register(SettingsCoverView.this.getContext(), SettingsCoverView.ACTIONS_TO_REGISTER_RECEIVER_FOR);
      }
    });
    this.inetState.addListener(this.connectivityListener);
    this.tetheringState.addListener(this.tetheringStateChangeListener);
    ((ImageView)getTag(R.id.tag_horizontal_scroll_card_sheen)).setImageDrawable(getResources().getDrawable(R.drawable.bundle_sheen));
    updateAll();
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    return false;
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    return false;
  }

  public void onSettled()
  {
  }

  public void onUnfocus()
  {
  }

  public void onUnload()
  {
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        SettingsCoverView.this.stateReceiver.unregister(SettingsCoverView.this.getContext());
      }
    });
    this.inetState.removeListener(this.connectivityListener);
    this.tetheringState.removeListener(this.tetheringStateChangeListener);
  }

  public void onUnsettled()
  {
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.SettingsCoverView
 * JD-Core Version:    0.6.2
 */
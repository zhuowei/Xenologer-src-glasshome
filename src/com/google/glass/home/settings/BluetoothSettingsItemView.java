package com.google.glass.home.settings;

import android.animation.ObjectAnimator;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.os.IBinder;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.google.glass.app.GlassApplication;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.bluetooth.BluetoothTetheringState;
import com.google.glass.bluetooth.BluetoothTetheringState.Listener;
import com.google.glass.companion.CompanionUtils;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.color;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.integer;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.home.companion.CompanionService;
import com.google.glass.home.companion.CompanionService.CompanionBinder;
import com.google.glass.home.companion.CompanionState;
import com.google.glass.util.BluetoothHelper;
import com.google.glass.util.InetConnectionState;
import com.google.glass.util.InetConnectionState.Listener;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.widget.TypophileTextView;

public class BluetoothSettingsItemView extends SettingsItemView
{
  private static final String[] ACTIONS_TO_REGISTER_RECEIVER_FOR = { "android.bluetooth.adapter.action.STATE_CHANGED", "android.bluetooth.adapter.action.SCAN_MODE_CHANGED", "android.bluetooth.device.action.BOND_STATE_CHANGED", "com.google.glass.action.HEADSET_STATE" };
  private static final String TAG = BluetoothSettingsItemView.class.getSimpleName();
  private final BluetoothAdapter btAdapter;
  private boolean companionConnected;
  private CompanionService companionService;
  private final SafeBroadcastReceiver companionStateChangeReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return BluetoothSettingsItemView.TAG + "/companionStateChangeReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      Log.d(BluetoothSettingsItemView.TAG, "Got action: " + paramAnonymousIntent.getAction());
      if ("com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE".equals(paramAnonymousIntent.getAction()))
      {
        BluetoothSettingsItemView.access$502(BluetoothSettingsItemView.this, paramAnonymousIntent.getBooleanExtra("com.google.glass.extra.STATE", false));
        BluetoothSettingsItemView.this.update();
      }
    }
  };
  private ObjectAnimator discoverableAnimator;
  private boolean headsetConnected;
  private final InetConnectionState.Listener inetListener = new InetConnectionState.Listener()
  {
    public void onConnectivityChanged(boolean paramAnonymousBoolean)
    {
      BluetoothSettingsItemView.this.update();
    }
  };
  private final InetConnectionState inetState;
  private final SafeBroadcastReceiver pairingReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return BluetoothSettingsItemView.TAG + "/pairingReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      int i = 1;
      Log.d(BluetoothSettingsItemView.TAG, "Got action: " + paramAnonymousIntent.getAction());
      BluetoothSettingsItemView localBluetoothSettingsItemView;
      if ("com.google.glass.action.HEADSET_STATE".equals(paramAnonymousIntent.getAction()))
      {
        int j = paramAnonymousIntent.getIntExtra("com.google.glass.extra.STATE", 0);
        localBluetoothSettingsItemView = BluetoothSettingsItemView.this;
        if (j != i)
          break label97;
      }
      while (true)
      {
        BluetoothSettingsItemView.access$402(localBluetoothSettingsItemView, i);
        BluetoothSettingsItemView.access$502(BluetoothSettingsItemView.this, HomeApplication.from(paramAnonymousContext).getCompanionState().isConnected());
        BluetoothSettingsItemView.this.update();
        return;
        label97: i = 0;
      }
    }
  };
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      Log.d(BluetoothSettingsItemView.TAG, "Connected to " + paramAnonymousComponentName.getShortClassName());
      if (paramAnonymousComponentName.getClassName().equals(CompanionService.class.getName()))
      {
        BluetoothSettingsItemView.access$102(BluetoothSettingsItemView.this, ((CompanionService.CompanionBinder)paramAnonymousIBinder).getService());
        Log.d(BluetoothSettingsItemView.TAG, "Companion protocol version, Glass=6, MyGlass=" + BluetoothSettingsItemView.this.companionService.getRemoteVersion());
        if (BluetoothSettingsItemView.this.companionService.getRemoteVersion() != -1);
      }
      else
      {
        return;
      }
      BluetoothSettingsItemView.this.update();
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      Log.d(BluetoothSettingsItemView.TAG, "Disconnected from " + paramAnonymousComponentName.getShortClassName());
      if (paramAnonymousComponentName.getClassName().equals(CompanionService.class.getName()))
        BluetoothSettingsItemView.access$102(BluetoothSettingsItemView.this, null);
    }
  };
  private boolean tethered;
  private final BluetoothTetheringState tetheringState;
  private final BluetoothTetheringState.Listener tetheringStateChangeListener = new BluetoothTetheringState.Listener()
  {
    public void onBluetoothTetheringStateChanged(int paramAnonymousInt)
    {
      BluetoothSettingsItemView localBluetoothSettingsItemView = BluetoothSettingsItemView.this;
      if (paramAnonymousInt == 2);
      for (boolean bool = true; ; bool = false)
      {
        BluetoothSettingsItemView.access$302(localBluetoothSettingsItemView, bool);
        BluetoothSettingsItemView.this.update();
        return;
      }
    }
  };

  public BluetoothSettingsItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public BluetoothSettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public BluetoothSettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.bluetooth_settings_item, this);
    ((TypophileTextView)findViewById(R.id.bt_pairing_details)).setText(R.string.bluetooth_now_discoverable);
    this.discoverableAnimator = ObjectAnimator.ofFloat((ImageView)findViewById(R.id.bluetooth_icon), "alpha", new float[] { 1.0F, 0.2F });
    this.discoverableAnimator.setDuration(getResources().getInteger(R.integer.bluetooth_discoverable_alpha_duration_ms));
    this.discoverableAnimator.setRepeatCount(-1);
    this.discoverableAnimator.setRepeatMode(2);
    this.btAdapter = BluetoothAdapter.getDefaultAdapter();
    this.tetheringState = new BluetoothTetheringState(paramContext);
    this.inetState = GlassApplication.from(paramContext).getConnectionState();
  }

  private void queryState()
  {
    int i = 1;
    if (BluetoothHeadset.getHeadsetState(getContext()) == i);
    while (true)
    {
      this.headsetConnected = i;
      this.companionConnected = HomeApplication.from(getContext()).getCompanionState().isConnected();
      Log.d(TAG, "Headset connected? " + this.headsetConnected);
      Log.d(TAG, "Companion connected? " + this.companionConnected);
      return;
      i = 0;
    }
  }

  private void update()
  {
    TypophileTextView localTypophileTextView1 = (TypophileTextView)findViewById(R.id.bt_device_name);
    TypophileTextView localTypophileTextView2 = (TypophileTextView)findViewById(R.id.bt_tethered_state);
    TypophileTextView localTypophileTextView3 = (TypophileTextView)findViewById(R.id.bt_companion_state);
    TypophileTextView localTypophileTextView4 = (TypophileTextView)findViewById(R.id.bt_headset_connection_state);
    ImageView localImageView = (ImageView)findViewById(R.id.bluetooth_icon);
    Resources localResources = getContext().getResources();
    int i = localResources.getColor(R.color.state_green);
    int j = localResources.getColor(R.color.state_yellow);
    int k = localResources.getColor(R.color.state_red);
    int m = localResources.getColor(R.color.text_gray);
    if ((this.btAdapter == null) || (!this.btAdapter.isEnabled()))
    {
      Log.e(TAG, "Bluetooth adapter disabled.  Someone's been mucking around in legacy settings.");
      localTypophileTextView1.setText(R.string.bluetooth);
      if (this.discoverableAnimator.isRunning())
        this.discoverableAnimator.cancel();
      localImageView.setImageResource(R.drawable.ic_bluetooth_off_big);
      localImageView.setAlpha(1.0F);
      localTypophileTextView4.setText(R.string.bluetooth_off);
      localTypophileTextView4.setTextColor(k);
      localTypophileTextView4.setVisibility(0);
      return;
    }
    BluetoothDevice localBluetoothDevice = BluetoothHelper.getSinglyPairedDevice();
    if (this.btAdapter.getScanMode() == 23)
    {
      Log.d(TAG, "Discoverable");
      if (!this.discoverableAnimator.isRunning())
      {
        Log.d(TAG, "Setting and starting animation.");
        localImageView.setImageResource(R.drawable.ic_bluetooth_on_big);
        if (localBluetoothDevice == null)
          this.discoverableAnimator.start();
      }
    }
    while (localBluetoothDevice == null)
    {
      Log.d(TAG, "No paired devices.");
      localTypophileTextView1.setText(R.string.bluetooth);
      localTypophileTextView2.setVisibility(8);
      localTypophileTextView3.setVisibility(8);
      localTypophileTextView4.setVisibility(8);
      return;
      Log.d(TAG, "On, but not discoverable.");
      if (this.discoverableAnimator.isRunning())
        this.discoverableAnimator.cancel();
      localImageView.setImageResource(R.drawable.ic_bluetooth_on_big);
      localImageView.setAlpha(1.0F);
    }
    Log.d(TAG, "Found paired device: " + BluetoothHelper.loggableDevice(localBluetoothDevice));
    localTypophileTextView1.setText(localBluetoothDevice.getName().trim());
    if ((!this.headsetConnected) && (!this.companionConnected) && (!this.tethered))
    {
      localTypophileTextView4.setText(R.string.bluetooth_disconnected);
      localTypophileTextView4.setTextColor(k);
      localTypophileTextView4.setVisibility(0);
      localTypophileTextView2.setVisibility(8);
      localTypophileTextView3.setVisibility(8);
      return;
    }
    localTypophileTextView4.setVisibility(0);
    localTypophileTextView2.setVisibility(0);
    localTypophileTextView3.setVisibility(0);
    int n;
    label533: TypophileTextView localTypophileTextView5;
    if (this.headsetConnected)
    {
      localTypophileTextView4.setText(R.string.bluetooth_headset);
      localTypophileTextView4.setTextColor(i);
      if (!this.tethered)
        break label667;
      CompanionState localCompanionState = HomeApplication.from(getContext()).getCompanionState();
      if ((!localCompanionState.isConnected()) || (!localCompanionState.isTetheringErrorDetected()))
        break label627;
      localTypophileTextView2.setText(R.string.bluetooth_tethered_error);
      localTypophileTextView2.setTextColor(k);
      n = 1;
      localTypophileTextView5 = (TypophileTextView)findViewById(R.id.bt_pairing_details);
      if (n == 0)
        break label686;
      localTypophileTextView5.setText(R.string.bluetooth_check_my_glass);
      label558: if (!this.companionConnected)
        break label713;
      if ((this.companionService == null) || (CompanionUtils.getMajorVersion(this.companionService.getRemoteVersion()) >= CompanionUtils.getMajorVersion(6)))
        break label697;
      localTypophileTextView3.setText(R.string.bluetooth_companion_old);
      localTypophileTextView3.setTextColor(j);
    }
    while (true)
    {
      localTypophileTextView3.setVisibility(0);
      return;
      localTypophileTextView4.setText(R.string.bluetooth_headset_off);
      localTypophileTextView4.setTextColor(k);
      break;
      label627: localTypophileTextView2.setText(R.string.bluetooth_tethered);
      if (this.inetState.isConnected());
      for (int i1 = i; ; i1 = j)
      {
        localTypophileTextView2.setTextColor(i1);
        n = 0;
        break;
      }
      label667: localTypophileTextView2.setText(R.string.bluetooth_tethered_off);
      localTypophileTextView2.setTextColor(m);
      n = 0;
      break label533;
      label686: localTypophileTextView5.setText(R.string.bluetooth_now_discoverable);
      break label558;
      label697: localTypophileTextView3.setText(R.string.bluetooth_companion);
      localTypophileTextView3.setTextColor(i);
    }
    label713: localTypophileTextView3.setVisibility(8);
  }

  public void onLoad()
  {
    getContext().bindService(new Intent(getContext(), CompanionService.class), this.serviceConnection, 1);
    this.tetheringState.addListener(this.tetheringStateChangeListener);
    this.pairingReceiver.register(getContext(), ACTIONS_TO_REGISTER_RECEIVER_FOR);
    this.companionStateChangeReceiver.register(getContext(), new String[] { "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE" });
    this.inetState.addListener(this.inetListener);
    BluetoothHelper.makeBluetoothDiscoverable();
    queryState();
    update();
  }

  public void onUnload()
  {
    super.onUnload();
    if ((this.discoverableAnimator != null) && (this.discoverableAnimator.isRunning()))
      this.discoverableAnimator.cancel();
    if (this.companionService != null)
      getContext().unbindService(this.serviceConnection);
    this.pairingReceiver.unregister(getContext());
    this.companionStateChangeReceiver.unregister(getContext());
    this.tetheringState.removeListener(this.tetheringStateChangeListener);
    this.inetState.removeListener(this.inetListener);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.BluetoothSettingsItemView
 * JD-Core Version:    0.6.2
 */
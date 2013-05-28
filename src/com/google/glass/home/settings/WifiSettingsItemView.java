package com.google.glass.home.settings;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.home.R.color;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.string;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.InetConnectionState;
import com.google.glass.util.InetConnectionState.Listener;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.WifiHelper;
import com.google.glass.util.WifiHelper.Encryption;
import com.google.glass.util.WifiHelper.WifiScanCallback;
import com.google.glass.widget.TypophileTextView;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executor;

public class WifiSettingsItemView extends WifiApView
{
  private static final String[] ACTIONS_TO_REGISTER_FOR = { "android.net.wifi.STATE_CHANGE", "android.net.wifi.RSSI_CHANGED", "android.net.conn.CONNECTIVITY_CHANGE" };
  private static final String TAG = WifiSettingsItemView.class.getSimpleName();
  private boolean connected;
  private final InetConnectionState.Listener connectivityListener = new InetConnectionState.Listener()
  {
    public void onConnectivityChanged(boolean paramAnonymousBoolean)
    {
      WifiSettingsItemView.this.update();
    }
  };
  private LinkedList<ScanResult> cummulativeScanResults;
  private InetConnectionState inetState;
  private LinkedList<ScanResult> lastCummulativeScanResults;
  private int scanCount;
  private HashMap<String, ScanResult> scannedNetworks;
  private final SafeBroadcastReceiver statusReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return WifiSettingsItemView.TAG + "/statusReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      WifiSettingsItemView.this.update();
    }
  };
  private WifiHelper wifiHelper;
  private final WifiHelper.WifiScanCallback wifiScanCallback = new WifiHelper.WifiScanCallback()
  {
    public void onScanResultsAvailable(List<ScanResult> paramAnonymousList)
    {
      Log.d(WifiSettingsItemView.TAG, "Scan results received, scanCount=" + WifiSettingsItemView.this.scanCount);
      WifiSettingsItemView.this.cummulativeScanResults.addAll(paramAnonymousList);
      if (WifiSettingsItemView.this.scanCount == 2)
      {
        WifiSettingsItemView.access$402(WifiSettingsItemView.this, WifiSettingsItemView.this.cummulativeScanResults);
        WifiSettingsItemView.this.update();
        return;
      }
      WifiSettingsItemView.access$208(WifiSettingsItemView.this);
      WifiSettingsItemView.this.wifiHelper.startScan(this);
    }
  };

  public WifiSettingsItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public WifiSettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public WifiSettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void update()
  {
    WifiManager localWifiManager = (WifiManager)getContext().getSystemService("wifi");
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getContext().getSystemService("connectivity")).getNetworkInfo(1);
    TypophileTextView localTypophileTextView1 = (TypophileTextView)findViewById(R.id.wifi_network_name);
    TypophileTextView localTypophileTextView2 = (TypophileTextView)findViewById(R.id.wifi_data_state);
    TypophileTextView localTypophileTextView3 = (TypophileTextView)findViewById(R.id.wifi_connection_state);
    TypophileTextView localTypophileTextView4 = (TypophileTextView)findViewById(R.id.wifi_other_networks);
    TypophileTextView localTypophileTextView5 = (TypophileTextView)findViewById(R.id.wifi_security);
    if (!localWifiManager.isWifiEnabled())
    {
      Log.e(TAG, "Wifi is disabled.  Has someone been mucking around in legacy Settings?");
      localTypophileTextView1.setText(R.string.wifi);
      localTypophileTextView3.setText(R.string.wifi_disabled);
      localTypophileTextView3.setTextColor(getResources().getColor(R.color.state_red));
      localTypophileTextView2.setVisibility(8);
      localTypophileTextView4.setVisibility(8);
      ((ImageView)findViewById(R.id.wifi_signal_strength)).setImageResource(R.drawable.wifi_disconnected);
      return;
    }
    int j;
    if (localNetworkInfo.isConnected())
    {
      this.connected = true;
      WifiInfo localWifiInfo2 = localWifiManager.getConnectionInfo();
      String str1 = localWifiInfo2.getSSID();
      localTypophileTextView1.setText(str1);
      String str2 = null;
      Iterator localIterator2 = localWifiManager.getConfiguredNetworks().iterator();
      while (localIterator2.hasNext())
      {
        WifiConfiguration localWifiConfiguration = (WifiConfiguration)localIterator2.next();
        String str3 = '"' + str1 + '"';
        if ((localWifiConfiguration.status == 0) || (localWifiConfiguration.SSID.equals(str3)))
          if ((localWifiConfiguration.allowedKeyManagement.get(1)) || (localWifiConfiguration.allowedKeyManagement.get(2)))
            str2 = "WPA";
          else if ((localWifiConfiguration.allowedKeyManagement.get(0)) && (localWifiConfiguration.wepKeys != null) && (!TextUtils.isEmpty(localWifiConfiguration.wepKeys[0])))
            str2 = "WEP";
      }
      if (!TextUtils.isEmpty(str2))
      {
        localTypophileTextView5.setText(str2);
        localTypophileTextView5.setVisibility(0);
        ImageView localImageView = (ImageView)findViewById(R.id.wifi_signal_strength);
        j = WifiManager.calculateSignalLevel(localWifiInfo2.getRssi(), this.wifiLevels.getNumWifiLevels());
        localTypophileTextView3.setText(R.string.wifi_connected);
        localTypophileTextView3.setTextColor(getResources().getColor(R.color.state_green));
        if (!this.inetState.isConnected())
          break label521;
        localTypophileTextView2.setVisibility(8);
        label444: localImageView.setImageResource(this.wifiLevels.getImageResourceForStrength(j));
      }
    }
    Object localObject;
    while (true)
    {
      localObject = this.lastCummulativeScanResults;
      if ((localObject == null) || (((List)localObject).isEmpty()))
        localObject = this.wifiHelper.getScanResults();
      if (localObject != null)
        break label620;
      Log.d(TAG, "No networks available, hiding other networks.");
      localTypophileTextView4.setVisibility(8);
      return;
      localTypophileTextView5.setVisibility(8);
      break;
      label521: j += this.wifiLevels.getNumWifiLevels();
      localTypophileTextView2.setVisibility(0);
      break label444;
      this.connected = false;
      Log.d(TAG, "Disconnected.");
      localTypophileTextView1.setText(R.string.wifi);
      localTypophileTextView3.setText(R.string.wifi_disconnected);
      localTypophileTextView3.setTextColor(getResources().getColor(R.color.state_red));
      localTypophileTextView2.setVisibility(8);
      ((ImageView)findViewById(R.id.wifi_signal_strength)).setImageResource(R.drawable.wifi_disconnected);
      localTypophileTextView5.setVisibility(8);
    }
    label620: this.scannedNetworks = new HashMap(((List)localObject).size());
    int i = 0;
    if (localObject != null)
    {
      Iterator localIterator1 = ((List)localObject).iterator();
      while (localIterator1.hasNext())
      {
        ScanResult localScanResult = (ScanResult)localIterator1.next();
        if (!this.scannedNetworks.containsKey(localScanResult.SSID))
        {
          WifiInfo localWifiInfo1 = localWifiManager.getConnectionInfo();
          if ((localWifiInfo1 == null) || (TextUtils.isEmpty(localWifiInfo1.getSSID())) || (!localWifiInfo1.getSSID().contentEquals(localScanResult.SSID)))
          {
            if (this.wifiHelper.getScanResultSecurity(localScanResult) == WifiHelper.Encryption.NONE)
            {
              i = 1;
              Log.d(TAG, "Found open network: " + localScanResult.SSID);
            }
            this.scannedNetworks.put(localScanResult.SSID, localScanResult);
          }
        }
      }
    }
    if (this.scannedNetworks.isEmpty())
    {
      Log.d(TAG, "No networks available, hiding other networks.");
      localTypophileTextView4.setVisibility(8);
      return;
    }
    if (i != 0)
    {
      Log.d(TAG, "Open networks available.");
      localTypophileTextView4.setText(R.string.wifi_open_networks_available);
    }
    while (true)
    {
      localTypophileTextView4.setVisibility(0);
      return;
      Log.d(TAG, "Networks available.");
      localTypophileTextView4.setText(R.string.wifi_networks_available);
    }
  }

  protected void initialize()
  {
    super.initialize();
    this.scanCount = 0;
    this.cummulativeScanResults = new LinkedList();
    this.lastCummulativeScanResults = this.cummulativeScanResults;
    this.wifiHelper = new WifiHelper(getContext());
    this.inetState = GlassApplication.from(getContext()).getConnectionState();
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    Intent localIntent = new Intent(paramGlassActivity, WifiSettingsMenuActivity.class);
    LinkedList localLinkedList = this.lastCummulativeScanResults;
    if ((localLinkedList == null) || (localLinkedList.isEmpty()))
      localLinkedList = this.cummulativeScanResults;
    if ((localLinkedList == null) || (localLinkedList.isEmpty()))
    {
      localLinkedList = new LinkedList();
      List localList = this.wifiHelper.getScanResults();
      if (localList != null)
        localLinkedList.addAll(localList);
    }
    localIntent.putExtra("scan_results", localLinkedList);
    if (!this.connected)
      localIntent.putExtra("join", true);
    paramGlassActivity.startActivity(localIntent);
    return true;
  }

  public void onLoad()
  {
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        WifiSettingsItemView.this.statusReceiver.register(WifiSettingsItemView.this.getContext(), WifiSettingsItemView.ACTIONS_TO_REGISTER_FOR);
      }
    });
    this.inetState.addListener(this.connectivityListener);
    update();
    this.scanCount = 0;
    this.cummulativeScanResults = new LinkedList();
    this.wifiHelper.startScan(true, this.wifiScanCallback);
    Log.d(TAG, "Started wifi scan.");
  }

  public void onUnload()
  {
    super.onUnload();
    this.wifiHelper.release();
    this.inetState.removeListener(this.connectivityListener);
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        WifiSettingsItemView.this.statusReceiver.unregister(WifiSettingsItemView.this.getContext());
      }
    });
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.WifiSettingsItemView
 * JD-Core Version:    0.6.2
 */
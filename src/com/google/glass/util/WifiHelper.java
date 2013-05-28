package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class WifiHelper
{
  private static final long CONNECT_TIMEOUT_MILLIS = 120000L;
  public static final int HIDDEN_KEY_MGMT_WPA2_PSK = 4;
  public static final int SCAN_COUNTS_PER_REFRESH = 3;
  public static final Comparator<ScanResult> SCAN_RESULT_COMPARATOR = new Comparator()
  {
    public int compare(ScanResult paramAnonymousScanResult1, ScanResult paramAnonymousScanResult2)
    {
      if (paramAnonymousScanResult1.level > paramAnonymousScanResult2.level)
        return -1;
      if (paramAnonymousScanResult1.level < paramAnonymousScanResult2.level)
        return 1;
      return 0;
    }
  };
  private static final String TAG = WifiHelper.class.getSimpleName();
  private static final Pattern VALID_HEX_CHARS = Pattern.compile("[0-9a-fA-F]+");
  private final ConnectivityManager connectivityManager;
  private SafeBroadcastReceiver connectivityReceiver;
  private final Context context;
  private final Handler handler = new Handler();
  private SafeBroadcastReceiver scanReceiver;
  private Runnable timeoutRunnable;
  private final WifiManager wifiManager;

  public WifiHelper(Context paramContext)
  {
    this.context = paramContext;
    this.wifiManager = ((WifiManager)paramContext.getSystemService("wifi"));
    this.connectivityManager = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
  }

  private WifiConfiguration buildWifiConfiguration(String paramString1, Encryption paramEncryption, String paramString2)
  {
    WifiConfiguration localWifiConfiguration = new WifiConfiguration();
    localWifiConfiguration.SSID = ("\"" + paramString1 + "\"");
    localWifiConfiguration.priority = 1;
    localWifiConfiguration.status = 2;
    switch (6.$SwitchMap$com$google$glass$util$WifiHelper$Encryption[paramEncryption.ordinal()])
    {
    default:
      return localWifiConfiguration;
    case 1:
      localWifiConfiguration.allowedKeyManagement.set(0);
      localWifiConfiguration.allowedGroupCiphers.set(2);
      localWifiConfiguration.allowedAuthAlgorithms.set(0);
      return localWifiConfiguration;
    case 2:
      localWifiConfiguration.allowedKeyManagement.set(1);
      localWifiConfiguration.allowedAuthAlgorithms.set(0);
      localWifiConfiguration.preSharedKey = ("\"" + paramString2 + "\"");
      return localWifiConfiguration;
    case 3:
      localWifiConfiguration.allowedKeyManagement.set(0);
      localWifiConfiguration.allowedAuthAlgorithms.set(0);
      localWifiConfiguration.allowedAuthAlgorithms.set(1);
      localWifiConfiguration.wepKeys = new String[4];
      int i = paramString2.length();
      if (((i == 10) || (i == 26)) && (VALID_HEX_CHARS.matcher(paramString2).matches()))
        localWifiConfiguration.wepKeys[0] = paramString2;
      while (true)
      {
        localWifiConfiguration.wepTxKeyIndex = 0;
        return localWifiConfiguration;
        localWifiConfiguration.wepKeys[0] = ("\"" + paramString2 + "\"");
      }
    case 4:
    }
    localWifiConfiguration.allowedKeyManagement.set(2);
    localWifiConfiguration.allowedGroupCiphers.set(2);
    localWifiConfiguration.allowedGroupCiphers.set(3);
    Log.w(TAG, "WPA EAP chosen, assuming user got EAP cert onto the device somehow.");
    return localWifiConfiguration;
  }

  private void cancelConnectivityReceiver()
  {
    if (this.connectivityReceiver != null)
      this.connectivityReceiver.unregister(this.context);
  }

  private void cancelScanReceiver()
  {
    if (this.scanReceiver != null)
      this.scanReceiver.unregister(this.context);
  }

  private void cancelTimeout()
  {
    if (this.timeoutRunnable != null)
    {
      Log.v(TAG, "Canceling timeout.");
      this.handler.removeCallbacks(this.timeoutRunnable);
    }
  }

  private void createConnectivityReceiver(final WifiConnectionCallback paramWifiConnectionCallback)
  {
    cancelConnectivityReceiver();
    this.connectivityReceiver = new SafeBroadcastReceiver()
    {
      protected String getTag()
      {
        return WifiHelper.TAG + "/connectivityReceiver";
      }

      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        Log.d(getTag(), "Connectivity receiver received " + paramAnonymousIntent.getAction());
        NetworkInfo localNetworkInfo1 = (NetworkInfo)paramAnonymousIntent.getParcelableExtra("networkInfo");
        if ((localNetworkInfo1 != null) && (localNetworkInfo1.isConnected()))
        {
          Log.d(getTag(), "WifiManager claims we are connected to wifi.");
          NetworkInfo localNetworkInfo2 = WifiHelper.this.connectivityManager.getNetworkInfo(1);
          if ((localNetworkInfo2 != null) && (localNetworkInfo2.isConnected()))
          {
            Log.d(getTag(), "ConnectivityManager agrees with WifiManager, progressing...");
            WifiHelper.this.cancelTimeout();
            WifiHelper.this.cancelConnectivityReceiver();
            paramWifiConnectionCallback.onConnected();
          }
        }
      }
    };
    this.connectivityReceiver.register(this.context, new String[] { "android.net.wifi.STATE_CHANGE" });
  }

  private boolean isNetworkConnected(String paramString)
  {
    NetworkInfo localNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
    boolean bool;
    if (localNetworkInfo == null)
    {
      bool = false;
      if (bool)
        break label28;
    }
    label28: WifiInfo localWifiInfo;
    do
    {
      return false;
      bool = localNetworkInfo.isConnected();
      break;
      localWifiInfo = this.wifiManager.getConnectionInfo();
    }
    while ((localWifiInfo == null) || (localWifiInfo.getSSID() == null) || (paramString == null) || (!paramString.equals(localWifiInfo.getSSID())));
    return true;
  }

  private void startTimeout(final WifiConnectionCallback paramWifiConnectionCallback)
  {
    cancelTimeout();
    this.timeoutRunnable = new Runnable()
    {
      public void run()
      {
        Log.e(WifiHelper.TAG, "Connection timed out.");
        WifiHelper.this.cancelConnectivityReceiver();
        paramWifiConnectionCallback.onConnectionFailed();
      }
    };
    Log.v(TAG, "Starting timeout of 120000 ms.");
    this.handler.postDelayed(this.timeoutRunnable, 120000L);
  }

  public void connect(String paramString1, Encryption paramEncryption, String paramString2, WifiConnectionCallback paramWifiConnectionCallback)
  {
    if (isNetworkConnected(paramString1))
    {
      Log.d(TAG, "Already connected so ignoring connect request");
      paramWifiConnectionCallback.onConnected();
      return;
    }
    LogHelper.logPii(3, TAG, "Attempting to connect to wifi [ssid=" + paramString1 + ", encryption=" + paramEncryption + ", key=" + paramString2 + "].");
    if ((paramEncryption != Encryption.NONE) && (paramString2 == null))
    {
      Log.d(TAG, "Aborting wifi connect attempt due to absent key for an encrypted network.");
      paramWifiConnectionCallback.onConnectionFailed();
      return;
    }
    Iterator localIterator = this.wifiManager.getConfiguredNetworks().iterator();
    while (localIterator.hasNext())
    {
      WifiConfiguration localWifiConfiguration2 = (WifiConfiguration)localIterator.next();
      if (localWifiConfiguration2.SSID.equals("\"" + paramString1 + "\""))
      {
        boolean bool = this.wifiManager.removeNetwork(localWifiConfiguration2.networkId);
        Log.d(TAG, "Removing existing network with the same SSID [success=" + bool + "].");
      }
    }
    WifiConfiguration localWifiConfiguration1 = buildWifiConfiguration(paramString1, paramEncryption, paramString2);
    createConnectivityReceiver(paramWifiConnectionCallback);
    startTimeout(paramWifiConnectionCallback);
    Log.d(TAG, "Adding network...");
    int i = this.wifiManager.addNetwork(localWifiConfiguration1);
    if (i == -1)
    {
      Log.e(TAG, "Failed to add network.");
      cancelConnectivityReceiver();
      paramWifiConnectionCallback.onConnectionFailed();
      return;
    }
    Log.d(TAG, "Enabling network... [networkId=" + i + "].");
    if (!this.wifiManager.enableNetwork(i, true))
    {
      Log.e(TAG, "Failed to enable network [networkId=" + i + "].");
      cancelConnectivityReceiver();
      paramWifiConnectionCallback.onConnectionFailed();
      return;
    }
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        Log.d(WifiHelper.TAG, "Saving configuration...");
        WifiHelper.this.wifiManager.saveConfiguration();
        WifiHelper.this.wifiManager.reconnect();
      }
    });
  }

  public void connectToNetworkId(int paramInt, WifiConnectionCallback paramWifiConnectionCallback)
  {
    createConnectivityReceiver(paramWifiConnectionCallback);
    startTimeout(paramWifiConnectionCallback);
    Log.d(TAG, "Enabling network... (ID = " + paramInt + ")");
    if (!this.wifiManager.enableNetwork(paramInt, true))
    {
      Log.e(TAG, "Failed to enable network. (ID = " + paramInt + ")");
      paramWifiConnectionCallback.onConnectionFailed();
    }
  }

  public Encryption getScanResultSecurity(ScanResult paramScanResult)
  {
    String str = paramScanResult.capabilities;
    if (str.contains("WEP"))
      return Encryption.WEP;
    if (str.contains("PSK"))
      return Encryption.WPA;
    if (str.contains("EAP"))
      return Encryption.WPA_EAP;
    return Encryption.NONE;
  }

  public List<ScanResult> getScanResults()
  {
    return this.wifiManager.getScanResults();
  }

  public Encryption getSecurity(WifiConfiguration paramWifiConfiguration)
  {
    if (paramWifiConfiguration.allowedKeyManagement.get(1))
      return Encryption.WPA;
    if ((paramWifiConfiguration.allowedKeyManagement.get(2)) || (paramWifiConfiguration.allowedKeyManagement.get(3)))
      return Encryption.WPA_EAP;
    if (paramWifiConfiguration.allowedKeyManagement.get(4))
      return Encryption.WPA;
    if (paramWifiConfiguration.wepKeys[0] != null)
      return Encryption.WEP;
    return Encryption.NONE;
  }

  public WifiManager getWifiManager()
  {
    return this.wifiManager;
  }

  public boolean isConnected()
  {
    int i = 1;
    if (this.connectivityManager == null)
      return false;
    NetworkInfo localNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.getType() == i) && (localNetworkInfo.isConnected()));
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public void onPause()
  {
    cancelScanReceiver();
  }

  public void release()
  {
    cancelTimeout();
    cancelConnectivityReceiver();
    cancelScanReceiver();
  }

  public void startScan(WifiScanCallback paramWifiScanCallback)
  {
    startScan(false, paramWifiScanCallback);
  }

  public void startScan(boolean paramBoolean, final WifiScanCallback paramWifiScanCallback)
  {
    Log.d(TAG, "Initiating scan for wifi.");
    cancelScanReceiver();
    this.scanReceiver = new SafeBroadcastReceiver()
    {
      protected String getTag()
      {
        return WifiHelper.TAG + "/wifiScanReceiver";
      }

      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        Log.d(getTag(), "Wifi scan completed, scan results received.");
        unregister(paramAnonymousContext);
        if (paramWifiScanCallback != null)
        {
          List localList = WifiHelper.this.wifiManager.getScanResults();
          if (localList != null)
          {
            Collections.sort(localList, WifiHelper.SCAN_RESULT_COMPARATOR);
            paramWifiScanCallback.onScanResultsAvailable(localList);
          }
        }
      }
    };
    this.scanReceiver.register(this.context, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
    if (paramBoolean)
      try
      {
        WifiManager.class.getMethod("startScanActive", new Class[0]).invoke(this.wifiManager, new Object[0]);
        Log.d(TAG, "Started active wifi scan.");
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Log.e(TAG, "Failed to start active wifi scan: ", localIllegalArgumentException);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        Log.e(TAG, "Failed to start active wifi scan: ", localIllegalAccessException);
        return;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        Log.e(TAG, "Failed to start active wifi scan: ", localInvocationTargetException);
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.e(TAG, "Failed to start active wifi scan: ", localNoSuchMethodException);
        return;
      }
    this.wifiManager.startScan();
    Log.d(TAG, "Started passive wifi scan.");
  }

  public static enum Encryption
  {
    static
    {
      WEP = new Encryption("WEP", 2);
      WPA_EAP = new Encryption("WPA_EAP", 3);
      Encryption[] arrayOfEncryption = new Encryption[4];
      arrayOfEncryption[0] = NONE;
      arrayOfEncryption[1] = WPA;
      arrayOfEncryption[2] = WEP;
      arrayOfEncryption[3] = WPA_EAP;
    }
  }

  public static abstract interface WifiConnectionCallback
  {
    public abstract void onConnected();

    public abstract void onConnectionFailed();
  }

  public static abstract interface WifiScanCallback
  {
    public abstract void onScanResultsAvailable(List<ScanResult> paramList);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.WifiHelper
 * JD-Core Version:    0.6.2
 */
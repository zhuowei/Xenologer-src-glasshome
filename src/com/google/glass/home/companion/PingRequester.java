package com.google.glass.home.companion;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.companion.BluetoothDeviceWrapper;
import com.google.glass.companion.UuidFetcher;
import com.google.glass.companion.UuidFetcher.Callback;
import com.google.glass.hidden.HiddenWifiManager;
import com.google.glass.util.Assert;

public class PingRequester
  implements UuidFetcher.Callback
{
  private static final String TAG = PingRequester.class.getSimpleName();
  public static final int WHAT_PING = 1;
  private final Context context;
  private volatile BluetoothDeviceWrapper expectedDevice;
  private Handler handler = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 1:
      }
      BluetoothDeviceWrapper localBluetoothDeviceWrapper = PingRequester.this.expectedDevice;
      if ((localBluetoothDeviceWrapper != null) && (localBluetoothDeviceWrapper.getBondState() == 12))
      {
        Log.v(PingRequester.TAG, "Pinging device " + localBluetoothDeviceWrapper.loggableDevice());
        if (PingRequester.this.oldBtcCtsMode == null)
          PingRequester.access$202(PingRequester.this, Boolean.valueOf(HiddenWifiManager.getBtcCtsMode(PingRequester.this.wifiManager)));
        HiddenWifiManager.setBtcCtsMode(PingRequester.this.wifiManager, false);
        PingRequester.this.uuidFetcher.fetch(localBluetoothDeviceWrapper);
        return;
      }
      String str1 = PingRequester.TAG;
      StringBuilder localStringBuilder = new StringBuilder().append("Skip pinging device ");
      if (localBluetoothDeviceWrapper != null);
      for (String str2 = localBluetoothDeviceWrapper.loggableDevice(); ; str2 = null)
      {
        Log.v(str1, str2);
        return;
      }
    }
  };
  private Boolean oldBtcCtsMode;
  private final UuidFetcher uuidFetcher;
  private WifiManager wifiManager;

  public PingRequester(Context paramContext)
  {
    Assert.assertUiThread();
    this.uuidFetcher = new UuidFetcher(paramContext, this);
    this.context = paramContext;
  }

  @VisibleForTesting
  long getPingInterval()
  {
    return 300000L;
  }

  @VisibleForTesting
  public UuidFetcher getUuidFetcherForTesting()
  {
    return this.uuidFetcher;
  }

  public void onUuidFetchCallback(BluetoothDeviceWrapper paramBluetoothDeviceWrapper)
  {
    if (this.oldBtcCtsMode != null)
    {
      HiddenWifiManager.setBtcCtsMode(this.wifiManager, this.oldBtcCtsMode.booleanValue());
      this.oldBtcCtsMode = null;
    }
    ping(this.expectedDevice, PingDelay.DEFAULT);
  }

  public void ping(BluetoothDeviceWrapper paramBluetoothDeviceWrapper, PingDelay paramPingDelay)
  {
    if (paramBluetoothDeviceWrapper != null);
    while (true)
    {
      long l;
      try
      {
        boolean bool = paramBluetoothDeviceWrapper.hasWrappedDevice();
        if (!bool)
          return;
        if (this.wifiManager == null)
          this.wifiManager = ((WifiManager)this.context.getSystemService("wifi"));
        this.handler.removeMessages(1);
        this.expectedDevice = paramBluetoothDeviceWrapper;
        this.uuidFetcher.register();
        l = 0L;
        if (paramPingDelay == PingDelay.AT_ONCE)
        {
          l = 0L;
          this.handler.sendEmptyMessageDelayed(1, l);
          continue;
        }
      }
      finally
      {
      }
      if (paramPingDelay == PingDelay.DEFAULT)
        l = getPingInterval();
      else
        Log.v(TAG, "Unknown ping delay:" + paramPingDelay + "; Pinging at once.");
    }
  }

  public void stopPing()
  {
    try
    {
      this.uuidFetcher.unregister();
      this.handler.removeMessages(1);
      this.expectedDevice = null;
      if (this.oldBtcCtsMode != null)
      {
        HiddenWifiManager.setBtcCtsMode(this.wifiManager, this.oldBtcCtsMode.booleanValue());
        this.oldBtcCtsMode = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static enum PingDelay
  {
    static
    {
      PingDelay[] arrayOfPingDelay = new PingDelay[2];
      arrayOfPingDelay[0] = AT_ONCE;
      arrayOfPingDelay[1] = DEFAULT;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.PingRequester
 * JD-Core Version:    0.6.2
 */
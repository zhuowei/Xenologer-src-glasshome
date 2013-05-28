package com.google.glass.home.sync;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.WifiHelper;

public class TimelineSyncService extends Service
{
  public static final Object LOCK = new Object();
  private static final String TAG = TimelineSyncService.class.getSimpleName();
  private static TimelineSyncAdapter syncAdapter;
  private final SafeBroadcastReceiver connectivityChangeReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return TimelineSyncService.TAG + "/connectivityChangeReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (!TimelineSyncService.this.wifiHelper.isConnected())
      {
        Log.v(getTag(), "Caught wifi disconnection, notifying sync adapter to cancel opportunistic upload.");
        TimelineSyncService.syncAdapter.cancelOpportunisticUpload();
      }
    }
  };
  private final SafeBroadcastReceiver powerLostReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return TimelineSyncService.TAG + "/powerLostReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ("android.intent.action.ACTION_POWER_DISCONNECTED".equals(paramAnonymousIntent.getAction()))
      {
        Log.v(getTag(), "Caught power disconnection, notifying sync adapter to cancel opportunistic upload.");
        TimelineSyncService.syncAdapter.cancelOpportunisticUpload();
      }
    }
  };
  private WifiHelper wifiHelper;

  public IBinder onBind(Intent paramIntent)
  {
    return syncAdapter.getSyncAdapterBinder();
  }

  public void onCreate()
  {
    super.onCreate();
    this.wifiHelper = new WifiHelper(this);
    synchronized (LOCK)
    {
      if (syncAdapter == null)
        syncAdapter = new TimelineSyncAdapter(getApplicationContext(), true);
      this.powerLostReceiver.register(this, new String[] { "android.intent.action.ACTION_POWER_DISCONNECTED" });
      this.connectivityChangeReceiver.register(this, new String[] { "android.net.conn.CONNECTIVITY_CHANGE" });
      return;
    }
  }

  public void onDestroy()
  {
    this.powerLostReceiver.unregister(this);
    this.connectivityChangeReceiver.unregister(this);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.TimelineSyncService
 * JD-Core Version:    0.6.2
 */
package com.google.glass.home.sync;

import android.accounts.Account;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.SyncResult;
import android.content.SyncStats;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.os.Bundle;
import android.util.Log;
import com.google.glass.home.HomeApplication;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sync.SyncHelper;
import com.google.glass.util.Clock;
import com.google.glass.util.Clock.Impl;
import com.google.glass.util.InetConnectionState;

class TimelineSyncAdapter extends AbstractThreadedSyncAdapter
{
  public static final String TAG = TimelineSyncAdapter.class.getSimpleName();
  private final Clock clock;
  private final TimelineSyncHandler syncHandler;

  public TimelineSyncAdapter(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
    HomeApplication localHomeApplication = HomeApplication.from(paramContext);
    this.clock = new Clock.Impl();
    this.syncHandler = new TimelineSyncHandler(localHomeApplication, new TimelineSyncWindowHelper(localHomeApplication));
  }

  public void cancelOpportunisticUpload()
  {
    this.syncHandler.cancelOpportunisticUpload();
  }

  public void onPerformSync(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
  {
    int i = Thread.currentThread().getPriority();
    Thread.currentThread().setPriority(1);
    while (true)
    {
      try
      {
        HomeApplication localHomeApplication = HomeApplication.from(getContext());
        if (!localHomeApplication.getConnectionState().isConnected())
        {
          Log.w(TAG, "Android lies: there is no connectivity but sync was triggered");
          localHomeApplication.getUserEventHelper().log(UserEventAction.TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY);
          return;
        }
        if ((paramBundle.getBoolean("com.google.glass.sync.PERIODIC_SYNC")) && (!SyncHelper.shouldPerformPeriodicSync(this.clock, paramString)))
        {
          Log.d(TAG, "Not performing periodic sync since it is too soon since our last sync");
          return;
        }
        if ((paramBundle.getBoolean("com.google.glass.sync.CONNECTIVITY_ESTABLISHED_SYNC")) && (!SyncHelper.shouldPerformConnectivityEstablishedSync(this.clock, paramString)))
        {
          Log.d(TAG, "Not performing connectivity established sync since it is too soon since our last sync");
          return;
        }
        WifiManager.WifiLock localWifiLock = ((WifiManager)localHomeApplication.getSystemService("wifi")).createWifiLock(3, TimelineSyncAdapter.class.getSimpleName());
        try
        {
          localWifiLock.acquire();
          this.syncHandler.sync();
          if (localWifiLock.isHeld())
            localWifiLock.release();
          if (this.syncHandler.hasFailures())
          {
            SyncStats localSyncStats = paramSyncResult.stats;
            localSyncStats.numIoExceptions = (1L + localSyncStats.numIoExceptions);
            paramSyncResult.delayUntil = this.syncHandler.getDelayRemainingSecs();
            Log.d(TAG, "Rescheduling another sync with backoff [delayUntil=" + paramSyncResult.delayUntil + "secs, syncResult=" + paramSyncResult + ", authority=" + paramString + ", extras=" + paramBundle + "].");
            return;
          }
        }
        finally
        {
          if (localWifiLock.isHeld())
            localWifiLock.release();
        }
      }
      finally
      {
        Thread.currentThread().setPriority(i);
      }
      SyncHelper.updateLastSyncTime(this.clock, paramString);
      paramSyncResult.stats.clear();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.TimelineSyncAdapter
 * JD-Core Version:    0.6.2
 */
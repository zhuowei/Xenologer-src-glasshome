package com.google.glass.home.sync;

import android.accounts.Account;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
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

public class EntitySyncAdapter extends AbstractThreadedSyncAdapter
{
  private static final String TAG = EntitySyncAdapter.class.getSimpleName();
  private final Clock clock = new Clock.Impl();
  private EntitySyncHandler handler;

  public EntitySyncAdapter(HomeApplication paramHomeApplication, boolean paramBoolean)
  {
    super(paramHomeApplication, paramBoolean);
    this.handler = new EntitySyncHandler(paramHomeApplication);
  }

  public void onPerformSync(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
  {
    int i = Thread.currentThread().getPriority();
    Thread.currentThread().setPriority(1);
    while (true)
    {
      UserEventHelper localUserEventHelper;
      try
      {
        Log.v(TAG, "Starting Entity sync, extras are: " + paramBundle);
        if ((paramBundle.getBoolean("com.google.glass.sync.PERIODIC_SYNC")) && (!SyncHelper.shouldPerformPeriodicSync(this.clock, paramString)))
        {
          Log.d(TAG, "Not performing periodic sync since it is too soon");
          return;
        }
        if ((paramBundle.getBoolean("com.google.glass.sync.CONNECTIVITY_ESTABLISHED_SYNC")) && (!SyncHelper.shouldPerformConnectivityEstablishedSync(this.clock, paramString)))
        {
          Log.d(TAG, "Not performing connectivity established sync since it is too soon since our last sync");
          return;
        }
        localUserEventHelper = HomeApplication.from(getContext()).getUserEventHelper();
        if (!this.handler.shouldRetry())
          break label369;
        localUserEventHelper.log(UserEventAction.ENTITY_SYNC_STARTED);
        WifiManager.WifiLock localWifiLock = ((WifiManager)HomeApplication.from(getContext()).getSystemService("wifi")).createWifiLock(3, EntitySyncAdapter.class.getSimpleName());
        try
        {
          localWifiLock.acquire();
          this.handler.fetchEntities();
          if (localWifiLock.isHeld())
            localWifiLock.release();
          localUserEventHelper.log(UserEventAction.ENTITY_SYNC_FINISHED);
          if (this.handler.hasFailures())
          {
            SyncStats localSyncStats = paramSyncResult.stats;
            localSyncStats.numIoExceptions = (1L + localSyncStats.numIoExceptions);
            paramSyncResult.delayUntil = this.handler.getDelayRemainingSecs();
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
      continue;
      label369: Log.v(TAG, "Aborting sync because we are backing-off");
      localUserEventHelper.log(UserEventAction.ENTITY_SYNC_BACKOFF);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.EntitySyncAdapter
 * JD-Core Version:    0.6.2
 */
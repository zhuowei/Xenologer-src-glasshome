package com.google.glass.home.sync;

import android.accounts.Account;
import android.app.Service;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.SyncResult;
import android.os.Bundle;
import android.os.IBinder;

public class LocationSyncService extends Service
{
  public static final Object LOCK = new Object();
  private static LocationSyncAdapter syncAdapter;

  public IBinder onBind(Intent paramIntent)
  {
    return syncAdapter.getSyncAdapterBinder();
  }

  public void onCreate()
  {
    super.onCreate();
    synchronized (LOCK)
    {
      if (syncAdapter == null)
        syncAdapter = new LocationSyncAdapter(this);
      return;
    }
  }

  private static class LocationSyncAdapter extends AbstractThreadedSyncAdapter
  {
    private final LocationSyncHandler handler;

    public LocationSyncAdapter(Context paramContext)
    {
      super(true);
      this.handler = new LocationSyncHandler(paramContext);
    }

    public void onPerformSync(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
    {
      if (this.handler.shouldRetry())
        this.handler.performLocationSync();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.LocationSyncService
 * JD-Core Version:    0.6.2
 */
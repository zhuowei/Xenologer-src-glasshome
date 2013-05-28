package com.google.glass.home.sync;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.google.glass.home.HomeApplication;

public class EntitySyncService extends Service
{
  public static final Object LOCK = new Object();
  private static EntitySyncAdapter syncAdapter;

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
        syncAdapter = new EntitySyncAdapter(HomeApplication.from(this), true);
      return;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.EntitySyncService
 * JD-Core Version:    0.6.2
 */
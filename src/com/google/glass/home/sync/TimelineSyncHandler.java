package com.google.glass.home.sync;

import android.util.Log;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.timeline.TimelineNotificationManager;
import com.google.glass.timeline.AttachmentHelper;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.Clock.Impl;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.WifiHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

class TimelineSyncHandler extends BackOffSyncHandler
{
  private static final String TAG = TimelineSyncHandler.class.getSimpleName();
  private final AttachmentHelper attachmentHelper;
  private final DownloadSyncHelper downloadSyncHelper;
  private final StylesheetUpdater stylesheetUpdater;
  private final UploadSyncHelper uploadSyncHelper;

  TimelineSyncHandler(HomeApplication paramHomeApplication, TimelineSyncWindowHelper paramTimelineSyncWindowHelper)
  {
    this.attachmentHelper = new AttachmentHelper(paramHomeApplication);
    BatteryHelper localBatteryHelper = new BatteryHelper(paramHomeApplication);
    PowerHelper localPowerHelper = new PowerHelper(paramHomeApplication);
    WifiHelper localWifiHelper = new WifiHelper(paramHomeApplication);
    Clock.Impl localImpl = new Clock.Impl();
    TimelineHelper localTimelineHelper = new TimelineHelper();
    this.downloadSyncHelper = new DownloadSyncHelper(paramHomeApplication, this, localBatteryHelper, localPowerHelper, localWifiHelper, localImpl, TimelineNotificationManager.getInstance(), localTimelineHelper, paramTimelineSyncWindowHelper);
    this.uploadSyncHelper = new UploadSyncHelper(paramHomeApplication, this, localBatteryHelper, localPowerHelper, localWifiHelper, this.attachmentHelper, localTimelineHelper, localImpl);
    this.stylesheetUpdater = new StylesheetUpdater(paramHomeApplication, AsyncThreadExecutorManager.getThreadPoolExecutor());
  }

  public void cancelOpportunisticUpload()
  {
    this.uploadSyncHelper.cancelOpportunisticUpload();
  }

  protected String getTag()
  {
    return TAG;
  }

  public void sync()
  {
    final SyncStats localSyncStats = new SyncStats();
    FutureTask localFutureTask = new FutureTask(new Callable()
    {
      public Void call()
        throws Exception
      {
        Log.v(TimelineSyncHandler.TAG, "Starting timeline upload asynchronously.");
        TimelineSyncHandler.this.uploadSyncHelper.sync(localSyncStats);
        return null;
      }
    });
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(localFutureTask);
    this.stylesheetUpdater.checkForUpdates();
    this.downloadSyncHelper.sync(localSyncStats);
    try
    {
      Log.v(TAG, "Timeline download complete.  Waiting for timeline upload to complete.");
      localFutureTask.get();
      Log.v(TAG, "Timeline upload complete.");
      localSyncStats.log();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        Log.w(TAG, "Exception waiting for timeline upload to complete.", localInterruptedException);
    }
    catch (ExecutionException localExecutionException)
    {
      while (true)
        Log.w(TAG, "Exception waiting for timeline upload to complete.", localExecutionException);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.TimelineSyncHandler
 * JD-Core Version:    0.6.2
 */
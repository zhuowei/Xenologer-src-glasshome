package com.google.glass.home.timeline;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.google.glass.logging.Sample;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.util.Assert;
import java.util.concurrent.TimeUnit;

public class UiPerformanceLog
{
  private static final String DECIMAL_FORMAT = "%.3f";
  private static final long LOG_FLUSH_INTERVAL_MILLIS = 0L;
  private static final int TIME_BETWEEN_RENDERS_NUM_SAMPLES = 1024;
  private static final int TIME_TO_RENDER_NUM_SAMPLES = 1024;
  private static final int UI_THREAD_QUEUE_NUM_SAMPLES = 1024;
  private static final long UI_THREAD_QUEUE_TIME_SAMPLE_INTERVAL_MILLIS = 250L;
  private final Context context;
  private final Runnable flushPerformanceLogsRunnable = new Runnable()
  {
    private void logAverageAndVariance(Sample paramAnonymousSample, UserEventAction paramAnonymousUserEventAction)
    {
      if (paramAnonymousSample.getNumSamples() > 0)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Double.valueOf(paramAnonymousSample.getAverage());
        String str1 = String.format("%.3f", arrayOfObject1);
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = "v";
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Double.valueOf(paramAnonymousSample.getVariance());
        arrayOfObject2[1] = String.format("%.3f", arrayOfObject3);
        String str2 = UserEventHelper.createEventTuple("a", str1, arrayOfObject2);
        paramAnonymousSample.reset();
        new UserEventHelper(UiPerformanceLog.this.context).log(paramAnonymousUserEventAction, str2);
      }
    }

    public void run()
    {
      logAverageAndVariance(UiPerformanceLog.this.uiThreadQueueSample, UserEventAction.UI_THREAD_QUEUE);
      logAverageAndVariance(UiPerformanceLog.this.timeBetweenRendersSample, UserEventAction.UI_TIME_BETWEEN_RENDERS);
      logAverageAndVariance(UiPerformanceLog.this.timeToRenderSample, UserEventAction.UI_TIME_TO_RENDER);
      UiPerformanceLog.this.schedulePerformanceLogging();
    }
  };
  private final Handler handler;
  private boolean isPerformanceMeasureEnabled;
  private long lastRenderStartTime;
  private final Sample timeBetweenRendersSample = new Sample(1024).wantAverage().wantVariance();
  private final Sample timeToRenderSample = new Sample(1024).wantAverage().wantVariance();
  private final Runnable uiThreadQueueEndRunnable = new Runnable()
  {
    public void run()
    {
      if (!UiPerformanceLog.this.isPerformanceMeasureEnabled)
        return;
      UiPerformanceLog.this.uiThreadQueueSample.record(SystemClock.uptimeMillis() - UiPerformanceLog.this.uiThreadScheduleTime);
      UiPerformanceLog.this.scheduleUiThreadQueueTime();
    }
  };
  private final Sample uiThreadQueueSample = new Sample(1024).wantAverage().wantVariance();
  private final Runnable uiThreadQueueStartRunnable = new Runnable()
  {
    public void run()
    {
      UiPerformanceLog.access$602(UiPerformanceLog.this, SystemClock.uptimeMillis());
      UiPerformanceLog.this.handler.post(UiPerformanceLog.this.uiThreadQueueEndRunnable);
    }
  };
  private long uiThreadScheduleTime;

  public UiPerformanceLog(Context paramContext)
  {
    Assert.assertUiThread();
    this.context = paramContext;
    this.handler = new Handler();
  }

  private void schedulePerformanceLogging()
  {
    this.handler.removeCallbacks(this.flushPerformanceLogsRunnable);
    this.handler.postDelayed(this.flushPerformanceLogsRunnable, LOG_FLUSH_INTERVAL_MILLIS);
  }

  private void scheduleUiThreadQueueTime()
  {
    if (!this.isPerformanceMeasureEnabled)
      return;
    this.handler.removeCallbacks(this.uiThreadQueueStartRunnable);
    this.handler.postDelayed(this.uiThreadQueueStartRunnable, 250L);
  }

  public void onRenderEnd()
  {
    if (!this.isPerformanceMeasureEnabled);
    while (this.lastRenderStartTime == 0L)
      return;
    long l = SystemClock.uptimeMillis();
    this.timeToRenderSample.record(l - this.lastRenderStartTime);
  }

  public void onRenderStart()
  {
    if (!this.isPerformanceMeasureEnabled)
      return;
    long l = SystemClock.uptimeMillis();
    if (this.lastRenderStartTime != 0L)
      this.timeBetweenRendersSample.record(l - this.lastRenderStartTime);
    this.lastRenderStartTime = l;
  }

  public void startPerformanceLogging()
  {
    this.handler.removeCallbacks(this.flushPerformanceLogsRunnable);
    this.handler.post(this.flushPerformanceLogsRunnable);
  }

  public void startPerformanceMeasure()
  {
    if (this.isPerformanceMeasureEnabled)
      return;
    this.isPerformanceMeasureEnabled = true;
    scheduleUiThreadQueueTime();
    this.lastRenderStartTime = 0L;
  }

  public void stopPerformanceLogging()
  {
    this.handler.removeCallbacks(this.flushPerformanceLogsRunnable);
  }

  public void stopPerformanceMeasure()
  {
    this.isPerformanceMeasureEnabled = false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.UiPerformanceLog
 * JD-Core Version:    0.6.2
 */
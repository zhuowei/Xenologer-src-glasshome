package com.google.android.glass.timeline;

import android.content.Context;
import android.os.ServiceManager;

public final class TimelineManager
{
  public static final String SERVICE_NAME = "timeline";
  private static final String TAG = "TimelineManager";
  private static TimelineManager sInstance;
  private final ITimelineManager mService;

  private TimelineManager(ITimelineManager paramITimelineManager)
  {
    this.mService = paramITimelineManager;
  }

  public static TimelineManager from(Context paramContext)
  {
    if (sInstance == null)
      sInstance = new TimelineManager(ITimelineManager.Stub.asInterface(ServiceManager.getService("timeline")));
    return sInstance;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.glass.timeline.TimelineManager
 * JD-Core Version:    0.6.2
 */
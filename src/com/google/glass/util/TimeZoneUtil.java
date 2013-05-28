package com.google.glass.util;

import android.content.Context;
import android.content.Intent;

public class TimeZoneUtil
{
  public static final String ACTION_FORCE_UPDATE_TIME_ZONE = "com.google.glass.timezone.UPDATE_TIME_ZONE";
  public static final String EXTRA_PRIORITY = "priority";
  public static final String EXTRA_TIME_ZONE = "time_zone";
  public static final int TZ_PRIORITY_COMPANION = 100;
  public static final int TZ_PRIORITY_DEFAULT = 0;
  public static final int TZ_PRIORITY_LOCATION = 50;

  public static void updateTimeZone(Context paramContext)
  {
    paramContext.sendBroadcast(new Intent("com.google.glass.timezone.UPDATE_TIME_ZONE"));
  }

  public static void updateTimeZone(Context paramContext, String paramString, int paramInt)
  {
    Intent localIntent = new Intent("com.google.glass.timezone.UPDATE_TIME_ZONE");
    localIntent.putExtra("time_zone", paramString);
    localIntent.putExtra("priority", paramInt);
    paramContext.sendBroadcast(localIntent);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.TimeZoneUtil
 * JD-Core Version:    0.6.2
 */
package com.google.glass.maps;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.googlex.glass.common.proto.Location;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class NavigationLauncher
{
  private static final String ACTION_NAVIGATION_BROADCAST = "com.google.glass.action.NAVIGATION_BROADCAST";
  private static final String EXTRA_NAVIGATION_OPERATION = "operation";
  public static final String EXTRA_VOICE_SEARCH_RESULT = "voice_search_result";
  private static final String NAVIGATE_URI_PREFIX = "google.navigation:";
  public static final String NAVIGATION_OPERATION_FOREGROUND = "foreground";
  public static final String NAVIGATION_OPERATION_STOP = "stop";
  public static final String NAVIGATION_OPERATION_WAKE_UP = "wake_up";
  private static final String TAG = NavigationLauncher.class.getSimpleName();

  public static void bringNavigationToForeground(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.glass.action.NAVIGATION_BROADCAST");
    localIntent.putExtra("operation", "foreground");
    paramContext.sendBroadcast(localIntent);
  }

  private static Intent buildIntent(Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setData(paramUri);
    return localIntent;
  }

  @VisibleForTesting
  public static String getNavigationUriString(Location paramLocation)
  {
    boolean bool = TextUtils.isEmpty(paramLocation.getAddress());
    String str1 = null;
    if (!bool)
      str1 = paramLocation.getAddress();
    if ((TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(paramLocation.getDisplayName())))
      str1 = paramLocation.getDisplayName();
    if ((TextUtils.isEmpty(str1)) && ((!paramLocation.hasLatitude()) || (!paramLocation.hasLongitude())))
    {
      Log.e(TAG, "No address, display name, or lat/long for location, skipping navigation.");
      return null;
    }
    String str2 = paramLocation.getDisplayName();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("google.navigation:");
    if ((paramLocation.hasLatitude()) && (paramLocation.hasLongitude()))
      localStringBuilder.append("ll=").append(paramLocation.getLatitude()).append(",").append(paramLocation.getLongitude());
    if (!TextUtils.isEmpty(str2))
    {
      if (localStringBuilder.length() > "google.navigation:".length())
        localStringBuilder.append("&");
      localStringBuilder.append("title=").append(Uri.encode(str2));
    }
    if (!TextUtils.isEmpty(str1))
    {
      if (localStringBuilder.length() > "google.navigation:".length())
        localStringBuilder.append("&");
      localStringBuilder.append("q=").append(Uri.encode(str1));
    }
    localStringBuilder.append("&mode=mru");
    return localStringBuilder.toString();
  }

  public static boolean navigate(Location paramLocation, Context paramContext)
  {
    String str = getNavigationUriString(paramLocation);
    if (str == null)
      return false;
    paramContext.startActivity(buildIntent(Uri.parse(str)));
    return true;
  }

  public static boolean navigate(String paramString, Context paramContext, boolean paramBoolean)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      Intent localIntent = buildIntent(Uri.parse("google.navigation:q=" + str + "&mode=mru"));
      if (paramBoolean)
        localIntent.putExtra("voice_search_result", paramString);
      paramContext.startActivity(localIntent);
      return true;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      Log.e(TAG, "Error encoding navigation query: " + localUnsupportedEncodingException);
    }
    return false;
  }

  public static void stopNavigation(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.glass.action.NAVIGATION_BROADCAST");
    localIntent.putExtra("operation", "stop");
    paramContext.sendBroadcast(localIntent);
  }

  public static void wakeUpNavigation(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.glass.action.NAVIGATION_BROADCAST");
    localIntent.putExtra("operation", "wake_up");
    paramContext.sendBroadcast(localIntent);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.maps.NavigationLauncher
 * JD-Core Version:    0.6.2
 */
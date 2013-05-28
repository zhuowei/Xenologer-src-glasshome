package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassApplication;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;

public class OtaUpdateHelper
{
  private static final String KEY_CHECKIN_TIME = "checkin_time";
  private static final String TAG = OtaUpdateHelper.class.getSimpleName();

  public static void addCheckinListener(Context paramContext, SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    GlassApplication.from(paramContext).getSharedPreferences(TAG, 0).registerOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }

  public static void clearUpdateNameStickyBroadcast(Context paramContext)
  {
    paramContext.removeStickyBroadcast(new Intent("com.google.glass.ACTION_UPDATE_AVAILABLE"));
  }

  public static long getLastCheckinTime(Context paramContext)
  {
    Assert.assertNotUiThread();
    return GlassApplication.from(paramContext).getSharedPreferences(TAG, 0).getLong("checkin_time", -1L);
  }

  public static String getUpdateName(Context paramContext)
  {
    Intent localIntent = paramContext.registerReceiver(null, new IntentFilter("com.google.glass.ACTION_UPDATE_AVAILABLE"));
    if ((localIntent == null) || (!localIntent.hasExtra("update_name")))
      return null;
    return localIntent.getStringExtra("update_name");
  }

  public static void installUpdate(Context paramContext)
  {
    paramContext.sendBroadcast(new Intent("com.google.glass.update.INSTALL_UPDATE"));
  }

  public static boolean isUpdateAvailable(Context paramContext)
  {
    return getUpdateName(paramContext) != null;
  }

  public static void removeCheckinListener(Context paramContext, SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    GlassApplication.from(paramContext).getSharedPreferences(TAG, 0).unregisterOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }

  public static void sendUpdateNameStickyBroadcast(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_UPDATE_AVAILABLE");
    localIntent.putExtra("update_name", paramString);
    paramContext.sendStickyBroadcast(localIntent);
  }

  public static boolean setLastCheckinTime(Context paramContext)
  {
    Assert.assertNotUiThread();
    long l = System.currentTimeMillis();
    GlassApplication.from(paramContext).getUserEventHelper().log(UserEventAction.ANDROID_CHECK_IN, String.valueOf(l));
    return setLastCheckinTime(paramContext, l);
  }

  @VisibleForTesting
  public static boolean setLastCheckinTime(Context paramContext, long paramLong)
  {
    Log.d(TAG, "Checkin @ " + paramLong);
    SharedPreferences.Editor localEditor = GlassApplication.from(paramContext).getSharedPreferences(TAG, 0).edit();
    localEditor.putLong("checkin_time", paramLong);
    return localEditor.commit();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.OtaUpdateHelper
 * JD-Core Version:    0.6.2
 */
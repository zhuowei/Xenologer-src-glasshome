package com.google.glass.home;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassApplication;
import com.google.glass.hidden.DonState;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.SafeBroadcastReceiver;

public final class DonStateReceiver extends SafeBroadcastReceiver
{
  private static final long INVALID_TIMESTAMP = -1L;
  public static final SoundManager.SoundId SOUND_ID_DONNED_OFF = SoundManager.SoundId.DOFF;
  public static final SoundManager.SoundId SOUND_ID_DONNED_ON;
  private static final String TAG = DonStateReceiver.class.getSimpleName();
  private static long donnedTimestamp = -1L;
  private static boolean gotFirstBroadcast = false;

  static
  {
    SOUND_ID_DONNED_ON = SoundManager.SoundId.DON;
  }

  private String getDoffedEventTuple(Context paramContext, long paramLong)
  {
    if (isDonDetectorEnabled(paramContext));
    for (String str = "1"; ; str = "0")
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "don_time_ms";
      arrayOfObject[1] = Long.valueOf(paramLong);
      return UserEventHelper.createEventTuple("ohd_active", str, arrayOfObject);
    }
  }

  private String getDonnedEventTuple(Context paramContext)
  {
    if (isDonDetectorEnabled(paramContext));
    for (String str = "1"; ; str = "0")
      return UserEventHelper.createEventTuple("ohd_active", str, new Object[0]);
  }

  private static boolean isDonDetectorEnabled(Context paramContext)
  {
    return HiddenApiHelper.isDonDoffDetectorEnabled(paramContext);
  }

  private void logDoffedUserEvent(Context paramContext)
  {
    long l = 0L;
    if (donnedTimestamp != -1L)
    {
      l = SystemClock.elapsedRealtime() - donnedTimestamp;
      if (l < 0L)
      {
        Log.w(TAG, "Error: donned time was negative?  Logging 0 for the user event.");
        l = 0L;
      }
    }
    donnedTimestamp = -1L;
    logUserEvent(paramContext, UserEventAction.DOFFED, getDoffedEventTuple(paramContext, l));
    Log.d(getTag(), "Logging doffed user event with donned time ms = " + Long.toString(l));
  }

  public static void logDonDetectorStateUserEvent(Context paramContext)
  {
    boolean bool = isDonDetectorEnabled(paramContext);
    UserEventHelper localUserEventHelper = GlassApplication.from(paramContext).getUserEventHelper();
    if (bool)
    {
      Log.d(TAG, "Logging user event for DON_DETECTOR_ENABLED.");
      localUserEventHelper.log(UserEventAction.DON_DETECTOR_ENABLED);
      return;
    }
    Log.d(TAG, "Logging user event for DON_DETECTOR_DISABLED.");
    localUserEventHelper.log(UserEventAction.DON_DETECTOR_DISABLED);
  }

  private void logDonStateChanged(Context paramContext, Intent paramIntent)
  {
    if (DonState.isDonned(paramIntent))
    {
      logDonnedUserEvent(paramContext);
      return;
    }
    logDoffedUserEvent(paramContext);
  }

  private void logDonnedUserEvent(Context paramContext)
  {
    donnedTimestamp = SystemClock.elapsedRealtime();
    boolean bool = isDonDetectorEnabled(paramContext);
    Log.d(getTag(), "Logging donned user event.  detectorEnabled=" + bool);
    logUserEvent(paramContext, UserEventAction.DONNED, getDonnedEventTuple(paramContext));
    logUserEvent(paramContext, UserEventAction.USER_INITIATED_SCREEN_ON, "11");
  }

  private void playSoundForDonStateChange(Context paramContext, Intent paramIntent)
  {
    if (gotFirstBroadcast)
    {
      SoundManager.SoundId localSoundId = getSoundIdForDonnedState(checkDonnedState(paramContext, paramIntent));
      GlassApplication.from(paramContext).getSoundManager().playSound(localSoundId);
    }
  }

  @VisibleForTesting
  protected boolean checkDonnedState(Context paramContext, Intent paramIntent)
  {
    boolean bool = DonState.isDonned(paramIntent);
    Log.d(TAG, "Device is donned? " + bool);
    return bool;
  }

  @VisibleForTesting
  protected SoundManager.SoundId getSoundIdForDonnedState(boolean paramBoolean)
  {
    if (paramBoolean)
      return SOUND_ID_DONNED_ON;
    return SOUND_ID_DONNED_OFF;
  }

  protected String getTag()
  {
    return TAG;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("com.google.glass.action.DON_STATE".equals(str))
    {
      Log.d(TAG, "Received action: " + str);
      playSoundForDonStateChange(paramContext, paramIntent);
      logDonStateChanged(paramContext, paramIntent);
      gotFirstBroadcast = true;
      return;
    }
    Log.d(TAG, "Unknown action received: " + str);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.DonStateReceiver
 * JD-Core Version:    0.6.2
 */
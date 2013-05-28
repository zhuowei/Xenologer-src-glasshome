package com.google.glass.gesture;

import android.content.Context;
import android.os.AsyncTask;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;
import com.google.glass.util.Assert;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.PriorityThreadFactory;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class EyeGestureUtils
{
  public static final String ACTION_PRELOAD_RESOURCES = "com.google.glass.gesture.action.PRELOAD_RESOURCES";
  public static final String ACTION_WINK_CALIBRATION = "com.google.glass.action.ACTION_WINK_CALIBRATION";
  public static final String ACTION_WINK_CALIBRATION_TIPS = "com.google.glass.action.ACTION_WINK_CALIBRATION_TIPS";
  private static final long MAX_WAKE_LOCK_DURATION_MILLIS = TimeUnit.SECONDS.toMillis(10L);
  private static final Executor SERIAL_EXECUTOR;
  public static final String TAG = EyeGestureUtils.class.getSimpleName();
  private static PowerManager.WakeLock wakeLockSingleton;

  static
  {
    SERIAL_EXECUTOR = Executors.newSingleThreadExecutor(new PriorityThreadFactory(5, TAG + ":AsyncSerialExecutor"));
  }

  public static void enableGazeServiceAsync(final Context paramContext, boolean paramBoolean)
  {
    try
    {
      Assert.assertUiThread();
      Log.v(TAG, "Incrementing wake lock.");
      getWakeLockInstance(paramContext).acquire(MAX_WAKE_LOCK_DURATION_MILLIS);
      new AsyncTask()
      {
        protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
        {
          Log.d(EyeGestureUtils.TAG, "Executing switch of GazeService master enable to " + this.val$enableState);
          HiddenApiHelper.enableGazeService(paramContext, this.val$enableState);
          return null;
        }

        protected void onPostExecute(Void paramAnonymousVoid)
        {
          Log.v(EyeGestureUtils.TAG, "Decrementing wake lock.");
          PowerManager.WakeLock localWakeLock = EyeGestureUtils.getWakeLockInstance(paramContext);
          if ((localWakeLock != null) && (localWakeLock.isHeld()))
            localWakeLock.release();
        }
      }
      .executeOnExecutor(SERIAL_EXECUTOR, new Void[0]);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void enableGazeServiceGuestModeAsync(final Context paramContext, boolean paramBoolean)
  {
    try
    {
      Assert.assertUiThread();
      Log.v(TAG, "Incrementing wake lock.");
      getWakeLockInstance(paramContext).acquire(MAX_WAKE_LOCK_DURATION_MILLIS);
      new AsyncTask()
      {
        protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
        {
          Log.d(EyeGestureUtils.TAG, "Executing setting of GazeService Guest Mode to " + this.val$enableState);
          HiddenApiHelper.enableGazeServiceGuestMode(paramContext, this.val$enableState);
          return null;
        }

        protected void onPostExecute(Void paramAnonymousVoid)
        {
          Log.v(EyeGestureUtils.TAG, "Decrementing wake lock.");
          PowerManager.WakeLock localWakeLock = EyeGestureUtils.getWakeLockInstance(paramContext);
          if ((localWakeLock != null) && (localWakeLock.isHeld()))
            localWakeLock.release();
        }
      }
      .executeOnExecutor(SERIAL_EXECUTOR, new Void[0]);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static PowerManager.WakeLock getWakeLockInstance(Context paramContext)
  {
    try
    {
      if (wakeLockSingleton == null)
      {
        wakeLockSingleton = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, TAG + ":WakeLock");
        wakeLockSingleton.setReferenceCounted(true);
      }
      PowerManager.WakeLock localWakeLock = wakeLockSingleton;
      return localWakeLock;
    }
    finally
    {
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.gesture.EyeGestureUtils
 * JD-Core Version:    0.6.2
 */
package com.google.glass.home;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.glass.home.settings.HeadWakeAngleChooserActivity;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.SafeBroadcastReceiver;

public final class HeadGestureSettingsReceiver extends SafeBroadcastReceiver
{
  public static final String TAG = HeadGestureSettingsReceiver.class.getSimpleName();

  private void loadAndExecuteSettingsAsync(final Context paramContext)
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        float f1 = HeadWakeAngleChooserActivity.getHeadWakeAngleDegs(paramContext);
        float f2 = HeadWakeAngleChooserActivity.getHeadWakeHysteresisAngleDegs(paramContext);
        Log.i(HeadGestureSettingsReceiver.TAG, "Setting the head wake angles: trigger=" + f1 + " hysteresis=" + f2);
        HiddenApiHelper.setGlobalLookUpGestureParameters(paramContext, f1, f2);
      }
    });
  }

  protected String getTag()
  {
    return TAG;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.BOOT_COMPLETED".equals(paramIntent.getAction()))
    {
      Log.i(TAG, "Boot complete.  Loading and setting the user head gesture settings...");
      loadAndExecuteSettingsAsync(paramContext);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.HeadGestureSettingsReceiver
 * JD-Core Version:    0.6.2
 */
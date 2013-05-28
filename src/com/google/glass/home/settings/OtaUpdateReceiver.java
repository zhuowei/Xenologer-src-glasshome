package com.google.glass.home.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.glass.util.OtaUpdateHelper;

public final class OtaUpdateReceiver extends BroadcastReceiver
{
  private static final String TAG = OtaUpdateReceiver.class.getSimpleName();

  public void onReceive(final Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (("android.server.checkin.CHECKIN".equals(str)) || ("com.google.glass.action.CHECKIN_SUCCESSFUL".equals(str)))
    {
      AsyncTask.execute(new Runnable()
      {
        public void run()
        {
          OtaUpdateHelper.setLastCheckinTime(paramContext);
        }
      });
      return;
    }
    Log.d(TAG, "Received unknown action: " + str);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.OtaUpdateReceiver
 * JD-Core Version:    0.6.2
 */
package com.google.glass.home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.glass.app.GlassApplication;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.home.search.VoiceSearchActivity;
import com.google.glass.util.InetConnectionState;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;

public final class LongTapReceiver extends BroadcastReceiver
{
  private static final String TAG = LongTapReceiver.class.getSimpleName();

  public static boolean maySearchOnLongTap(Context paramContext)
  {
    if (!GlassApplication.from(paramContext).getConnectionState().isConnected());
    while (BluetoothHeadset.isInCallOrCallSetup(paramContext))
      return false;
    return true;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Log.d(TAG, "Received intent: " + paramIntent);
    if (!"com.google.glass.action.LONG_TAP".equals(paramIntent.getAction()));
    do
    {
      do
        return;
      while ((!Labs.isEnabled(Labs.Feature.LONG_TAP_UI_SEARCH)) || (!maySearchOnLongTap(paramContext)));
      paramContext.startActivity(new Intent(paramContext, VoiceSearchActivity.class).putExtra("called_by_press_to_search", true).putExtra("should_play_initial_sound", true).putExtra("trigger_method", 3).addFlags(268435456));
    }
    while (!isOrderedBroadcast());
    setResultCode(-1);
    abortBroadcast();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.LongTapReceiver
 * JD-Core Version:    0.6.2
 */
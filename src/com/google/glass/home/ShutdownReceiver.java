package com.google.glass.home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.glass.app.GlassApplication;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;

public final class ShutdownReceiver extends BroadcastReceiver
{
  private static final String TAG = ShutdownReceiver.class.getSimpleName();

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!"android.intent.action.ACTION_SHUTDOWN".equals(paramIntent.getAction()))
      return;
    Log.d(TAG, "Caught shutdown intent from system.");
    GlassApplication.from(paramContext).getSoundManager().playSound(SoundManager.SoundId.SHUT_DOWN);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.ShutdownReceiver
 * JD-Core Version:    0.6.2
 */
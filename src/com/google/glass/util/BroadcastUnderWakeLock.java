package com.google.glass.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;

public final class BroadcastUnderWakeLock
{
  public static final String TAG = BroadcastUnderWakeLock.class.getSimpleName();
  private static final long WAKE_LOCK_TIMEOUT_MILLIS = 10000L;

  private static PowerManager getPowerManager(Context paramContext)
  {
    return (PowerManager)paramContext.getSystemService("power");
  }

  public static void sendBroadcastUnderWakeLock(Context paramContext, Intent paramIntent, String paramString)
  {
    Log.v(TAG, "sendBroadcastUnderWakeLock called with intent= " + paramIntent + "  name=" + paramString);
    paramContext.sendOrderedBroadcast(paramIntent, null, new WakeLockHoldingReceiver(paramContext, paramString), null, -1, null, null);
  }

  private static class WakeLockHoldingReceiver extends BroadcastReceiver
  {
    private final PowerManager.WakeLock wakeLock;
    private final String wakeLockName;

    public WakeLockHoldingReceiver(Context paramContext, String paramString)
    {
      this.wakeLockName = paramString;
      this.wakeLock = BroadcastUnderWakeLock.getPowerManager(paramContext).newWakeLock(1, paramString);
      this.wakeLock.setReferenceCounted(false);
      acquireLock();
    }

    private void acquireLock()
    {
      Log.v(BroadcastUnderWakeLock.TAG, "Acquiring broadcast wakelock: " + this.wakeLockName);
      this.wakeLock.acquire(10000L);
    }

    private void releaseLock()
    {
      try
      {
        Log.v(BroadcastUnderWakeLock.TAG, "Releasing broadcast wakelock: " + this.wakeLockName);
        if (this.wakeLock.isHeld())
          this.wakeLock.release();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      releaseLock();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.BroadcastUnderWakeLock
 * JD-Core Version:    0.6.2
 */
package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.UserEventHelper;

public class BatteryHelper
{
  private static final String TAG = BatteryHelper.class.getSimpleName();
  private static final int UNKNOWN_LEVEL = -1;
  private static final int UNKNOWN_SCALE = -1;
  private final Context context;

  public BatteryHelper(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
  }

  public float getChargePercent()
  {
    return getChargePercent(null);
  }

  public float getChargePercent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
        Log.w(TAG, "Unknown battery state.");
    }
    int i;
    int j;
    do
    {
      return -1.0F;
      i = paramIntent.getIntExtra("level", -1);
      j = paramIntent.getIntExtra("scale", -1);
    }
    while ((i == -1) || (j == -1));
    float f = 100.0F * (i / j);
    Log.v(TAG, "Current battery percent: " + f);
    return f;
  }

  public BatteryState getCurrentState()
  {
    return getCurrentState(null);
  }

  public BatteryState getCurrentState(Intent paramIntent)
  {
    BatteryState localBatteryState = new BatteryState();
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        Log.w(TAG, "Unknown battery state.");
        return localBatteryState;
      }
    }
    localBatteryState.percent = getChargePercent(paramIntent);
    localBatteryState.isCharged = isCharged(paramIntent);
    localBatteryState.isCharging = isCharging(paramIntent);
    localBatteryState.isPowered = isPowered(paramIntent);
    localBatteryState.timeToDischarge = getTimeToDischarge(paramIntent);
    return localBatteryState;
  }

  public long getTimeToDischarge()
  {
    return getTimeToDischarge(null);
  }

  public long getTimeToDischarge(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        Log.w(TAG, "Unknown battery state.");
        return -1L;
      }
    }
    return paramIntent.getIntExtra("time_to_empty", -1);
  }

  public boolean isCharged()
  {
    return isCharged(null);
  }

  public boolean isCharged(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        Log.w(TAG, "Unknown battery state.");
        return false;
      }
    }
    if (paramIntent.getIntExtra("status", 1) == 5)
    {
      bool = true;
      if (!bool)
      {
        Log.i(TAG, "Driver is not reporting charged, checking percent.");
        if (getChargePercent(paramIntent) < 95.0F)
          break label96;
      }
    }
    label96: for (boolean bool = true; ; bool = false)
    {
      Log.v(TAG, "Battery is charged? " + bool);
      return bool;
      bool = false;
      break;
    }
  }

  public boolean isCharging()
  {
    return isCharging(null);
  }

  public boolean isCharging(Intent paramIntent)
  {
    int i = 1;
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        Log.w(TAG, "Unknown battery state.");
        return false;
      }
    }
    if (paramIntent.getIntExtra("status", i) == 2);
    while (true)
    {
      Log.v(TAG, "Battery currently charging? " + i);
      return i;
      int j = 0;
    }
  }

  public boolean isPowered()
  {
    return isPowered(null);
  }

  public boolean isPowered(Intent paramIntent)
  {
    boolean bool1 = true;
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        Log.w(TAG, "Unknown battery state.");
        return false;
      }
    }
    boolean bool2;
    if (paramIntent.getIntExtra("plugged", 0) != 0)
    {
      bool2 = bool1;
      boolean bool3 = isCharging(paramIntent);
      boolean bool4 = isCharged(paramIntent);
      if ((!bool2) || ((!bool3) && (!bool4)))
        break label73;
    }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label73: bool1 = false;
    }
  }

  @VisibleForTesting
  Intent retrieveCurrentIntent()
  {
    return this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
  }

  public static class BatteryState
  {
    public static final int PERCENT_CHARGED = 95;
    public static final int PERCENT_LOW = 10;
    public static final int PERCENT_MEDIUM = 30;
    public static final int PERCENT_UNKNOWN = -1;
    public static final int TIME_TO_EMPTY_UNKNOWN = -1;
    public boolean isCharged;
    public boolean isCharging;
    public boolean isPowered;
    public float percent;
    public long timeToDischarge;

    public String getUserEventActionData(String paramString)
    {
      Object[] arrayOfObject = new Object[10];
      arrayOfObject[0] = "p";
      arrayOfObject[1] = Float.valueOf(this.percent);
      arrayOfObject[2] = "t";
      arrayOfObject[3] = Long.valueOf(this.timeToDischarge);
      arrayOfObject[4] = "cg";
      arrayOfObject[5] = Boolean.valueOf(this.isCharging);
      arrayOfObject[6] = "cd";
      arrayOfObject[7] = Boolean.valueOf(this.isCharged);
      arrayOfObject[8] = "ip";
      arrayOfObject[9] = Boolean.valueOf(this.isPowered);
      return UserEventHelper.createEventTuple("a", paramString, arrayOfObject);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.BatteryHelper
 * JD-Core Version:    0.6.2
 */
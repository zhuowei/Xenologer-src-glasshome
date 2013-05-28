package com.google.glass.hidden;

import android.content.Context;
import android.content.Intent;

public final class BatteryIndicator
{
  private static final String ACTION_SHOW = "com.google.glass.systemui.ACTION_SHOW_BATTERY";
  private static final String EXTRA_SHOW = "show";

  public static void show(Context paramContext, boolean paramBoolean)
  {
    paramContext.sendBroadcast(new Intent("com.google.glass.systemui.ACTION_SHOW_BATTERY").putExtra("show", paramBoolean));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.BatteryIndicator
 * JD-Core Version:    0.6.2
 */
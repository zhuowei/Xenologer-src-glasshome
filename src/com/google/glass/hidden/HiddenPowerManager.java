package com.google.glass.hidden;

import android.content.Context;
import android.os.PowerManager;

public final class HiddenPowerManager
{
  public static final String EXTRA_SCREEN_OFF = "screen_off";

  public static void preventScreenOn(Context paramContext, boolean paramBoolean)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker((PowerManager)paramContext.getSystemService("power"), "preventScreenOn", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localMethodInvoker.invoke(arrayOfObject);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.HiddenPowerManager
 * JD-Core Version:    0.6.2
 */
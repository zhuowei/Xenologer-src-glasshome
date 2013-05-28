package com.google.glass.hidden;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public final class DonState
{
  public static final String ACTION_DON_STATE = "com.google.glass.action.DON_STATE";
  public static final String EXTRA_IS_DONNED = "is_donned";

  public static boolean isDonned(Context paramContext)
  {
    return isDonned(paramContext.getApplicationContext().registerReceiver(null, new IntentFilter("com.google.glass.action.DON_STATE")));
  }

  public static boolean isDonned(Intent paramIntent)
  {
    return (paramIntent == null) || (paramIntent.getBooleanExtra("is_donned", true));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.DonState
 * JD-Core Version:    0.6.2
 */
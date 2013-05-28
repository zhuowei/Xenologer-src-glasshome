package com.google.glass.util;

import android.content.Context;
import android.content.Intent;

public class ReloginHelper
{
  public static final String ACTION_HIDE_RELOGIN = "com.google.glass.action.RELOGIN_HIDE";
  private Context context;

  public ReloginHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  public void hideActiveItem()
  {
    this.context.sendBroadcast(new Intent("com.google.glass.action.RELOGIN_HIDE"));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ReloginHelper
 * JD-Core Version:    0.6.2
 */
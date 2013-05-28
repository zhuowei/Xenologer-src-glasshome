package com.google.glass.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;

public abstract class SafeBroadcastReceiver extends BroadcastReceiver
{
  private static final String TAG = SafeBroadcastReceiver.class.getSimpleName();
  private boolean isRegistered;

  protected abstract String getTag();

  protected UserEventHelper getUserEventHelper(Context paramContext)
  {
    return new UserEventHelper(paramContext);
  }

  public boolean isRegistered()
  {
    return this.isRegistered;
  }

  protected void logUserEvent(Context paramContext, UserEventAction paramUserEventAction)
  {
    getUserEventHelper(paramContext).log(paramUserEventAction);
  }

  protected void logUserEvent(Context paramContext, UserEventAction paramUserEventAction, String paramString)
  {
    getUserEventHelper(paramContext).log(paramUserEventAction, paramString);
  }

  public Intent register(Context paramContext, IntentFilter paramIntentFilter)
  {
    return register(paramContext, paramIntentFilter, null);
  }

  public Intent register(Context paramContext, IntentFilter paramIntentFilter, String paramString)
  {
    if (this.isRegistered)
    {
      Log.w(TAG, "Not registering receiver '" + getTag() + "', because it is already registered.");
      return null;
    }
    if (TextUtils.isEmpty(paramString));
    for (Intent localIntent = paramContext.registerReceiver(this, paramIntentFilter); ; localIntent = paramContext.registerReceiver(this, paramIntentFilter, paramString, null))
    {
      this.isRegistered = true;
      Log.d(TAG, "Registered receiver '" + getTag() + "'.");
      return localIntent;
    }
  }

  public Intent register(Context paramContext, String[] paramArrayOfString)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      localIntentFilter.addAction(paramArrayOfString[j]);
    return register(paramContext, localIntentFilter);
  }

  public String toString()
  {
    return getTag();
  }

  public void unregister(Context paramContext)
  {
    if (!this.isRegistered)
    {
      Log.w(TAG, "Not unregistering receiver '" + getTag() + "', because it is not registered.");
      return;
    }
    paramContext.unregisterReceiver(this);
    this.isRegistered = false;
    Log.d(TAG, "Unregistered receiver '" + getTag() + "'.");
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.SafeBroadcastReceiver
 * JD-Core Version:    0.6.2
 */
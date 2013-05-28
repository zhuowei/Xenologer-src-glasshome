package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class InetConnectionState
{
  private static final String EXTRA_INET_CONDITION = HiddenApiHelper.getConnectivityManagerExtraInetCondition();
  private static final String INET_CONDITION_ACTION;
  private static final int INET_CONDITION_THRESHOLD = 50;
  private static final String TAG = InetConnectionState.class.getSimpleName();
  private final ConnectivityManager connectivityManager;
  private SafeBroadcastReceiver connectivityReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return InetConnectionState.TAG + "/connectivityReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      boolean bool = InetConnectionState.this.isConnected();
      if (bool == InetConnectionState.this.prevState);
      while (true)
      {
        return;
        InetConnectionState.access$002(InetConnectionState.this, bool);
        Iterator localIterator = InetConnectionState.this.listeners.iterator();
        while (localIterator.hasNext())
          ((InetConnectionState.Listener)localIterator.next()).onConnectivityChanged(bool);
      }
    }
  };
  private final Context context;
  private final Set<Listener> listeners;
  private boolean prevState;

  static
  {
    INET_CONDITION_ACTION = HiddenApiHelper.getConnectivityManagerInetConditionAction();
  }

  public InetConnectionState(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
    this.connectivityManager = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
    this.listeners = new HashSet();
  }

  public void addListener(Listener paramListener)
  {
    this.prevState = isConnected();
    this.listeners.add(paramListener);
    paramListener.onConnectivityChanged(this.prevState);
    if (!this.listeners.isEmpty())
    {
      SafeBroadcastReceiver localSafeBroadcastReceiver = this.connectivityReceiver;
      Context localContext = this.context;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = INET_CONDITION_ACTION;
      localSafeBroadcastReceiver.register(localContext, arrayOfString);
    }
  }

  public boolean isConnected()
  {
    if (this.connectivityManager.getActiveNetworkInfo() == null);
    Intent localIntent;
    do
    {
      return false;
      localIntent = this.context.registerReceiver(null, new IntentFilter(INET_CONDITION_ACTION));
    }
    while ((localIntent == null) || (localIntent.getIntExtra(EXTRA_INET_CONDITION, 0) <= 50));
    return true;
  }

  public void removeListener(Listener paramListener)
  {
    this.listeners.remove(paramListener);
    if (this.listeners.isEmpty())
      this.connectivityReceiver.unregister(this.context);
  }

  public static abstract interface Listener
  {
    public abstract void onConnectivityChanged(boolean paramBoolean);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.InetConnectionState
 * JD-Core Version:    0.6.2
 */
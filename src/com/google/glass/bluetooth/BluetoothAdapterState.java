package com.google.glass.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.glass.util.SafeBroadcastReceiver;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class BluetoothAdapterState
{
  private static final String TAG = BluetoothAdapterState.class.getSimpleName();
  private final Context context;
  private final Set<Listener> listeners;
  private final SafeBroadcastReceiver stateChangeReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return BluetoothAdapterState.TAG + "/bluetoothAdapterStateChangeReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (!"android.bluetooth.adapter.action.STATE_CHANGED".contentEquals(paramAnonymousIntent.getAction()));
      while (true)
      {
        return;
        int i = paramAnonymousIntent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10);
        if (i == 12)
        {
          Iterator localIterator2 = BluetoothAdapterState.this.listeners.iterator();
          while (localIterator2.hasNext())
            ((BluetoothAdapterState.Listener)localIterator2.next()).onBluetoothAdapterEnabled();
        }
        else if (i == 10)
        {
          Iterator localIterator1 = BluetoothAdapterState.this.listeners.iterator();
          while (localIterator1.hasNext())
            ((BluetoothAdapterState.Listener)localIterator1.next()).onBluetoothAdapterDisabled();
        }
      }
    }
  };

  public BluetoothAdapterState(Context paramContext)
  {
    this.context = paramContext;
    this.listeners = new HashSet();
  }

  public void addListener(Listener paramListener)
  {
    if ((!this.listeners.add(paramListener)) || (BluetoothAdapter.getDefaultAdapter() == null));
    while (true)
    {
      return;
      if (BluetoothAdapter.getDefaultAdapter().isEnabled())
        paramListener.onBluetoothAdapterEnabled();
      while (this.listeners.size() == 1)
      {
        IntentFilter localIntentFilter = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
        this.stateChangeReceiver.register(this.context, localIntentFilter);
        return;
        paramListener.onBluetoothAdapterDisabled();
      }
    }
  }

  public void removeListener(Listener paramListener)
  {
    this.listeners.remove(paramListener);
    if (this.listeners.size() == 0)
      this.stateChangeReceiver.unregister(this.context);
  }

  public static abstract interface Listener
  {
    public abstract void onBluetoothAdapterDisabled();

    public abstract void onBluetoothAdapterEnabled();
  }

  public abstract class SimpleListener
  {
    public SimpleListener()
    {
    }

    public void onBluetoothAdapterDisabled()
    {
    }

    public void onBluetoothAdapterEnabled()
    {
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.BluetoothAdapterState
 * JD-Core Version:    0.6.2
 */
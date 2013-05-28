package com.google.glass.companion;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.util.Assert;
import java.util.HashSet;
import java.util.Set;

public class UuidFetcher
{
  private static final String ACTION_BLUETOOTHDEVICE_UUID = "android.bluetooth.device.action.UUID";
  private static final IntentFilter BT_UUID_RECEIVER_INTENT = new IntentFilter("android.bluetooth.device.action.UUID");
  private static final String EXTRA_BLUETOOTHDEVICE_UUID = "android.bluetooth.device.extra.UUID";
  private static final String TAG = UuidFetcher.class.getSimpleName();
  private final BroadcastReceiver btUuidReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      BluetoothDevice localBluetoothDevice;
      if (("android.bluetooth.device.action.UUID".equals(paramAnonymousIntent.getAction())) && (!UuidFetcher.this.pendingAddresses.isEmpty()))
      {
        localBluetoothDevice = (BluetoothDevice)paramAnonymousIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        if (localBluetoothDevice == null)
          Log.d(UuidFetcher.TAG, "looking for addresses " + UuidFetcher.this.pendingAddresses + " but got null");
      }
      else
      {
        return;
      }
      UuidFetcher.this.onUuidReceived(new BluetoothDeviceWrapper(localBluetoothDevice));
    }
  };
  private final Callback callback;
  private Context context;
  private final Set<String> pendingAddresses = new HashSet();
  private boolean uuidReceiverRegistered = false;

  public UuidFetcher(Context paramContext, Callback paramCallback)
  {
    this.context = paramContext;
    this.callback = paramCallback;
  }

  public boolean fetch(BluetoothDeviceWrapper paramBluetoothDeviceWrapper)
  {
    Assert.assertUiThread();
    if (paramBluetoothDeviceWrapper == null);
    while (this.pendingAddresses.contains(paramBluetoothDeviceWrapper.getAddress()))
      return false;
    this.pendingAddresses.add(paramBluetoothDeviceWrapper.getAddress());
    internalFetch(paramBluetoothDeviceWrapper);
    return true;
  }

  @VisibleForTesting
  void internalFetch(BluetoothDeviceWrapper paramBluetoothDeviceWrapper)
  {
    paramBluetoothDeviceWrapper.fetchUuidsWithSdp();
  }

  @VisibleForTesting
  public void onUuidReceived(BluetoothDeviceWrapper paramBluetoothDeviceWrapper)
  {
    if (!this.pendingAddresses.contains(paramBluetoothDeviceWrapper.getAddress()))
    {
      Log.d(TAG, "looking for addresses " + this.pendingAddresses + " but it got " + paramBluetoothDeviceWrapper.loggableDevice());
      return;
    }
    this.pendingAddresses.remove(paramBluetoothDeviceWrapper.getAddress());
    this.callback.onUuidFetchCallback(paramBluetoothDeviceWrapper);
  }

  public void register()
  {
    synchronized (this.btUuidReceiver)
    {
      if (this.uuidReceiverRegistered)
        return;
      this.context.registerReceiver(this.btUuidReceiver, BT_UUID_RECEIVER_INTENT);
      this.uuidReceiverRegistered = true;
      return;
    }
  }

  public void unregister()
  {
    synchronized (this.btUuidReceiver)
    {
      if (!this.uuidReceiverRegistered)
        return;
      this.context.unregisterReceiver(this.btUuidReceiver);
      this.uuidReceiverRegistered = false;
      return;
    }
  }

  public static abstract interface Callback
  {
    public abstract void onUuidFetchCallback(BluetoothDeviceWrapper paramBluetoothDeviceWrapper);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.UuidFetcher
 * JD-Core Version:    0.6.2
 */
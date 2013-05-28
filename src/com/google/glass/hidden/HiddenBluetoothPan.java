package com.google.glass.hidden;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import java.util.List;

public class HiddenBluetoothPan
{
  public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED";

  public static void connect(BluetoothProfile paramBluetoothProfile, BluetoothDevice paramBluetoothDevice)
  {
    new MethodInvoker(paramBluetoothProfile, "connect", BluetoothDevice.class).invoke(new Object[] { paramBluetoothDevice });
  }

  public static void disconnect(BluetoothProfile paramBluetoothProfile, BluetoothDevice paramBluetoothDevice)
  {
    new MethodInvoker(paramBluetoothProfile, "disconnect", BluetoothDevice.class).invoke(new Object[] { paramBluetoothDevice });
  }

  public static List<BluetoothDevice> getConnectedDevices(BluetoothProfile paramBluetoothProfile)
  {
    return (List)new MethodInvoker(paramBluetoothProfile, "getConnectedDevices").invoke(new Object[0]);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.HiddenBluetoothPan
 * JD-Core Version:    0.6.2
 */
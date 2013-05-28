package com.google.glass.hidden;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import java.io.IOException;

public final class HiddenBluetoothDevice
{
  public static final String ACTION_PAIRING_CANCEL = "android.bluetooth.device.action.PAIRING_CANCEL";

  public static void cancelPairingUserInput(BluetoothDevice paramBluetoothDevice)
  {
    new MethodInvoker(paramBluetoothDevice, "cancelPairingUserInput").invoke(new Object[0]);
  }

  public static byte[] convertPinToBytes(BluetoothDevice paramBluetoothDevice, String paramString)
  {
    return (byte[])new MethodInvoker(paramBluetoothDevice, "convertPinToBytes", String.class).invoke(new Object[] { paramString });
  }

  public static boolean createBond(BluetoothDevice paramBluetoothDevice)
  {
    return ((Boolean)new MethodInvoker(paramBluetoothDevice, "createBond").invoke(new Object[0])).booleanValue();
  }

  public static BluetoothSocket createScoSocket(BluetoothDevice paramBluetoothDevice)
    throws IOException
  {
    return (BluetoothSocket)new MethodInvoker(paramBluetoothDevice, "createScoSocket").invoke(new Object[0]);
  }

  public static void removeBond(BluetoothDevice paramBluetoothDevice)
  {
    new MethodInvoker(paramBluetoothDevice, "removeBond").invoke(new Object[0]);
  }

  public static void setPairingConfirmation(BluetoothDevice paramBluetoothDevice, boolean paramBoolean)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(paramBluetoothDevice, "setPairingConfirmation", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localMethodInvoker.invoke(arrayOfObject);
  }

  public static void setPin(BluetoothDevice paramBluetoothDevice, byte[] paramArrayOfByte)
  {
    new MethodInvoker(paramBluetoothDevice, "setPin", paramArrayOfByte.getClass()).invoke(new Object[] { paramArrayOfByte });
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.HiddenBluetoothDevice
 * JD-Core Version:    0.6.2
 */
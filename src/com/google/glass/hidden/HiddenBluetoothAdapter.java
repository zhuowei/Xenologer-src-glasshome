package com.google.glass.hidden;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothServerSocket;

public final class HiddenBluetoothAdapter
{
  public static BluetoothServerSocket listenUsingInsecureRfcommOn(int paramInt)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(BluetoothAdapter.getDefaultAdapter(), "listenUsingInsecureRfcommOn", Integer.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return (BluetoothServerSocket)localMethodInvoker.invoke(arrayOfObject);
  }

  public static BluetoothServerSocket listenUsingRfcommOn(int paramInt)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(BluetoothAdapter.getDefaultAdapter(), "listenUsingRfcommOn", Integer.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return (BluetoothServerSocket)localMethodInvoker.invoke(arrayOfObject);
  }

  public static BluetoothServerSocket listenUsingScoOn()
  {
    return (BluetoothServerSocket)new MethodInvoker(BluetoothAdapter.getDefaultAdapter(), "listenUsingScoOn").invoke(new Object[0]);
  }

  public static void setDiscoverableTimeout(int paramInt)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(BluetoothAdapter.getDefaultAdapter(), "setDiscoverableTimeout", Integer.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    localMethodInvoker.invoke(arrayOfObject);
  }

  public static void setScanMode(int paramInt1, int paramInt2)
  {
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Integer.TYPE;
    MethodInvoker localMethodInvoker = new MethodInvoker(BluetoothAdapter.getDefaultAdapter(), "setScanMode", arrayOfClass);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    localMethodInvoker.invoke(arrayOfObject);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.HiddenBluetoothAdapter
 * JD-Core Version:    0.6.2
 */
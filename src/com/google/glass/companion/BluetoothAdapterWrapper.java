package com.google.glass.companion;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import com.google.glass.util.Assert;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class BluetoothAdapterWrapper
{
  private static BluetoothAdapterWrapper instance = new BluetoothAdapterWrapper();
  private final BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();

  public static BluetoothAdapterWrapper getBluetoothAdapterWrapper()
  {
    return instance;
  }

  public static void setBluetoothAdapterWrapperForTest(BluetoothAdapterWrapper paramBluetoothAdapterWrapper)
  {
    Assert.assertIsTest();
    instance = paramBluetoothAdapterWrapper;
  }

  public boolean cancelDiscovery()
  {
    return this.bluetoothAdapter.cancelDiscovery();
  }

  public Set<BluetoothDeviceWrapper> getBondedDeviceWrappers()
  {
    Set localSet = this.bluetoothAdapter.getBondedDevices();
    HashSet localHashSet = new HashSet(localSet.size());
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext())
      localHashSet.add(new BluetoothDeviceWrapper((BluetoothDevice)localIterator.next()));
    return localHashSet;
  }

  public boolean isBluetoothEnabled()
  {
    return (this.bluetoothAdapter != null) && (this.bluetoothAdapter.isEnabled());
  }

  public boolean isDiscovering()
  {
    return this.bluetoothAdapter.isDiscovering();
  }

  public boolean startDiscovery()
  {
    return this.bluetoothAdapter.startDiscovery();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.BluetoothAdapterWrapper
 * JD-Core Version:    0.6.2
 */
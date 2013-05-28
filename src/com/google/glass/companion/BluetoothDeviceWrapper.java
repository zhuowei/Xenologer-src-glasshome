package com.google.glass.companion;

import android.bluetooth.BluetoothDevice;
import com.google.glass.util.BluetoothHelper;
import java.io.IOException;
import java.util.UUID;

public class BluetoothDeviceWrapper
{
  private final BluetoothDevice device;
  private volatile String displayName;

  public BluetoothDeviceWrapper(BluetoothDevice paramBluetoothDevice)
  {
  }

  public BluetoothDeviceWrapper(BluetoothDevice paramBluetoothDevice, String paramString)
  {
    this.device = paramBluetoothDevice;
    this.displayName = paramString;
  }

  public BluetoothSocketWrapper createInsecureRfcommSocketToServiceRecord(UUID paramUUID)
    throws IOException
  {
    return new BluetoothSocketWrapper(this.device.createInsecureRfcommSocketToServiceRecord(paramUUID));
  }

  public BluetoothSocketWrapper createRfcommSocketToServiceRecord(UUID paramUUID)
    throws IOException
  {
    return new BluetoothSocketWrapper(this.device.createRfcommSocketToServiceRecord(paramUUID));
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    Class localClass;
    do
    {
      do
      {
        return bool;
        bool = false;
      }
      while (paramObject == null);
      localClass = paramObject.getClass();
      bool = false;
    }
    while (localClass != BluetoothDeviceWrapper.class);
    return this.device.equals(((BluetoothDeviceWrapper)paramObject).getDevice());
  }

  public void fetchUuidsWithSdp()
  {
    this.device.fetchUuidsWithSdp();
  }

  public String getAddress()
  {
    return this.device.getAddress();
  }

  public int getBondState()
  {
    return this.device.getBondState();
  }

  public BluetoothDevice getDevice()
  {
    return this.device;
  }

  public boolean hasWrappedDevice()
  {
    return this.device != null;
  }

  public int hashCode()
  {
    return this.device.hashCode();
  }

  public boolean isKnownAsGlassDevice()
  {
    return BluetoothHelper.isKnownAsGlassDevice(this.device);
  }

  public boolean isProbablyKnownAsGlassDevice()
  {
    return BluetoothHelper.isProbablyKnownAsGlassDevice(this.device);
  }

  public String loggableDevice()
  {
    return BluetoothHelper.loggableDevice(this.device);
  }

  public String toString()
  {
    return this.displayName;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.BluetoothDeviceWrapper
 * JD-Core Version:    0.6.2
 */
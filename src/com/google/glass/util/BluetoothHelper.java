package com.google.glass.util;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelUuid;
import android.util.Log;
import com.google.glass.bluetooth.BluetoothUuids;
import com.google.glass.companion.BluetoothAdapterWrapper;
import com.google.glass.hidden.HiddenBluetoothAdapter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class BluetoothHelper
{
  private static final int DISCOVERABLE_TIMEOUT_IN_SECONDS = 120;
  private static final String GOOGLE_BLUETOOTH_VENDOR_PREFIX_1 = "00:1A:11";
  private static final String GOOGLE_BLUETOOTH_VENDOR_PREFIX_2 = "F8:8F:CA";
  private static final ParcelUuid IDENTITY_PARCEL_UUID = new ParcelUuid(BluetoothUuids.IDENTITY_UUID);
  private static final String TAG = BluetoothHelper.class.getSimpleName();
  private static final int WEARABLE_GLASSES_DEVICE_CLASS = 1812;

  public static void cancelDiscoverable()
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if ((!isBluetoothEnabled(localBluetoothAdapter)) || (localBluetoothAdapter.getScanMode() != 23))
      return;
    Log.d(TAG, "Canceling discoverability.");
    HiddenBluetoothAdapter.setScanMode(21, 0);
  }

  public static BluetoothDevice getSinglyPairedDevice()
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    Object localObject;
    if (localBluetoothAdapter == null)
    {
      Assert.isTest();
      Log.w(TAG, "This must be a test because there is no bluetooth adapter.");
      localObject = null;
    }
    while (true)
    {
      return localObject;
      Set localSet = localBluetoothAdapter.getBondedDevices();
      localObject = null;
      Iterator localIterator = localSet.iterator();
      while (localIterator.hasNext())
      {
        BluetoothDevice localBluetoothDevice = (BluetoothDevice)localIterator.next();
        if (isSinglyPairableDevice(localBluetoothDevice))
          if (localObject == null)
            localObject = localBluetoothDevice;
          else
            Log.e(TAG, "Paired to more than one Phone/NAP: " + loggableDevice((BluetoothDevice)localObject) + " and " + loggableDevice(localBluetoothDevice));
      }
    }
  }

  public static boolean hasNap(BluetoothDevice paramBluetoothDevice)
  {
    ParcelUuid[] arrayOfParcelUuid = paramBluetoothDevice.getUuids();
    if (arrayOfParcelUuid == null)
      Log.w(TAG, "Don't have SDP records for " + loggableDevice(paramBluetoothDevice));
    while (true)
    {
      return false;
      int i = arrayOfParcelUuid.length;
      for (int j = 0; j < i; j++)
      {
        ParcelUuid localParcelUuid = arrayOfParcelUuid[j];
        if (BluetoothUuids.BLUETOOTH_NAP_UUID.equals(localParcelUuid))
          return true;
      }
    }
  }

  public static boolean hasUuid(BluetoothDevice paramBluetoothDevice)
  {
    if (paramBluetoothDevice == null);
    ParcelUuid[] arrayOfParcelUuid;
    do
    {
      return false;
      arrayOfParcelUuid = paramBluetoothDevice.getUuids();
    }
    while ((arrayOfParcelUuid == null) || (arrayOfParcelUuid.length <= 0));
    return true;
  }

  public static boolean isBluetoothEnabled(BluetoothAdapter paramBluetoothAdapter)
  {
    return (paramBluetoothAdapter != null) && (paramBluetoothAdapter.isEnabled());
  }

  public static boolean isKnownAsGlassDevice(BluetoothDevice paramBluetoothDevice)
  {
    if (paramBluetoothDevice == null);
    ParcelUuid[] arrayOfParcelUuid;
    do
    {
      return false;
      arrayOfParcelUuid = paramBluetoothDevice.getUuids();
    }
    while ((arrayOfParcelUuid == null) || (!Arrays.asList(arrayOfParcelUuid).contains(IDENTITY_PARCEL_UUID)));
    return true;
  }

  public static boolean isPhone(BluetoothDevice paramBluetoothDevice)
  {
    return (paramBluetoothDevice.getBluetoothClass() != null) && (paramBluetoothDevice.getBluetoothClass().getMajorDeviceClass() == 512);
  }

  public static boolean isProbablyKnownAsGlassDevice(BluetoothDevice paramBluetoothDevice)
  {
    if (paramBluetoothDevice == null);
    String str;
    BluetoothClass localBluetoothClass;
    do
    {
      do
      {
        return false;
        ParcelUuid[] arrayOfParcelUuid = paramBluetoothDevice.getUuids();
        str = paramBluetoothDevice.getAddress();
        if (arrayOfParcelUuid != null)
          return Arrays.asList(arrayOfParcelUuid).contains(IDENTITY_PARCEL_UUID);
      }
      while (str == null);
      localBluetoothClass = paramBluetoothDevice.getBluetoothClass();
    }
    while ((localBluetoothClass == null) || ((0x714 & localBluetoothClass.getDeviceClass()) != 1812) || ((!str.startsWith("00:1A:11")) && (!str.startsWith("F8:8F:CA"))));
    return true;
  }

  public static boolean isSinglyPairableDevice(BluetoothDevice paramBluetoothDevice)
  {
    return (isPhone(paramBluetoothDevice)) || (hasNap(paramBluetoothDevice));
  }

  public static String loggableDevice(BluetoothDevice paramBluetoothDevice)
  {
    if (paramBluetoothDevice == null)
      return "null";
    String str = paramBluetoothDevice.getName() + " @ [" + paramBluetoothDevice.getAddress() + "]";
    switch (paramBluetoothDevice.getBondState())
    {
    default:
      return str;
    case 10:
      return str + " NONE";
    case 12:
      return str + " BONDED";
    case 11:
    }
    return str + " BONDING";
  }

  public static void makeBluetoothDiscoverable()
  {
    makeBluetoothDiscoverable(120);
  }

  public static void makeBluetoothDiscoverable(int paramInt)
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if ((!isBluetoothEnabled(localBluetoothAdapter)) || (localBluetoothAdapter.getScanMode() == 23))
      return;
    Log.d(TAG, "Enabling discoverability for " + paramInt + "s");
    HiddenBluetoothAdapter.setDiscoverableTimeout(paramInt);
    HiddenBluetoothAdapter.setScanMode(23, paramInt);
  }

  public static void tether(Context paramContext)
  {
    paramContext.sendBroadcast(new Intent("com.google.glass.bluetooth.ACTION_TETHER"));
  }

  public static void tether(Context paramContext, BluetoothDevice paramBluetoothDevice)
  {
  }

  public static final class IntervalDiscoveringKeeper
  {
    public static final long DISCOVER_INTERVAL_MS = 58000L;
    private final BluetoothAdapterWrapper btAdapterWrapper = BluetoothAdapterWrapper.getBluetoothAdapterWrapper();
    private final SafeBroadcastReceiver discoveringProcessReceiver;
    private final Handler handler;
    private boolean isKeptDiscovering;

    public IntervalDiscoveringKeeper()
    {
      Assert.assertUiThread();
      this.handler = new Handler(Looper.getMainLooper());
      this.discoveringProcessReceiver = new SafeBroadcastReceiver()
      {
        protected String getTag()
        {
          return BluetoothHelper.TAG + "/discoveringProcessReceiver";
        }

        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          String str = paramAnonymousIntent.getAction();
          Log.i(getTag(), "receive " + str);
          if ("android.bluetooth.adapter.action.DISCOVERY_STARTED".equals(str))
            if (BluetoothHelper.IntervalDiscoveringKeeper.this.btAdapterWrapper.isBluetoothEnabled())
              BluetoothHelper.IntervalDiscoveringKeeper.this.btAdapterWrapper.cancelDiscovery();
          while (!"android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(str))
            return;
          BluetoothHelper.IntervalDiscoveringKeeper.this.handler.removeCallbacksAndMessages(null);
          BluetoothHelper.IntervalDiscoveringKeeper.this.handler.postDelayed(new Runnable()
          {
            public void run()
            {
              if (BluetoothHelper.IntervalDiscoveringKeeper.this.btAdapterWrapper.isBluetoothEnabled())
                BluetoothHelper.IntervalDiscoveringKeeper.this.btAdapterWrapper.startDiscovery();
            }
          }
          , 58000L);
        }
      };
      this.isKeptDiscovering = false;
    }

    public void start(Context paramContext)
    {
      Log.i(BluetoothHelper.TAG, "start with isKeptDiscovering = " + this.isKeptDiscovering);
      Assert.assertUiThread();
      if (this.isKeptDiscovering);
      do
      {
        return;
        this.handler.removeCallbacksAndMessages(null);
        this.isKeptDiscovering = true;
        this.discoveringProcessReceiver.register(paramContext, new String[] { "android.bluetooth.adapter.action.DISCOVERY_STARTED", "android.bluetooth.adapter.action.DISCOVERY_FINISHED" });
        if (!this.btAdapterWrapper.isBluetoothEnabled())
        {
          Log.d(BluetoothHelper.TAG, "Bluetooth is disabled.");
          return;
        }
      }
      while (this.btAdapterWrapper.isDiscovering());
      this.btAdapterWrapper.startDiscovery();
    }

    public void start(final Context paramContext, long paramLong)
    {
      Log.i(BluetoothHelper.TAG, "start with isKeptDiscovering = " + this.isKeptDiscovering + " and delayMs = " + paramLong);
      Assert.assertUiThread();
      if (this.isKeptDiscovering)
        return;
      if (paramLong <= 0L)
      {
        start(paramContext);
        return;
      }
      this.handler.removeCallbacksAndMessages(null);
      this.handler.postDelayed(new Runnable()
      {
        public void run()
        {
          BluetoothHelper.IntervalDiscoveringKeeper.this.start(paramContext);
        }
      }
      , paramLong);
    }

    public void stop(Context paramContext)
    {
      Log.i(BluetoothHelper.TAG, "stop with isKeptDiscovering = " + this.isKeptDiscovering);
      Assert.assertUiThread();
      this.handler.removeCallbacksAndMessages(null);
      if (!this.isKeptDiscovering);
      do
      {
        return;
        this.isKeptDiscovering = false;
        this.discoveringProcessReceiver.unregister(paramContext);
        if (!this.btAdapterWrapper.isBluetoothEnabled())
        {
          Log.d(BluetoothHelper.TAG, "Bluetooth is disabled.");
          return;
        }
      }
      while (!this.btAdapterWrapper.isDiscovering());
      this.btAdapterWrapper.cancelDiscovery();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.BluetoothHelper
 * JD-Core Version:    0.6.2
 */
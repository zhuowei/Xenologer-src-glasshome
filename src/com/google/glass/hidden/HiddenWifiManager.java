package com.google.glass.hidden;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.util.Log;
import java.lang.reflect.Field;

public final class HiddenWifiManager
{
  private static final Class[] SET_WIFI_AP_ENABLED_PARAMS = arrayOfClass;
  private static final String TAG = HiddenWifiManager.class.getSimpleName();

  static
  {
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = WifiConfiguration.class;
    arrayOfClass[1] = Boolean.TYPE;
  }

  public static boolean disableWifiHotSpot(WifiManager paramWifiManager)
  {
    try
    {
      MethodInvoker localMethodInvoker = new MethodInvoker(paramWifiManager, "setWifiApEnabled", SET_WIFI_AP_ENABLED_PARAMS);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = null;
      arrayOfObject[1] = Boolean.valueOf(false);
      localMethodInvoker.invoke(arrayOfObject);
      return true;
    }
    catch (Exception localException)
    {
      Log.i(TAG, "Failed to invoke hidden api", localException);
    }
    return false;
  }

  public static boolean getBtcCtsMode(WifiManager paramWifiManager)
  {
    Object localObject = new MethodInvoker(paramWifiManager, "getBtcCtsMode").invoke(new Object[0]);
    if (localObject == null)
      return false;
    return ((Boolean)localObject).booleanValue();
  }

  public static WifiConfiguration getWifiApConfiguration(WifiManager paramWifiManager)
  {
    try
    {
      WifiConfiguration localWifiConfiguration = (WifiConfiguration)new MethodInvoker(paramWifiManager, "getWifiApConfiguration").invoke(new Object[0]);
      return localWifiConfiguration;
    }
    catch (Exception localException)
    {
      Log.i(TAG, "Failed to invoke hidden api", localException);
    }
    return null;
  }

  public static boolean isWifiApEnabledOrBeingEnabled(WifiManager paramWifiManager)
  {
    try
    {
      int i = ((Integer)new MethodInvoker(paramWifiManager, "getWifiApState").invoke(new Object[0])).intValue();
      Field localField = WifiManager.class.getField("WIFI_AP_STATE_ENABLING");
      if (i != WifiManager.class.getField("WIFI_AP_STATE_ENABLED").getInt(null))
      {
        int j = localField.getInt(null);
        if (i != j);
      }
      else
      {
        return true;
      }
    }
    catch (Exception localException)
    {
      Log.i(TAG, "Failed to invoke hidden api or find the hidden fields", localException);
    }
    return false;
  }

  public static void setBtcCtsMode(WifiManager paramWifiManager, boolean paramBoolean)
  {
    MethodInvoker localMethodInvoker = new MethodInvoker(paramWifiManager, "setBtcCtsMode", Boolean.TYPE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localMethodInvoker.invoke(arrayOfObject);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.HiddenWifiManager
 * JD-Core Version:    0.6.2
 */
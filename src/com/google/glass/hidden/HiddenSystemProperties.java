package com.google.glass.hidden;

import android.util.Log;

public final class HiddenSystemProperties
{
  private static final String SYSTEM_PROPERTIES_CLASS_NAME = "android.os.SystemProperties";
  private static final String TAG = HiddenSystemProperties.class.getSimpleName();

  public static String get(String paramString1, String paramString2)
  {
    try
    {
      Object localObject = new MethodInvoker(Class.forName("android.os.SystemProperties"), "get", new Class[] { String.class, String.class }).invoke(new Object[] { paramString1, paramString2 });
      if (localObject == null)
      {
        Log.e(TAG, "Failed to call SystemProperties#get method. Returning default value.");
        return paramString2;
      }
      String str = (String)localObject;
      return str;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      Log.e(TAG, "SystemProperties class not found. Returning default value");
    }
    return paramString2;
  }

  public static boolean getBoolean(String paramString, boolean paramBoolean)
  {
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = String.class;
      arrayOfClass[1] = Boolean.TYPE;
      MethodInvoker localMethodInvoker = new MethodInvoker(localClass, "getBoolean", arrayOfClass);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = Boolean.valueOf(paramBoolean);
      Object localObject = localMethodInvoker.invoke(arrayOfObject);
      if (localObject == null)
      {
        Log.e(TAG, "Failed to call SystemProperties#getBoolean method. Returning default value.");
        return paramBoolean;
      }
      boolean bool = ((Boolean)localObject).booleanValue();
      return bool;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      Log.e(TAG, "SystemProperties class not found. Returning default value.");
    }
    return paramBoolean;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.HiddenSystemProperties
 * JD-Core Version:    0.6.2
 */
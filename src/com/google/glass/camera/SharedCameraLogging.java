package com.google.glass.camera;

import android.util.Log;

public class SharedCameraLogging
{
  private static final String TAG = SharedCameraLogging.class.getSimpleName();

  private static String createLogMessage(String paramString, SharedCameraClient paramSharedCameraClient)
  {
    if (paramSharedCameraClient != null)
      paramString = paramSharedCameraClient + ": " + paramString;
    return paramString;
  }

  public static void logDebug(SharedCameraClient paramSharedCameraClient, String paramString)
  {
    Log.d(TAG, createLogMessage(paramString, paramSharedCameraClient));
  }

  public static void logError(SharedCameraClient paramSharedCameraClient, String paramString)
  {
    Log.e(TAG, createLogMessage(paramString, paramSharedCameraClient));
  }

  public static void logError(SharedCameraClient paramSharedCameraClient, String paramString, Exception paramException)
  {
    Log.e(TAG, createLogMessage(paramString, paramSharedCameraClient), paramException);
  }

  public static void logVerbose(SharedCameraClient paramSharedCameraClient, String paramString)
  {
    Log.v(TAG, createLogMessage(paramString, paramSharedCameraClient));
  }

  public static void logWarning(SharedCameraClient paramSharedCameraClient, String paramString)
  {
    Log.w(TAG, createLogMessage(paramString, paramSharedCameraClient));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.SharedCameraLogging
 * JD-Core Version:    0.6.2
 */
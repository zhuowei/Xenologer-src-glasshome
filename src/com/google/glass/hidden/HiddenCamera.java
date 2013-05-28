package com.google.glass.hidden;

import android.hardware.Camera;

public final class HiddenCamera
{
  public static final String ACTION_CAMERA_BUTTON_DOWN = "com.google.glass.action.CAMERA_BUTTON_DOWN";
  private static final String TAG = HiddenCamera.class.getSimpleName();

  public static void addPostviewCallbackBuffer(Camera paramCamera, byte[] paramArrayOfByte)
  {
    new MethodInvoker(paramCamera, "addPostviewCallbackBuffer", [B.class).invoke(new Object[] { paramArrayOfByte });
  }

  public static boolean startGoogleCameraMetering(Camera paramCamera)
  {
    return ((Boolean)new MethodInvoker(paramCamera, "startGoogleCameraMetering").invoke(new Object[0])).booleanValue();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.HiddenCamera
 * JD-Core Version:    0.6.2
 */
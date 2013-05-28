package com.google.glass.camera;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.util.Log;

public class CameraUtils
{
  private static final String TAG = CameraUtils.class.getSimpleName();

  static
  {
    System.loadLibrary("glasscamera");
  }

  public static Bitmap buildBitmapFromYuv420Sp(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    if (!populateBitmapFromYuv420Sp(paramArrayOfByte, localBitmap))
      Log.e(TAG, "buildBitmapFromYuv420Sp failed! Result may be corrupted.");
    return localBitmap;
  }

  public static native boolean populateBitmapFromYuv420Sp(byte[] paramArrayOfByte, Bitmap paramBitmap);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.CameraUtils
 * JD-Core Version:    0.6.2
 */
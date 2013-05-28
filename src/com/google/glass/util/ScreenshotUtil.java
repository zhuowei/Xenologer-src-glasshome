package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;

public class ScreenshotUtil
{
  private static final int MAX_NUM_INTENT_EXTRA_BYTES = 523264;
  private static final String TAG = ScreenshotUtil.class.getSimpleName();

  public static Screenshot captureCompressedScreenshotForIntent(Context paramContext)
  {
    Bitmap localBitmap = captureScreenshot(paramContext);
    if (localBitmap == null)
      return null;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      Bitmap.CompressFormat localCompressFormat1 = Bitmap.CompressFormat.PNG;
      String str1 = getFileExtension(localCompressFormat1);
      if (!localBitmap.compress(localCompressFormat1, 0, localByteArrayOutputStream))
      {
        Log.e(TAG, "Failed to compress as PNG.");
        try
        {
          localByteArrayOutputStream.close();
          return null;
        }
        catch (IOException localIOException6)
        {
          Log.e(TAG, "Failed to close stream.", localIOException6);
          return null;
        }
      }
      if (localByteArrayOutputStream.size() <= 523264)
      {
        Log.e(TAG, "Compressed as PNG.");
        Screenshot localScreenshot2 = new Screenshot(localByteArrayOutputStream.toByteArray(), localCompressFormat1, str1, null);
        try
        {
          localByteArrayOutputStream.close();
          return localScreenshot2;
        }
        catch (IOException localIOException5)
        {
          Log.e(TAG, "Failed to close stream.", localIOException5);
          return localScreenshot2;
        }
      }
      Bitmap.CompressFormat localCompressFormat2 = Bitmap.CompressFormat.JPEG;
      String str2 = getFileExtension(localCompressFormat2);
      for (int i = 100; i >= 0; i -= 10)
      {
        localByteArrayOutputStream.reset();
        if (!localBitmap.compress(localCompressFormat2, i, localByteArrayOutputStream))
        {
          Log.e(TAG, "Failed to compress as JPEG (quality " + i + ").");
          try
          {
            localByteArrayOutputStream.close();
            return null;
          }
          catch (IOException localIOException3)
          {
            Log.e(TAG, "Failed to close stream.", localIOException3);
            return null;
          }
        }
        if (localByteArrayOutputStream.size() <= 523264)
        {
          Log.e(TAG, "Compressed as JPEG (quality " + i + ").");
          Screenshot localScreenshot1 = new Screenshot(localByteArrayOutputStream.toByteArray(), localCompressFormat2, str2, null);
          try
          {
            localByteArrayOutputStream.close();
            return localScreenshot1;
          }
          catch (IOException localIOException2)
          {
            Log.e(TAG, "Failed to close stream.", localIOException2);
            return localScreenshot1;
          }
        }
      }
      Log.e(TAG, "Failed to compress. Exceeded size limit at lowest quality.");
      try
      {
        localByteArrayOutputStream.close();
        return null;
      }
      catch (IOException localIOException4)
      {
        Log.e(TAG, "Failed to close stream.", localIOException4);
        return null;
      }
    }
    finally
    {
    }
    try
    {
      localByteArrayOutputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        Log.e(TAG, "Failed to close stream.", localIOException1);
    }
  }

  public static Bitmap captureScreenshot(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return HiddenApiHelper.screenshot(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
  }

  private static String getFileExtension(Bitmap.CompressFormat paramCompressFormat)
  {
    switch (1.$SwitchMap$android$graphics$Bitmap$CompressFormat[paramCompressFormat.ordinal()])
    {
    default:
      return "";
    case 1:
      return ".png";
    case 2:
    }
    return ".jpg";
  }

  public static class Screenshot
    implements Parcelable
  {
    public static final Parcelable.Creator<Screenshot> CREATOR = new Parcelable.Creator()
    {
      public ScreenshotUtil.Screenshot createFromParcel(Parcel paramAnonymousParcel)
      {
        byte[] arrayOfByte = new byte[paramAnonymousParcel.readInt()];
        paramAnonymousParcel.readByteArray(arrayOfByte);
        return new ScreenshotUtil.Screenshot(arrayOfByte, Bitmap.CompressFormat.values()[paramAnonymousParcel.readInt()], paramAnonymousParcel.readString(), null);
      }

      public ScreenshotUtil.Screenshot[] newArray(int paramAnonymousInt)
      {
        return new ScreenshotUtil.Screenshot[paramAnonymousInt];
      }
    };
    public final Bitmap.CompressFormat compressFormat;
    public final byte[] compressedData;
    public final String fileExtension;

    private Screenshot(byte[] paramArrayOfByte, Bitmap.CompressFormat paramCompressFormat, String paramString)
    {
      this.compressedData = paramArrayOfByte;
      this.compressFormat = paramCompressFormat;
      this.fileExtension = paramString;
    }

    public int describeContents()
    {
      return 0;
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append(Arrays.toString(this.compressedData));
      localStringBuilder.append(" (");
      localStringBuilder.append(this.compressedData.length);
      localStringBuilder.append("), ");
      localStringBuilder.append(this.compressFormat);
      localStringBuilder.append(", ");
      localStringBuilder.append(this.fileExtension);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.compressedData.length);
      paramParcel.writeByteArray(this.compressedData);
      paramParcel.writeInt(this.compressFormat.ordinal());
      paramParcel.writeString(this.fileExtension);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ScreenshotUtil
 * JD-Core Version:    0.6.2
 */
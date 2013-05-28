package com.google.glass.camera;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.media.MediaScannerConnection;
import android.os.SystemClock;
import android.util.Log;
import com.google.glass.util.Assert;
import com.google.glass.util.FileHelper;
import com.google.glass.util.FileSaver;
import java.nio.ByteBuffer;

public class Picture
{
  private static final String TAG = Picture.class.getSimpleName();
  private long captureTimeMillis;
  private String filePath;
  private boolean isGcam;
  private long jpegTimeMillis;
  private long requestTimeMillis = SystemClock.uptimeMillis();
  private long shutterTimeMillis;
  private Bitmap thumbnail = Bitmap.createBitmap(SharedCameraConstants.POSTVIEW_SIZE.width, SharedCameraConstants.POSTVIEW_SIZE.height, Bitmap.Config.ARGB_8888);
  private long thumbnailTimeMillis;

  private String getFileName()
  {
    return FileHelper.formatTimestamp(this.captureTimeMillis) + ".jpg";
  }

  public long getCaptureTime()
  {
    return this.captureTimeMillis;
  }

  public String getFilePath()
  {
    return this.filePath;
  }

  public boolean getIsGcam()
  {
    return this.isGcam;
  }

  public long getJpegTime()
  {
    return this.jpegTimeMillis;
  }

  public long getRequestTime()
  {
    return this.requestTimeMillis;
  }

  public long getShutterTime()
  {
    return this.shutterTimeMillis;
  }

  public Bitmap getThumbnail()
  {
    return this.thumbnail;
  }

  public long getThumbnailTime()
  {
    return this.thumbnailTimeMillis;
  }

  boolean saveJpeg(Context paramContext, byte[] paramArrayOfByte)
  {
    Assert.assertNotUiThread();
    this.jpegTimeMillis = SystemClock.uptimeMillis();
    String str1 = getFileName();
    if (FileSaver.getSharedInstance() == null)
    {
      Log.w(TAG, "No file writer, not saving JPEG.");
      return false;
    }
    String str2 = FileSaver.getSharedInstance().getPath(str1);
    if (FileSaver.getSharedInstance().write(FileSaver.newSaver(paramArrayOfByte), str2))
    {
      this.filePath = str2;
      Log.v(TAG, "Saved JPEG-encoded picture in " + (SystemClock.uptimeMillis() - this.jpegTimeMillis) + " ms.");
      String[] arrayOfString = new String[1];
      arrayOfString[0] = this.filePath;
      MediaScannerConnection.scanFile(paramContext, arrayOfString, new String[] { null }, null);
      return true;
    }
    Log.e(TAG, "Failed to save JPEG.");
    return false;
  }

  void saveThumbnail(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Assert.assertNotUiThread();
    this.thumbnailTimeMillis = SystemClock.uptimeMillis();
    if (this.isGcam)
    {
      Log.v(TAG, "saveThumbnail - isGCam true [just copying ARGB_8888 directly].");
      ByteBuffer localByteBuffer = ByteBuffer.wrap(paramArrayOfByte);
      this.thumbnail.copyPixelsFromBuffer(localByteBuffer);
    }
    while (true)
    {
      Log.v(TAG, "Encoded picture thumbnail in " + (SystemClock.uptimeMillis() - this.thumbnailTimeMillis) + " ms.");
      return;
      Log.v(TAG, "saveThumbnail - isGCam false [calling JNI to convert YUV to ARGB_8888].");
      if (!CameraUtils.populateBitmapFromYuv420Sp(paramArrayOfByte, this.thumbnail))
        Log.e(TAG, "buildBitmapFromYuv420Sp failed! Result may be corrupted.");
    }
  }

  void setCaptureTimeNow()
  {
    this.captureTimeMillis = System.currentTimeMillis();
    this.shutterTimeMillis = SystemClock.uptimeMillis();
  }

  public void setIsGcam(boolean paramBoolean)
  {
    this.isGcam = paramBoolean;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.Picture
 * JD-Core Version:    0.6.2
 */
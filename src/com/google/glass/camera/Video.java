package com.google.glass.camera;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.media.MediaScannerConnection;
import android.media.ThumbnailUtils;
import android.util.Log;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileHelper;
import com.google.glass.util.FileSaver;
import com.google.glass.util.FileSaver.Saver;
import java.io.File;
import java.io.OutputStream;

public class Video
{
  private static final String TAG = Video.class.getSimpleName();
  private static final int THUMBNAIL_JPEG_QUALITY = 90;
  private long endTimeMillis;
  private String filePath;
  private volatile boolean isCanceled;
  private long startTimeMillis;

  public static Bitmap createThumbnail(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
    {
      Log.e(TAG, "videoFilePath = " + paramString1 + ", thumbnailFileName = " + paramString2);
      return null;
    }
    Bitmap localBitmap = ThumbnailUtils.createVideoThumbnail(paramString1, 1);
    if (localBitmap == null)
    {
      Log.e(TAG, "Failed to create thumbnail for video: " + paramString1);
      return null;
    }
    CachedFilesManager.getSharedInstance().save(CachedFilesManager.Type.THUMBNAIL, paramString2, new FileSaver.Saver()
    {
      public long getEstimatedSizeBytes()
      {
        return this.val$thumbnail.getByteCount();
      }

      public void save(OutputStream paramAnonymousOutputStream)
      {
        this.val$thumbnail.compress(Bitmap.CompressFormat.JPEG, 90, paramAnonymousOutputStream);
      }
    });
    Log.d(TAG, "Created thumbnail for " + paramString1 + " to " + paramString2);
    return localBitmap;
  }

  private String getFileName()
  {
    return FileHelper.formatTimestamp(this.startTimeMillis) + ".mp4";
  }

  void cancel()
  {
    this.isCanceled = true;
    if (new File(this.filePath).delete())
    {
      Log.v(TAG, "Deleted canceled video: " + this.filePath);
      return;
    }
    Log.w(TAG, "Failed to delete canceled video: " + this.filePath);
  }

  public long getEndTime()
  {
    return this.endTimeMillis;
  }

  public String getFilePath()
  {
    return this.filePath;
  }

  public long getStartTime()
  {
    return this.startTimeMillis;
  }

  public boolean isCanceled()
  {
    return this.isCanceled;
  }

  boolean start()
  {
    this.startTimeMillis = System.currentTimeMillis();
    this.isCanceled = false;
    if (FileSaver.getSharedInstance() == null)
      Log.w(TAG, "No file saver defined, can't start video recording");
    do
    {
      return false;
      this.filePath = FileSaver.getSharedInstance().getPath(getFileName());
      CachedFilesManager.getSharedInstance().increaseUsage(this.filePath);
    }
    while (this.filePath == null);
    return true;
  }

  void stop(Context paramContext)
  {
    this.endTimeMillis = System.currentTimeMillis();
    CachedFilesManager.getSharedInstance().releaseUsage(this.filePath);
    if (!this.isCanceled)
    {
      Log.v(TAG, "Recorded video to: " + this.filePath);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = this.filePath;
      MediaScannerConnection.scanFile(paramContext, arrayOfString, new String[] { null }, null);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.Video
 * JD-Core Version:    0.6.2
 */
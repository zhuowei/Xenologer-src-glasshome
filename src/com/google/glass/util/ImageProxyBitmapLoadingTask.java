package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.google.glass.app.GlassApplication;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.CropType;

public abstract class ImageProxyBitmapLoadingTask extends DeferredContentLoader.LoadingTask<Bitmap>
{
  private final CachedBitmapFactory bitmapFactory;
  private final ImageProxyDownloadTask downloadTask;

  public ImageProxyBitmapLoadingTask(Context paramContext, String paramString, int paramInt1, int paramInt2, ImageDownloadRequest.CropType paramCropType)
  {
    this.bitmapFactory = GlassApplication.from(paramContext).getBitmapFactory();
    this.downloadTask = new ImageProxyDownloadTask(paramContext, paramString, paramInt1, paramInt2, paramCropType)
    {
      protected void bindContent(String paramAnonymousString)
      {
      }

      protected void prepareContent()
      {
      }
    };
  }

  public String getImageUrl()
  {
    return this.downloadTask.getImageUrl();
  }

  protected Bitmap loadContent()
  {
    String str = this.downloadTask.loadContent();
    if (str == null)
      return null;
    return this.bitmapFactory.decodeFile(str, false);
  }

  public Bitmap loadContentFromCache()
  {
    String str = this.downloadTask.loadContentFromCache();
    if (str == null)
      return null;
    return this.bitmapFactory.decodeFile(str, true);
  }

  public void setImageDimensions(int paramInt1, int paramInt2)
  {
    this.downloadTask.setImageDimensions(paramInt1, paramInt2);
  }

  public String setImageUrl(String paramString)
  {
    return this.downloadTask.setImageUrl(paramString);
  }

  public static class SimpleImageProxyBitmapLoadingTask extends ImageProxyBitmapLoadingTask
  {
    private final ImageView imageView;

    public SimpleImageProxyBitmapLoadingTask(ImageView paramImageView, Context paramContext, String paramString, int paramInt1, int paramInt2, ImageDownloadRequest.CropType paramCropType)
    {
      super(paramString, paramInt1, paramInt2, paramCropType);
      this.imageView = paramImageView;
    }

    protected void bindContent(Bitmap paramBitmap)
    {
      if (paramBitmap != null)
      {
        this.imageView.setImageBitmap(paramBitmap);
        showView(this.imageView, true);
      }
    }

    protected void prepareContent()
    {
      hideView(this.imageView, false, true);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ImageProxyBitmapLoadingTask
 * JD-Core Version:    0.6.2
 */
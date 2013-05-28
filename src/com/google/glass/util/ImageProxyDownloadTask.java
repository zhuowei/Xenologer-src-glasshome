package com.google.glass.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.glass.app.GlassApplication;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponse;
import com.google.glass.net.ServerConstants.Action;
import com.google.googlex.glass.common.proto.ImageDownloadRequest;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.Builder;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.CropType;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.RequestedDimensions;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.RequestedDimensions.Builder;
import com.google.googlex.glass.common.proto.ImageDownloadResponse;
import com.google.googlex.glass.common.proto.ImageDownloadResponse.Status;
import com.google.protobuf.ByteString;
import java.net.URLEncoder;

public abstract class ImageProxyDownloadTask extends DeferredContentLoader.LoadingTask<String>
{
  public static final int DIMENSION_NOT_SET = -1;
  private static final String TAG = ImageProxyDownloadTask.class.getSimpleName();
  private final CachedFilesManager cachedFilesManager;
  private final ImageDownloadRequest.CropType cropType;
  private int height;
  private String imageUrl;
  private final ProtoRequestDispatcher requestDispatcher;
  private int width;

  public ImageProxyDownloadTask(Context paramContext, String paramString, int paramInt1, int paramInt2, ImageDownloadRequest.CropType paramCropType)
  {
    this.imageUrl = paramString;
    this.width = paramInt1;
    this.height = paramInt2;
    this.cropType = paramCropType;
    this.cachedFilesManager = CachedFilesManager.getSharedInstance();
    this.requestDispatcher = GlassApplication.from(paramContext).getRequestDispatcher();
  }

  private String downloadImage(String paramString, CachedFilesManager.Type paramType)
  {
    Assert.assertNotUiThread();
    ImageDownloadRequest.RequestedDimensions.Builder localBuilder = ImageDownloadRequest.RequestedDimensions.newBuilder();
    if (this.width != -1)
      localBuilder.setWidthPixels(this.width);
    if (this.height != -1)
      localBuilder.setHeightPixels(this.height);
    ImageDownloadRequest localImageDownloadRequest = ImageDownloadRequest.newBuilder().setRequestedDimensions(localBuilder.build()).setUrl(this.imageUrl).setCropType(this.cropType).build();
    ImageDownloadResponse localImageDownloadResponse = (ImageDownloadResponse)this.requestDispatcher.blockingDispatch(ServerConstants.Action.DOWNLOAD_IMAGE, localImageDownloadRequest, ImageDownloadResponse.PARSER).getResponseProto();
    if (localImageDownloadResponse == null)
    {
      Log.w(TAG, "No response - network may be disconnected");
      return null;
    }
    if (localImageDownloadResponse.getStatus() != ImageDownloadResponse.Status.SUCCESS)
    {
      Log.w(TAG, "Server status: " + localImageDownloadResponse.getStatus() + " for: " + this.imageUrl);
      return null;
    }
    if ((localImageDownloadResponse.getImage() == null) || (localImageDownloadResponse.getImage().isEmpty()))
    {
      Log.w(TAG, "No image download data for " + this.imageUrl);
      return null;
    }
    if (isCancelled())
    {
      Log.d(TAG, "Image download cancelled for " + this.imageUrl);
      return null;
    }
    String str = this.cachedFilesManager.getPath(paramType, paramString);
    Log.d(TAG, "Saving " + this.imageUrl + " under " + str);
    this.cachedFilesManager.save(paramType, paramString, FileSaver.newSaver(localImageDownloadResponse.getImage()));
    return str;
  }

  private static String getFilename(String paramString, int paramInt1, int paramInt2, ImageDownloadRequest.CropType paramCropType)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(URLEncoder.encode(paramString));
    localStringBuilder.append("-").append(paramInt1).append("-").append(paramInt2).append("-").append(paramCropType.getNumber());
    return localStringBuilder.toString();
  }

  public String checkCache()
  {
    Assert.assertNotUiThread();
    if (TextUtils.isEmpty(this.imageUrl));
    String str;
    CachedFilesManager.Type localType;
    do
    {
      return null;
      str = getFilename(this.imageUrl, this.width, this.height, this.cropType);
      localType = CachedFilesManager.Type.PICTURE;
    }
    while (!this.cachedFilesManager.contains(localType, str));
    return this.cachedFilesManager.getPath(localType, str);
  }

  protected String getImageUrl()
  {
    return this.imageUrl;
  }

  protected String loadContent()
  {
    Assert.assertNotUiThread();
    if (TextUtils.isEmpty(this.imageUrl))
      return null;
    String str = getFilename(this.imageUrl, this.width, this.height, this.cropType);
    CachedFilesManager.Type localType = CachedFilesManager.Type.PICTURE;
    if (!this.cachedFilesManager.contains(localType, str))
      return downloadImage(str, localType);
    return this.cachedFilesManager.getPath(localType, str);
  }

  protected String loadContentFromCache()
  {
    Assert.assertUiThread();
    if (TextUtils.isEmpty(this.imageUrl))
      return null;
    String str = getFilename(this.imageUrl, this.width, this.height, this.cropType);
    CachedFilesManager.Type localType = CachedFilesManager.Type.PICTURE;
    return this.cachedFilesManager.getPath(localType, str);
  }

  public void setImageDimensions(int paramInt1, int paramInt2)
  {
    this.width = paramInt1;
    this.height = paramInt2;
  }

  protected String setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
    return paramString;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ImageProxyDownloadTask
 * JD-Core Version:    0.6.2
 */
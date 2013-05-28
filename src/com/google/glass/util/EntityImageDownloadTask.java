package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.LruCache;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.app.GlassApplication;
import com.google.glass.entity.EntityHelper;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.CropType;

public class EntityImageDownloadTask extends ImageProxyBitmapLoadingTask
{
  private final Entity entity;
  private final TextView nameView;
  private final ImageView pictureView;
  private final LruCache<String, String> profileImageUrlCache;

  public EntityImageDownloadTask(Context paramContext, Entity paramEntity, ImageView paramImageView, TextView paramTextView, int paramInt1, int paramInt2)
  {
    super(paramContext, EntityHelper.getFirstImageUrl(paramEntity), paramInt1, paramInt2, ImageDownloadRequest.CropType.SMART_CROP);
    if (paramEntity == null)
      throw new IllegalArgumentException("Entity cannot be null.");
    this.entity = paramEntity;
    this.pictureView = paramImageView;
    this.nameView = paramTextView;
    this.profileImageUrlCache = GlassApplication.from(paramContext).getProfileImageUrlCache();
  }

  protected void bindContent(Bitmap paramBitmap)
  {
    this.pictureView.setImageBitmap(paramBitmap);
    if (paramBitmap != null)
    {
      showView(this.pictureView, true);
      if (this.nameView != null)
        hideView(this.nameView, true, false);
    }
  }

  protected Bitmap loadContent()
  {
    boolean bool = TextUtils.isEmpty(getImageUrl());
    String str = null;
    if (bool)
      str = setImageUrl(EntityHelper.getSharedInstance().getPictureUrlViaPhoneNumber(this.entity));
    if (TextUtils.isEmpty(getImageUrl()))
      str = setImageUrl(EntityHelper.getSharedInstance().getPictureUrlViaEmail(this.entity));
    Bitmap localBitmap = super.loadContent();
    if ((str != null) && (this.entity.hasId()))
      this.profileImageUrlCache.put(this.entity.getId(), str);
    return localBitmap;
  }

  protected void prepareContent()
  {
    if (getImageUrl() == null)
      setImageUrl((String)this.profileImageUrlCache.get(this.entity.getId()));
    Bitmap localBitmap = loadContentFromCache();
    if (localBitmap != null)
    {
      this.pictureView.setImageBitmap(localBitmap);
      if (this.nameView != null)
        hideView(this.nameView, false, false);
      showView(this.pictureView, false);
      cancel(false);
      return;
    }
    String str = EntityHelper.getDisplayableName(this.entity);
    if (this.nameView != null)
    {
      this.nameView.setText(str);
      showView(this.nameView, false);
    }
    hideView(this.pictureView, false, true);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.EntityImageDownloadTask
 * JD-Core Version:    0.6.2
 */
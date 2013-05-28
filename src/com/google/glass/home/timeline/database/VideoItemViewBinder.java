package com.google.glass.home.timeline.database;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.google.glass.camera.Video;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.timeline.VideoItemView;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.DeferredContentLoader.LoadingTask;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.List;

public class VideoItemViewBinder extends BaseItemViewBinder
{
  public int getLayout()
  {
    return R.layout.timeline_item_video;
  }

  protected boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    List localList = TimelineHelper.getAttachmentsOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_VIDEO_MIME_TYPES);
    Assert.assertFalse(localList.isEmpty());
    Attachment localAttachment = (Attachment)localList.get(0);
    ImageView localImageView1 = (ImageView)paramView.findViewById(R.id.thumbnail);
    ImageView localImageView2 = (ImageView)paramView.findViewById(R.id.placeholder);
    ImageView localImageView3 = (ImageView)paramView.findViewById(R.id.play);
    ((VideoItemView)paramView).setVideoAttachment(localAttachment, paramCachedBitmapFactory);
    VideoAttachmentLoadingTask localVideoAttachmentLoadingTask = new VideoAttachmentLoadingTask(localAttachment, localImageView1, localImageView2, localImageView3, paramCachedBitmapFactory);
    paramView.setTag(R.id.tag_loading_task, localVideoAttachmentLoadingTask);
    DeferredContentLoader.loadForScrollItemSubview(paramView, localVideoAttachmentLoadingTask);
    return false;
  }

  protected void onClear(View paramView, boolean paramBoolean)
  {
    DeferredContentLoader.LoadingTask localLoadingTask = (DeferredContentLoader.LoadingTask)paramView.getTag(R.id.tag_loading_task);
    if (localLoadingTask != null)
    {
      DeferredContentLoader.cancel(localLoadingTask);
      paramView.setTag(R.id.tag_loading_task, null);
    }
    ((ImageView)paramView.findViewById(R.id.thumbnail)).setImageDrawable(null);
  }

  public void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList)
  {
    paramList.add(paramTimelineItem);
  }

  private class VideoAttachmentLoadingTask extends DeferredContentLoader.LoadingTask<Bitmap>
  {
    private final Attachment attachment;
    private final CachedBitmapFactory bitmapFactory;
    private final CachedFilesManager cachedFilesManager;
    private final ImageView placeholderView;
    private final ImageView playView;
    private final ImageView thumbnailView;

    public VideoAttachmentLoadingTask(Attachment paramImageView1, ImageView paramImageView2, ImageView paramImageView3, ImageView paramCachedBitmapFactory, CachedBitmapFactory arg6)
    {
      this.attachment = paramImageView1;
      Object localObject;
      this.bitmapFactory = localObject;
      this.thumbnailView = paramImageView2;
      this.placeholderView = paramImageView3;
      this.playView = paramCachedBitmapFactory;
      this.cachedFilesManager = CachedFilesManager.getSharedInstance();
    }

    private Bitmap loadContentFromCache()
    {
      String str = TimelineHelper.getThumbnailFilename(this.attachment);
      return this.bitmapFactory.decodeFile(CachedFilesManager.getSharedInstance().getPath(CachedFilesManager.Type.THUMBNAIL, str), true);
    }

    protected void bindContent(Bitmap paramBitmap)
    {
      if (paramBitmap != null)
      {
        this.thumbnailView.setImageBitmap(paramBitmap);
        showView(this.thumbnailView, true);
        showView(this.playView, true);
        hideView(this.placeholderView, true, false);
      }
    }

    protected Bitmap loadContent()
    {
      String str1 = TimelineHelper.getThumbnailFilename(this.attachment);
      if (!this.cachedFilesManager.contains(CachedFilesManager.Type.THUMBNAIL, str1))
      {
        String str2;
        if (this.attachment.hasClientCachePath())
          str2 = this.attachment.getClientCachePath();
        while (true)
        {
          return Video.createThumbnail(str2, str1);
          boolean bool = this.attachment.hasId();
          str2 = null;
          if (bool)
            str2 = CachedFilesManager.getSharedInstance().getPath(CachedFilesManager.Type.ATTACHMENT, this.attachment.getId());
        }
      }
      return this.bitmapFactory.decodeFile(CachedFilesManager.getSharedInstance().getPath(CachedFilesManager.Type.THUMBNAIL, str1), false);
    }

    protected void prepareContent()
    {
      Bitmap localBitmap = loadContentFromCache();
      if (localBitmap != null)
      {
        this.thumbnailView.setImageBitmap(localBitmap);
        showView(this.thumbnailView, false);
        showView(this.playView, false);
        hideView(this.placeholderView, false, false);
        cancel(false);
        return;
      }
      hideView(this.thumbnailView, false, false);
      hideView(this.playView, false, false);
      showView(this.placeholderView, false);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.VideoItemViewBinder
 * JD-Core Version:    0.6.2
 */
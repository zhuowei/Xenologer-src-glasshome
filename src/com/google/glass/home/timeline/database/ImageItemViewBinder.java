package com.google.glass.home.timeline.database;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.timeline.TimelineItemAdapter;
import com.google.glass.home.timeline.TimelineItemAdapter.ViewType;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.DeferredContentLoader.LoadingTask;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import java.util.ArrayList;
import java.util.List;

public class ImageItemViewBinder extends BaseItemViewBinder
{
  public int getLayout()
  {
    return R.layout.timeline_item_image;
  }

  protected boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    ((TextView)paramView.findViewById(R.id.text)).setText(paramTimelineItem.getText());
    ImageView localImageView1 = (ImageView)paramView.findViewById(R.id.overlay);
    List localList;
    ImageView localImageView2;
    ArrayList localArrayList;
    if (paramTimelineItem.hasText())
    {
      localImageView1.setImageResource(R.drawable.overlay_large);
      localList = TimelineHelper.getAttachmentsOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_IMAGE_MIME_TYPES);
      Assert.assertFalse(localList.isEmpty());
      localImageView2 = (ImageView)paramView.findViewById(R.id.image);
      localArrayList = new ArrayList();
    }
    for (int i = 0; ; i++)
    {
      if ((i >= localList.size()) || (i >= 1))
      {
        paramView.setTag(R.id.tag_loading_task, localArrayList);
        DeferredContentLoader.loadForScrollItemSubview(paramView, localArrayList);
        if (localList.size() <= 1)
          break label187;
        return true;
        localImageView1.setImageResource(R.drawable.overlay_small);
        break;
      }
      localArrayList.add(new ImageAttachmentLoadingTask((Attachment)localList.get(i), localImageView2, paramCachedBitmapFactory));
    }
    label187: return false;
  }

  protected void onClear(View paramView, boolean paramBoolean)
  {
    List localList = (List)paramView.getTag(R.id.tag_loading_task);
    if (localList != null)
    {
      DeferredContentLoader.cancel(localList);
      paramView.setTag(R.id.tag_loading_task, null);
    }
    ((ImageView)paramView.findViewById(R.id.image)).setImageDrawable(null);
  }

  public void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList)
  {
    Assert.assertTrue(TimelineItemAdapter.ViewType.IMAGE.equals(TimelineItemAdapter.getViewType(paramTimelineItem)));
    List localList = TimelineHelper.getAttachmentsOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_IMAGE_MIME_TYPES);
    Assert.assertFalse(localList.isEmpty());
    for (int i = 0; i < localList.size(); i++)
    {
      TimelineItem.Builder localBuilder = TimelineItem.newBuilder(paramTimelineItem);
      localBuilder.clearAttachment();
      localBuilder.addAttachment((Attachment)localList.get(i));
      adjustBundleItemIndex(localBuilder, i, paramTimelineItem);
      paramList.add(localBuilder.build());
    }
  }

  private class ImageAttachmentLoadingTask extends DeferredContentLoader.LoadingTask<Bitmap>
  {
    private final Attachment attachment;
    private final CachedBitmapFactory bitmapFactory;
    private final ImageView imageView;

    public ImageAttachmentLoadingTask(Attachment paramImageView, ImageView paramCachedBitmapFactory, CachedBitmapFactory arg4)
    {
      this.attachment = paramImageView;
      Object localObject;
      this.bitmapFactory = localObject;
      this.imageView = paramCachedBitmapFactory;
    }

    private Bitmap loadContentFromCache()
    {
      Assert.assertUiThread();
      return this.bitmapFactory.decodeAttachment(this.attachment, true);
    }

    protected void bindContent(Bitmap paramBitmap)
    {
      if (paramBitmap != null)
      {
        this.imageView.setImageBitmap(paramBitmap);
        showView(this.imageView, true);
      }
    }

    protected Bitmap loadContent()
    {
      return this.bitmapFactory.decodeAttachment(this.attachment, false);
    }

    protected void prepareContent()
    {
      Bitmap localBitmap = loadContentFromCache();
      if (localBitmap != null)
      {
        this.imageView.setImageBitmap(localBitmap);
        showView(this.imageView, false);
        cancel(false);
        return;
      }
      hideView(this.imageView, false, true);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.ImageItemViewBinder
 * JD-Core Version:    0.6.2
 */
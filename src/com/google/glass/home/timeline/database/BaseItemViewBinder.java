package com.google.glass.home.timeline.database;

import android.content.Context;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.google.glass.home.R.id;
import com.google.glass.home.R.string;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.DateHelper;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.GlasswareIconLoadingTask;
import com.google.glass.util.GlasswareIconLoadingTask.IconSize;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.glass.widget.TypophileTextView;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import java.util.List;

public abstract class BaseItemViewBinder
  implements ItemViewBinder
{
  public static final String BUNDLE_PAGE_PREFIX = ":";
  public static final String TEXT_CONTINUED_ID_POSTFIX = ":cont";
  private GlasswareIconLoadingTask glasswareIconLoadingTask = null;
  private int timestampWidth;

  private void bindGlasswareIcon(Context paramContext, TimelineItem paramTimelineItem, View paramView)
  {
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.source_icon);
    if ((paramTimelineItem.hasSource()) && (paramTimelineItem.getSource().startsWith("api:")))
    {
      this.glasswareIconLoadingTask = new GlasswareIconLoadingTask(paramContext, paramTimelineItem.getSource().substring("api:".length()), GlasswareIconLoadingTask.IconSize.SMALL, localImageView);
      DeferredContentLoader.loadForScrollItemSubview(paramView, this.glasswareIconLoadingTask);
      return;
    }
    localImageView.setVisibility(8);
  }

  private void bindInfo(TimelineItem paramTimelineItem, View paramView)
  {
    String str = provideInfoText(paramTimelineItem);
    TypophileTextView localTypophileTextView = (TypophileTextView)paramView.findViewById(R.id.info);
    if (!TextUtils.isEmpty(str))
    {
      localTypophileTextView.setText(str);
      localTypophileTextView.setVisibility(0);
      return;
    }
    localTypophileTextView.setVisibility(4);
  }

  private void bindSyncIcon(TimelineItem paramTimelineItem, View paramView)
  {
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.sync);
    if (shouldHideSyncIcon(paramTimelineItem))
    {
      localImageView.setVisibility(8);
      return;
    }
    if (TimelineHelper.canSyncToCompanion(paramTimelineItem))
    {
      if (TimelineHelper.isSyncingToCompanion(paramTimelineItem))
      {
        localImageView.setVisibility(0);
        return;
      }
      localImageView.setVisibility(8);
      return;
    }
    if (TimelineHelper.isSyncingToCloud(paramTimelineItem))
    {
      localImageView.setVisibility(0);
      return;
    }
    localImageView.setVisibility(8);
  }

  private void bindTimestamp(Context paramContext, TimelineItem paramTimelineItem, View paramView)
  {
    TypophileTextView localTypophileTextView = (TypophileTextView)paramView.findViewById(R.id.timestamp);
    long l = TimelineHelper.getDisplayTime(paramTimelineItem);
    if ((paramTimelineItem.getIsPinned()) && (paramTimelineItem.hasPinScore()) && (paramTimelineItem.getPinScore() > 0));
    for (int i = 1; (l == 0L) || ((i != 0) && (!paramTimelineItem.hasDisplayTime())) || (!shouldShowTimestamp(paramTimelineItem)); i = 0)
    {
      localTypophileTextView.setText(null);
      this.timestampWidth = 0;
      return;
    }
    String str1 = DateHelper.getRelativeTimestamp(paramContext, l);
    List localList = paramTimelineItem.getAttachmentList();
    if ((localList.size() > 1) && (((Attachment)localList.get(-1 + localList.size())).hasCreationTime()))
    {
      String str2 = DateHelper.getRelativeTimestamp(paramContext, ((Attachment)localList.get(-1 + localList.size())).getCreationTime());
      if (!str2.equals(str1))
        str1 = paramContext.getString(R.string.timeline_time_from_to, new Object[] { str1, str2 });
    }
    localTypophileTextView.setText(str1);
    this.timestampWidth = Math.round(localTypophileTextView.getPaint().measureText(str1));
  }

  protected void adjustBundleItemIndex(TimelineItem.Builder paramBuilder, int paramInt, TimelineItem paramTimelineItem)
  {
    if (paramInt != 0)
      paramBuilder.setId(paramTimelineItem.getId() + ":" + paramInt);
  }

  public boolean bind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    if (!paramBoolean2)
    {
      bindTimestamp(paramContext, paramTimelineItem, paramView);
      bindGlasswareIcon(paramContext, paramTimelineItem, paramView);
      bindSyncIcon(paramTimelineItem, paramView);
      bindInfo(paramTimelineItem, paramView);
    }
    View localView = paramView.findViewWithTag(Integer.valueOf(R.id.timeline_item_footer));
    if (localView != null)
    {
      if (!paramBoolean2)
        break label80;
      localView.setVisibility(4);
    }
    while (true)
    {
      return onBind(paramContext, paramTimelineItem, paramBoolean1, paramBoolean2, paramView, paramCachedBitmapFactory, paramTextClipListener);
      label80: localView.setVisibility(0);
    }
  }

  public void clear(View paramView, boolean paramBoolean)
  {
    if (this.glasswareIconLoadingTask != null)
    {
      this.glasswareIconLoadingTask.cancel(true);
      this.glasswareIconLoadingTask = null;
    }
    onClear(paramView, paramBoolean);
  }

  protected int getBundleItemIndex(TimelineItem paramTimelineItem)
  {
    String str = paramTimelineItem.getId();
    int i = 1 + str.lastIndexOf(":");
    if ((i > 0) && (i < str.length()))
      return Integer.parseInt(str.substring(i));
    return 0;
  }

  public abstract int getLayout();

  protected int getTimestampWidth()
  {
    return this.timestampWidth;
  }

  protected abstract boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener);

  protected abstract void onClear(View paramView, boolean paramBoolean);

  protected String provideInfoText(TimelineItem paramTimelineItem)
  {
    return null;
  }

  protected boolean shouldHideSyncIcon(TimelineItem paramTimelineItem)
  {
    return false;
  }

  protected boolean shouldShowTimestamp(TimelineItem paramTimelineItem)
  {
    return true;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.BaseItemViewBinder
 * JD-Core Version:    0.6.2
 */
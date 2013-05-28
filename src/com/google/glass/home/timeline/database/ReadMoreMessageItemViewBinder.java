package com.google.glass.home.timeline.database;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.home.R.color;
import com.google.glass.home.R.dimen;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.timeline.TimelineItemAdapter;
import com.google.glass.home.timeline.TimelineItemAdapter.ViewType;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.EntityImageDownloadTask;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.List;

public class ReadMoreMessageItemViewBinder extends BaseItemViewBinder
{
  public int getLayout()
  {
    return R.layout.timeline_item_read_more_message;
  }

  protected boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    Entity localEntity = paramTimelineItem.getCreator();
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.creator_picture);
    TextView localTextView = (TextView)paramView.findViewById(R.id.creator_name);
    if (localEntity != null)
    {
      localImageView.setVisibility(0);
      localTextView.setVisibility(0);
      int i = (int)paramContext.getResources().getDimension(R.dimen.timeline_item_read_more_picture_size);
      EntityImageDownloadTask localEntityImageDownloadTask = new EntityImageDownloadTask(paramContext, localEntity, localImageView, null, i, i);
      paramView.setTag(R.id.tag_loading_task, localEntityImageDownloadTask);
      DeferredContentLoader.loadForScrollItemSubview(paramView, localEntityImageDownloadTask);
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
      String str1 = localEntity.getDisplayName();
      if (!TextUtils.isEmpty(str1))
        localSpannableStringBuilder.append(str1);
      String str2 = localEntity.getEmail();
      if (!TextUtils.isEmpty(str2))
      {
        int j = localSpannableStringBuilder.length();
        if (j > 0)
          localSpannableStringBuilder.append("\n");
        localSpannableStringBuilder.append(str2);
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(paramContext.getResources().getColor(R.color.text_gray)), j, localSpannableStringBuilder.length(), 33);
      }
      localTextView.setText(localSpannableStringBuilder);
    }
    while (true)
    {
      DynamicSizeTextView localDynamicSizeTextView = (DynamicSizeTextView)paramView.findViewById(R.id.message);
      if (paramBoolean2)
        localDynamicSizeTextView.setForcedToSmallestSize(true);
      localDynamicSizeTextView.setTextClipListener(paramTextClipListener);
      localDynamicSizeTextView.setText(paramTimelineItem.getText());
      return false;
      localImageView.setVisibility(8);
      localTextView.setVisibility(8);
    }
  }

  protected void onClear(View paramView, boolean paramBoolean)
  {
    DynamicSizeTextView localDynamicSizeTextView = (DynamicSizeTextView)paramView.findViewById(R.id.message);
    localDynamicSizeTextView.setTextClipListener(null);
    localDynamicSizeTextView.setForcedToSmallestSize(false);
    EntityImageDownloadTask localEntityImageDownloadTask = (EntityImageDownloadTask)paramView.getTag(R.id.tag_loading_task);
    if (localEntityImageDownloadTask != null)
    {
      localEntityImageDownloadTask.cancel(true);
      paramView.setTag(R.id.tag_loading_task, null);
    }
  }

  public void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList)
  {
    Assert.assertTrue(TimelineItemAdapter.ViewType.MESSAGE.equals(TimelineItemAdapter.getViewType(paramTimelineItem)));
    paramList.add(paramTimelineItem);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.ReadMoreMessageItemViewBinder
 * JD-Core Version:    0.6.2
 */
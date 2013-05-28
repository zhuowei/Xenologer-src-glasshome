package com.google.glass.home.timeline.database;

import android.content.Context;
import android.view.View;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.timeline.TimelineItemAdapter;
import com.google.glass.home.timeline.TimelineItemAdapter.ViewType;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.List;

public class TextItemViewBinder extends BaseItemViewBinder
{
  public int getLayout()
  {
    return R.layout.timeline_item_text;
  }

  protected boolean onBind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener)
  {
    DynamicSizeTextView localDynamicSizeTextView = (DynamicSizeTextView)paramView.findViewById(R.id.text);
    if (paramBoolean2)
      localDynamicSizeTextView.setForcedToSmallestSize(true);
    localDynamicSizeTextView.setTextClipListener(paramTextClipListener);
    localDynamicSizeTextView.setText(paramTimelineItem.getText());
    return false;
  }

  protected void onClear(View paramView, boolean paramBoolean)
  {
    DynamicSizeTextView localDynamicSizeTextView = (DynamicSizeTextView)paramView.findViewById(R.id.text);
    localDynamicSizeTextView.setTextClipListener(null);
    localDynamicSizeTextView.setForcedToSmallestSize(false);
  }

  public void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList)
  {
    Assert.assertTrue(TimelineItemAdapter.ViewType.TEXT.equals(TimelineItemAdapter.getViewType(paramTimelineItem)));
    paramList.add(paramTimelineItem);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.TextItemViewBinder
 * JD-Core Version:    0.6.2
 */
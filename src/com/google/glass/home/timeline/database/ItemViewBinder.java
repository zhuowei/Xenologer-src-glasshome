package com.google.glass.home.timeline.database;

import android.content.Context;
import android.view.View;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.List;

public abstract interface ItemViewBinder
{
  public abstract boolean bind(Context paramContext, TimelineItem paramTimelineItem, boolean paramBoolean1, boolean paramBoolean2, View paramView, CachedBitmapFactory paramCachedBitmapFactory, DynamicSizeTextView.TextClipListener paramTextClipListener);

  public abstract void clear(View paramView, boolean paramBoolean);

  public abstract int getLayout();

  public abstract void splitBundle(TimelineItem paramTimelineItem, List<TimelineItem> paramList);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.ItemViewBinder
 * JD-Core Version:    0.6.2
 */
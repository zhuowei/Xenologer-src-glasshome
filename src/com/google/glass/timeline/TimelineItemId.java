package com.google.glass.timeline;

import android.text.TextUtils;
import com.google.glass.util.Assert;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.io.Serializable;

public class TimelineItemId
  implements Serializable
{
  private final String bundleId;
  private final long displayTime;
  private final boolean isBundleCover;
  private final boolean isPinned;
  private final String itemId;

  public TimelineItemId(TimelineItem paramTimelineItem)
  {
    this(paramTimelineItem.getId(), paramTimelineItem.getIsPinned(), TimelineHelper.getDisplayTime(paramTimelineItem), paramTimelineItem.getBundleId(), paramTimelineItem.getIsBundleCover());
  }

  public TimelineItemId(String paramString1, boolean paramBoolean1, long paramLong, String paramString2, boolean paramBoolean2)
  {
    Assert.assertFalse(TextUtils.isEmpty(paramString1));
    this.itemId = paramString1;
    this.isPinned = paramBoolean1;
    this.displayTime = paramLong;
    this.bundleId = paramString2;
    this.isBundleCover = paramBoolean2;
  }

  public String getBundleId()
  {
    return this.bundleId;
  }

  public long getDisplayTime()
  {
    return this.displayTime;
  }

  public String getItemId()
  {
    return this.itemId;
  }

  public boolean isBundleCover()
  {
    return this.isBundleCover;
  }

  public boolean isPinned()
  {
    return this.isPinned;
  }

  public String toString()
  {
    return "{ itemId: " + this.itemId + ", isPinned: " + this.isPinned + ", displayTime: " + this.displayTime + ", bundleId: " + this.bundleId + ", isBundleCover: " + this.isBundleCover + " }";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineItemId
 * JD-Core Version:    0.6.2
 */
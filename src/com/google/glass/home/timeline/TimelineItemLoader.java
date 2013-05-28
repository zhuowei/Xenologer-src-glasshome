package com.google.glass.home.timeline;

import com.google.glass.timeline.TimelineItemId;
import com.google.googlex.glass.common.proto.TimelineItem;

public abstract interface TimelineItemLoader
{
  public static final TimelineItemLoader EMPTY = new TimelineItemLoader()
  {
    public void asyncRead(int paramAnonymousInt, TimelineItemLoader.ReadCallback paramAnonymousReadCallback)
    {
    }

    public int find(TimelineItemId paramAnonymousTimelineItemId)
    {
      return -1;
    }

    public int getCount()
    {
      return 0;
    }
  };

  public abstract void asyncRead(int paramInt, ReadCallback paramReadCallback);

  public abstract int find(TimelineItemId paramTimelineItemId);

  public abstract int getCount();

  public static abstract class ReadCallback
  {
    private volatile boolean canceled;

    public final void cancel()
    {
      this.canceled = true;
    }

    public final boolean isCanceled()
    {
      return this.canceled;
    }

    public abstract void onItemRead(TimelineItemLoader.ReadResult paramReadResult);
  }

  public static class ReadResult
  {
    private final int bundleCoverStatus;
    private final Long crc32;
    private final TimelineItem item;

    public ReadResult(TimelineItem paramTimelineItem, int paramInt, Long paramLong)
    {
      this.item = paramTimelineItem;
      this.bundleCoverStatus = paramInt;
      this.crc32 = paramLong;
    }

    public int getBundleCoverStatus()
    {
      return this.bundleCoverStatus;
    }

    public Long getCrc32()
    {
      return this.crc32;
    }

    public TimelineItem getItem()
    {
      return this.item;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.TimelineItemLoader
 * JD-Core Version:    0.6.2
 */
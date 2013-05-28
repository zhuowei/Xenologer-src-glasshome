package com.google.googlex.glass.common.proto;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface InsertReplaceOnConflictOrBuilder extends MessageOrBuilder
{
  public abstract TimelineItem getTimelineItem();

  public abstract TimelineItemOrBuilder getTimelineItemOrBuilder();

  public abstract UserAction getUserAction(int paramInt);

  public abstract int getUserActionCount();

  public abstract List<UserAction> getUserActionList();

  public abstract UserActionOrBuilder getUserActionOrBuilder(int paramInt);

  public abstract List<? extends UserActionOrBuilder> getUserActionOrBuilderList();

  public abstract boolean hasTimelineItem();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.InsertReplaceOnConflictOrBuilder
 * JD-Core Version:    0.6.2
 */
package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface UpdateOrBuilder extends MessageOrBuilder
{
  public abstract Update.Mutations getMutations();

  public abstract Update.MutationsOrBuilder getMutationsOrBuilder();

  public abstract String getTimelineItemId();

  public abstract ByteString getTimelineItemIdBytes();

  public abstract UserAction getUserAction(int paramInt);

  public abstract int getUserActionCount();

  public abstract List<UserAction> getUserActionList();

  public abstract UserActionOrBuilder getUserActionOrBuilder(int paramInt);

  public abstract List<? extends UserActionOrBuilder> getUserActionOrBuilderList();

  public abstract boolean hasMutations();

  public abstract boolean hasTimelineItemId();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.UpdateOrBuilder
 * JD-Core Version:    0.6.2
 */
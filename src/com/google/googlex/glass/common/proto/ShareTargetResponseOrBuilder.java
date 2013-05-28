package com.google.googlex.glass.common.proto;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface ShareTargetResponseOrBuilder extends MessageOrBuilder
{
  public abstract ShareTargetResponse.ResponseCode getResponseCode();

  public abstract Entity getTargets(int paramInt);

  public abstract int getTargetsCount();

  public abstract List<Entity> getTargetsList();

  public abstract EntityOrBuilder getTargetsOrBuilder(int paramInt);

  public abstract List<? extends EntityOrBuilder> getTargetsOrBuilderList();

  public abstract boolean hasResponseCode();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ShareTargetResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
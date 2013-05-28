package com.google.googlex.glass.common.proto;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface EntitySyncResponseOrBuilder extends MessageOrBuilder
{
  public abstract Entity getEntities(int paramInt);

  public abstract int getEntitiesCount();

  public abstract List<Entity> getEntitiesList();

  public abstract EntityOrBuilder getEntitiesOrBuilder(int paramInt);

  public abstract List<? extends EntityOrBuilder> getEntitiesOrBuilderList();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.EntitySyncResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
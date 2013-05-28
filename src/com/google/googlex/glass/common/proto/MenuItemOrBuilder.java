package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface MenuItemOrBuilder extends MessageOrBuilder
{
  public abstract MenuItem.Action getAction();

  public abstract String getBroadcastAction();

  public abstract ByteString getBroadcastActionBytes();

  public abstract String getId();

  public abstract ByteString getIdBytes();

  public abstract boolean getRemoveWhenSelected();

  public abstract MenuValue getValue(int paramInt);

  public abstract int getValueCount();

  public abstract List<MenuValue> getValueList();

  public abstract MenuValueOrBuilder getValueOrBuilder(int paramInt);

  public abstract List<? extends MenuValueOrBuilder> getValueOrBuilderList();

  public abstract boolean hasAction();

  public abstract boolean hasBroadcastAction();

  public abstract boolean hasId();

  public abstract boolean hasRemoveWhenSelected();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.MenuItemOrBuilder
 * JD-Core Version:    0.6.2
 */
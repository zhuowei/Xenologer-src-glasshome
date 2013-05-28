package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface MenuValueOrBuilder extends MessageOrBuilder
{
  public abstract String getDisplayName();

  public abstract ByteString getDisplayNameBytes();

  public abstract String getIconUrl();

  public abstract ByteString getIconUrlBytes();

  public abstract MenuItem.State getState();

  public abstract boolean hasDisplayName();

  public abstract boolean hasIconUrl();

  public abstract boolean hasState();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.MenuValueOrBuilder
 * JD-Core Version:    0.6.2
 */
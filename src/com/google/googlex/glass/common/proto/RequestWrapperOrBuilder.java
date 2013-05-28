package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface RequestWrapperOrBuilder extends MessageOrBuilder
{
  public abstract ByteString getData();

  public abstract String getPath();

  public abstract ByteString getPathBytes();

  public abstract boolean hasData();

  public abstract boolean hasPath();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.RequestWrapperOrBuilder
 * JD-Core Version:    0.6.2
 */
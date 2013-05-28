package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface AuthTokenOrBuilder extends MessageOrBuilder
{
  public abstract AuthTokenType getType();

  public abstract String getValue();

  public abstract ByteString getValueBytes();

  public abstract boolean hasType();

  public abstract boolean hasValue();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AuthTokenOrBuilder
 * JD-Core Version:    0.6.2
 */
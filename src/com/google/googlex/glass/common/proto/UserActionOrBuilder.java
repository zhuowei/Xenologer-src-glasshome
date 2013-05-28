package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface UserActionOrBuilder extends MessageOrBuilder
{
  public abstract String getPayload();

  public abstract ByteString getPayloadBytes();

  public abstract UserAction.Type getType();

  public abstract boolean hasPayload();

  public abstract boolean hasType();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.UserActionOrBuilder
 * JD-Core Version:    0.6.2
 */
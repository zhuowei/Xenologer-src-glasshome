package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface ResourceRequestOrBuilder extends MessageOrBuilder
{
  public abstract long getFingerprint();

  public abstract String getName();

  public abstract ByteString getNameBytes();

  public abstract ResourceRequest.ResourceType getType();

  public abstract boolean hasFingerprint();

  public abstract boolean hasName();

  public abstract boolean hasType();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ResourceRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
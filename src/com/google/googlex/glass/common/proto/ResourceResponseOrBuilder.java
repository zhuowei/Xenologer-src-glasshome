package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface ResourceResponseOrBuilder extends MessageOrBuilder
{
  public abstract ByteString getData();

  public abstract long getFingerprint();

  public abstract ResourceResponse.Status getStatus();

  public abstract boolean hasData();

  public abstract boolean hasFingerprint();

  public abstract boolean hasStatus();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ResourceResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
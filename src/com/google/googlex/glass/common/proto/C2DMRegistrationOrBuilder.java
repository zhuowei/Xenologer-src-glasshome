package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface C2DMRegistrationOrBuilder extends MessageOrBuilder
{
  public abstract String getDeviceId();

  public abstract ByteString getDeviceIdBytes();

  public abstract String getId();

  public abstract ByteString getIdBytes();

  public abstract long getRegistrationTime();

  public abstract boolean hasDeviceId();

  public abstract boolean hasId();

  public abstract boolean hasRegistrationTime();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.C2DMRegistrationOrBuilder
 * JD-Core Version:    0.6.2
 */
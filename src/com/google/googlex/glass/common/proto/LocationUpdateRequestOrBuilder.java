package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface LocationUpdateRequestOrBuilder extends MessageOrBuilder
{
  public abstract String getDeviceId();

  public abstract ByteString getDeviceIdBytes();

  public abstract Location getLocation();

  public abstract LocationOrBuilder getLocationOrBuilder();

  public abstract boolean hasDeviceId();

  public abstract boolean hasLocation();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.LocationUpdateRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
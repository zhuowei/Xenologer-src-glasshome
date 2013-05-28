package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface PendingWipeOrBuilder extends MessageOrBuilder
{
  public abstract String getDeviceId();

  public abstract ByteString getDeviceIdBytes();

  public abstract long getTimestamp();

  public abstract boolean getWipeExternalStorage();

  public abstract boolean hasDeviceId();

  public abstract boolean hasTimestamp();

  public abstract boolean hasWipeExternalStorage();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.PendingWipeOrBuilder
 * JD-Core Version:    0.6.2
 */
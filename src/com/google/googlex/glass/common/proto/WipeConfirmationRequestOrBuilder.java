package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface WipeConfirmationRequestOrBuilder extends MessageOrBuilder
{
  public abstract String getDeviceId();

  public abstract ByteString getDeviceIdBytes();

  public abstract boolean hasDeviceId();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.WipeConfirmationRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface GetTimeZoneResponseOrBuilder extends MessageOrBuilder
{
  public abstract boolean getReverseSuccessful();

  public abstract String getTimeZone();

  public abstract ByteString getTimeZoneBytes();

  public abstract boolean hasReverseSuccessful();

  public abstract boolean hasTimeZone();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.GetTimeZoneResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
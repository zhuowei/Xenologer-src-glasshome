package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface AudioClipIdOrBuilder extends MessageOrBuilder
{
  public abstract String getEmailAddress();

  public abstract ByteString getEmailAddressBytes();

  public abstract ByteString getRandom();

  public abstract long getTimestamp();

  public abstract boolean hasEmailAddress();

  public abstract boolean hasRandom();

  public abstract boolean hasTimestamp();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AudioClipIdOrBuilder
 * JD-Core Version:    0.6.2
 */
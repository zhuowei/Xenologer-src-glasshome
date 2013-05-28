package com.google.googlex.glass.common.proto;

import com.google.protobuf.MessageOrBuilder;

public abstract interface WipeConfirmationResponseOrBuilder extends MessageOrBuilder
{
  public abstract WipeConfirmationResponse.Status getStatus();

  public abstract boolean getWipeExternalStorage();

  public abstract boolean hasStatus();

  public abstract boolean hasWipeExternalStorage();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.WipeConfirmationResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
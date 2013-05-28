package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface SwapSetupCodeRequestOrBuilder extends MessageOrBuilder
{
  public abstract String getCode();

  public abstract ByteString getCodeBytes();

  public abstract String getRedirectUrl();

  public abstract ByteString getRedirectUrlBytes();

  public abstract boolean hasCode();

  public abstract boolean hasRedirectUrl();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SwapSetupCodeRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
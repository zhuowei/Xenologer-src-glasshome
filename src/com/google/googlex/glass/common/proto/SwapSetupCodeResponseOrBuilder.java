package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface SwapSetupCodeResponseOrBuilder extends MessageOrBuilder
{
  public abstract String getAccessToken();

  public abstract ByteString getAccessTokenBytes();

  public abstract String getRefreshToken();

  public abstract ByteString getRefreshTokenBytes();

  public abstract boolean getSuccess();

  public abstract boolean hasAccessToken();

  public abstract boolean hasRefreshToken();

  public abstract boolean hasSuccess();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SwapSetupCodeResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
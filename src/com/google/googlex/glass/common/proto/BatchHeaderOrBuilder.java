package com.google.googlex.glass.common.proto;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface BatchHeaderOrBuilder extends MessageOrBuilder
{
  public abstract AuthToken getAuthToken(int paramInt);

  public abstract int getAuthTokenCount();

  public abstract List<AuthToken> getAuthTokenList();

  public abstract AuthTokenOrBuilder getAuthTokenOrBuilder(int paramInt);

  public abstract List<? extends AuthTokenOrBuilder> getAuthTokenOrBuilderList();

  public abstract long getDispatcherId();

  public abstract boolean hasDispatcherId();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BatchHeaderOrBuilder
 * JD-Core Version:    0.6.2
 */
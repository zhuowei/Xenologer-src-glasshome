package com.google.googlex.glass.common.proto;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface BatchResponseOrBuilder extends MessageOrBuilder
{
  public abstract ResponseWrapper getResponse(int paramInt);

  public abstract int getResponseCount();

  public abstract List<ResponseWrapper> getResponseList();

  public abstract ResponseWrapperOrBuilder getResponseOrBuilder(int paramInt);

  public abstract List<? extends ResponseWrapperOrBuilder> getResponseOrBuilderList();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BatchResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
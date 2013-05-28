package com.google.googlex.glass.common.proto;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface BatchRequestOrBuilder extends MessageOrBuilder
{
  public abstract BatchHeader getHeader();

  public abstract BatchHeaderOrBuilder getHeaderOrBuilder();

  public abstract RequestWrapper getRequest(int paramInt);

  public abstract int getRequestCount();

  public abstract List<RequestWrapper> getRequestList();

  public abstract RequestWrapperOrBuilder getRequestOrBuilder(int paramInt);

  public abstract List<? extends RequestWrapperOrBuilder> getRequestOrBuilderList();

  public abstract boolean hasHeader();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BatchRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
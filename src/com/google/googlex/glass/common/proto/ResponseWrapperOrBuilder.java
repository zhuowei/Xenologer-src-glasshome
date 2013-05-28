package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface ResponseWrapperOrBuilder extends MessageOrBuilder
{
  public abstract ByteString getData();

  public abstract ResponseWrapper.ErrorCode getErrorCode();

  public abstract boolean hasData();

  public abstract boolean hasErrorCode();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ResponseWrapperOrBuilder
 * JD-Core Version:    0.6.2
 */
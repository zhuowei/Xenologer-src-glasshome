package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface SelectOrBuilder extends MessageOrBuilder
{
  public abstract ByteString getContinuationToken();

  public abstract int getMaxItems();

  public abstract long getModifiedAfterTime();

  public abstract long getModifiedBeforeTime();

  public abstract long getStartTime();

  public abstract long getWriteAfterTime();

  public abstract long getWriteBeforeTime();

  public abstract boolean hasContinuationToken();

  public abstract boolean hasMaxItems();

  public abstract boolean hasModifiedAfterTime();

  public abstract boolean hasModifiedBeforeTime();

  public abstract boolean hasStartTime();

  public abstract boolean hasWriteAfterTime();

  public abstract boolean hasWriteBeforeTime();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SelectOrBuilder
 * JD-Core Version:    0.6.2
 */
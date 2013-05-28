package com.google.glass.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface MapRenderResponseOrBuilder extends MessageOrBuilder
{
  public abstract String getId();

  public abstract ByteString getIdBytes();

  public abstract ByteString getImage();

  public abstract boolean hasId();

  public abstract boolean hasImage();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.MapRenderResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
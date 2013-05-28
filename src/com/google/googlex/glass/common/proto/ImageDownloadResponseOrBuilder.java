package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface ImageDownloadResponseOrBuilder extends MessageOrBuilder
{
  public abstract ByteString getImage();

  public abstract ImageDownloadResponse.Status getStatus();

  public abstract boolean hasImage();

  public abstract boolean hasStatus();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ImageDownloadResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface ImageDownloadRequestOrBuilder extends MessageOrBuilder
{
  public abstract ImageDownloadRequest.CropType getCropType();

  public abstract ImageDownloadRequest.RequestedDimensions getRequestedDimensions();

  public abstract ImageDownloadRequest.RequestedDimensionsOrBuilder getRequestedDimensionsOrBuilder();

  public abstract String getUrl();

  public abstract ByteString getUrlBytes();

  public abstract boolean hasCropType();

  public abstract boolean hasRequestedDimensions();

  public abstract boolean hasUrl();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ImageDownloadRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
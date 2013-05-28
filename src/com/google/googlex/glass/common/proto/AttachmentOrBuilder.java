package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface AttachmentOrBuilder extends MessageOrBuilder
{
  public abstract String getClientCachePath();

  public abstract ByteString getClientCachePathBytes();

  public abstract String getContentType();

  public abstract ByteString getContentTypeBytes();

  public abstract String getContentUrl();

  public abstract ByteString getContentUrlBytes();

  public abstract long getCreationTime();

  public abstract String getId();

  public abstract ByteString getIdBytes();

  public abstract boolean getIsProcessingContent();

  public abstract String getThumbnailUrl();

  public abstract ByteString getThumbnailUrlBytes();

  public abstract boolean hasClientCachePath();

  public abstract boolean hasContentType();

  public abstract boolean hasContentUrl();

  public abstract boolean hasCreationTime();

  public abstract boolean hasId();

  public abstract boolean hasIsProcessingContent();

  public abstract boolean hasThumbnailUrl();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AttachmentOrBuilder
 * JD-Core Version:    0.6.2
 */
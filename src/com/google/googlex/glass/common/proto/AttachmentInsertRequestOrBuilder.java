package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface AttachmentInsertRequestOrBuilder extends MessageOrBuilder
{
  public abstract ByteString getContent();

  public abstract long getCreationTime();

  public abstract String getDescription();

  public abstract ByteString getDescriptionBytes();

  public abstract String getDeviceId();

  public abstract ByteString getDeviceIdBytes();

  public abstract String getMimeType();

  public abstract ByteString getMimeTypeBytes();

  public abstract String getName();

  public abstract ByteString getNameBytes();

  public abstract boolean hasContent();

  public abstract boolean hasCreationTime();

  public abstract boolean hasDescription();

  public abstract boolean hasDeviceId();

  public abstract boolean hasMimeType();

  public abstract boolean hasName();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AttachmentInsertRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
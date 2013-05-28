package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface AttachmentInsertResponseOrBuilder extends MessageOrBuilder
{
  public abstract String getAttachmentId();

  public abstract ByteString getAttachmentIdBytes();

  public abstract AttachmentInsertResponse.ResponseCode getResponseCode();

  public abstract boolean hasAttachmentId();

  public abstract boolean hasResponseCode();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AttachmentInsertResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
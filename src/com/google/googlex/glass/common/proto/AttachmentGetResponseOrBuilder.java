package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface AttachmentGetResponseOrBuilder extends MessageOrBuilder
{
  public abstract ByteString getContent();

  public abstract String getMimeType();

  public abstract ByteString getMimeTypeBytes();

  public abstract AttachmentGetResponse.ResponseCode getResponseCode();

  public abstract boolean hasContent();

  public abstract boolean hasMimeType();

  public abstract boolean hasResponseCode();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AttachmentGetResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
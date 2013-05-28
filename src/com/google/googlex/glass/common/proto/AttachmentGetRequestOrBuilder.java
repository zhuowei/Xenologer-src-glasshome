package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface AttachmentGetRequestOrBuilder extends MessageOrBuilder
{
  public abstract String getAttachmentId();

  public abstract ByteString getAttachmentIdBytes();

  public abstract AttachmentGetRequest.ScreenDimensions getScreenDimensions();

  public abstract AttachmentGetRequest.ScreenDimensionsOrBuilder getScreenDimensionsOrBuilder();

  public abstract boolean hasAttachmentId();

  public abstract boolean hasScreenDimensions();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AttachmentGetRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
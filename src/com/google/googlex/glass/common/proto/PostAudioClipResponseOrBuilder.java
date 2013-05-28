package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface PostAudioClipResponseOrBuilder extends MessageOrBuilder
{
  public abstract String getAudioClipDownloadUrl();

  public abstract ByteString getAudioClipDownloadUrlBytes();

  public abstract String getAudioClipPlayUrl();

  public abstract ByteString getAudioClipPlayUrlBytes();

  public abstract float getConfidence();

  public abstract String getHtmlTranscript();

  public abstract ByteString getHtmlTranscriptBytes();

  public abstract String getPlainTranscript();

  public abstract ByteString getPlainTranscriptBytes();

  public abstract String getRawAudioClipDownloadUrl();

  public abstract ByteString getRawAudioClipDownloadUrlBytes();

  public abstract boolean hasAudioClipDownloadUrl();

  public abstract boolean hasAudioClipPlayUrl();

  public abstract boolean hasConfidence();

  public abstract boolean hasHtmlTranscript();

  public abstract boolean hasPlainTranscript();

  public abstract boolean hasRawAudioClipDownloadUrl();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.PostAudioClipResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
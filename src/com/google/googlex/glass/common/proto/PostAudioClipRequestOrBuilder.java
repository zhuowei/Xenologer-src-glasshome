package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface PostAudioClipRequestOrBuilder extends MessageOrBuilder
{
  public abstract AudioFormat getAudioFormat();

  public abstract String getClientPlatform();

  public abstract ByteString getClientPlatformBytes();

  public abstract AudioClipId getId();

  public abstract AudioClipIdOrBuilder getIdOrBuilder();

  public abstract ByteString getRawAudio();

  public abstract boolean getStoreAudio();

  public abstract boolean getStoreRawAudio();

  public abstract boolean getStoreTranscript();

  public abstract boolean getTranscribe();

  public abstract boolean hasAudioFormat();

  public abstract boolean hasClientPlatform();

  public abstract boolean hasId();

  public abstract boolean hasRawAudio();

  public abstract boolean hasStoreAudio();

  public abstract boolean hasStoreRawAudio();

  public abstract boolean hasStoreTranscript();

  public abstract boolean hasTranscribe();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.PostAudioClipRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
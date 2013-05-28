package com.google.googlex.glass.common.proto;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface AudioClipTranscriptOrBuilder extends MessageOrBuilder
{
  public abstract AudioClipTranscript.Token getToken(int paramInt);

  public abstract int getTokenCount();

  public abstract List<AudioClipTranscript.Token> getTokenList();

  public abstract AudioClipTranscript.TokenOrBuilder getTokenOrBuilder(int paramInt);

  public abstract List<? extends AudioClipTranscript.TokenOrBuilder> getTokenOrBuilderList();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AudioClipTranscriptOrBuilder
 * JD-Core Version:    0.6.2
 */
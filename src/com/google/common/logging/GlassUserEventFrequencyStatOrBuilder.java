package com.google.common.logging;

import com.google.protobuf.MessageOrBuilder;

public abstract interface GlassUserEventFrequencyStatOrBuilder extends MessageOrBuilder
{
  public abstract long getDurationMs();

  public abstract long getFrequencyHz();

  public abstract boolean hasDurationMs();

  public abstract boolean hasFrequencyHz();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassUserEventFrequencyStatOrBuilder
 * JD-Core Version:    0.6.2
 */
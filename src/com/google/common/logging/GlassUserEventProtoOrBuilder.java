package com.google.common.logging;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface GlassUserEventProtoOrBuilder extends MessageOrBuilder
{
  public abstract String getEventData();

  public abstract ByteString getEventDataBytes();

  public abstract long getEventTimeMs();

  public abstract String getEventType();

  public abstract ByteString getEventTypeBytes();

  public abstract GlassUserEventPerformanceStats getPerformanceStats();

  public abstract GlassUserEventPerformanceStatsOrBuilder getPerformanceStatsOrBuilder();

  public abstract boolean hasEventData();

  public abstract boolean hasEventTimeMs();

  public abstract boolean hasEventType();

  public abstract boolean hasPerformanceStats();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassUserEventProtoOrBuilder
 * JD-Core Version:    0.6.2
 */
package com.google.googlex.glass.common.proto;

import com.google.common.logging.GlassUserEventProto;
import com.google.common.logging.GlassUserEventProtoOrBuilder;
import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface ReportUserEventRequestOrBuilder extends MessageOrBuilder
{
  @Deprecated
  public abstract String getAction();

  @Deprecated
  public abstract ByteString getActionBytes();

  @Deprecated
  public abstract String getData();

  @Deprecated
  public abstract ByteString getDataBytes();

  public abstract String getHardwareVersion();

  public abstract ByteString getHardwareVersionBytes();

  public abstract String getSessionId();

  public abstract ByteString getSessionIdBytes();

  public abstract String getSoftwareVersion();

  public abstract ByteString getSoftwareVersionBytes();

  @Deprecated
  public abstract long getTimestamp();

  public abstract GlassUserEventProto getUserEventProto();

  public abstract GlassUserEventProtoOrBuilder getUserEventProtoOrBuilder();

  @Deprecated
  public abstract boolean hasAction();

  @Deprecated
  public abstract boolean hasData();

  public abstract boolean hasHardwareVersion();

  public abstract boolean hasSessionId();

  public abstract boolean hasSoftwareVersion();

  @Deprecated
  public abstract boolean hasTimestamp();

  public abstract boolean hasUserEventProto();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ReportUserEventRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
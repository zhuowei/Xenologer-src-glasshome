package com.google.common.logging;

import com.google.googlex.glass.common.proto.proto2api.HardwareVersion;
import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface GlassExtensionsProtoOrBuilder extends MessageOrBuilder
{
  public abstract HardwareVersion getHardwareVersion();

  public abstract String getSessionId();

  public abstract ByteString getSessionIdBytes();

  public abstract String getSoftwareVersion();

  public abstract ByteString getSoftwareVersionBytes();

  public abstract GlassUserEventProto getUserEvent(int paramInt);

  public abstract int getUserEventCount();

  public abstract List<GlassUserEventProto> getUserEventList();

  public abstract GlassUserEventProtoOrBuilder getUserEventOrBuilder(int paramInt);

  public abstract List<? extends GlassUserEventProtoOrBuilder> getUserEventOrBuilderList();

  public abstract boolean hasHardwareVersion();

  public abstract boolean hasSessionId();

  public abstract boolean hasSoftwareVersion();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassExtensionsProtoOrBuilder
 * JD-Core Version:    0.6.2
 */
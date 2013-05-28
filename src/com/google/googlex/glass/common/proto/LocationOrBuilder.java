package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface LocationOrBuilder extends MessageOrBuilder
{
  public abstract double getAccuracy();

  public abstract String getAddress();

  public abstract ByteString getAddressBytes();

  public abstract String getDisplayName();

  public abstract ByteString getDisplayNameBytes();

  public abstract String getId();

  public abstract ByteString getIdBytes();

  public abstract double getLatitude();

  public abstract String getLevelId();

  public abstract ByteString getLevelIdBytes();

  public abstract float getLevelNumber();

  public abstract double getLongitude();

  public abstract String getSource();

  public abstract ByteString getSourceBytes();

  public abstract long getTimestamp();

  public abstract boolean hasAccuracy();

  public abstract boolean hasAddress();

  public abstract boolean hasDisplayName();

  public abstract boolean hasId();

  public abstract boolean hasLatitude();

  public abstract boolean hasLevelId();

  public abstract boolean hasLevelNumber();

  public abstract boolean hasLongitude();

  public abstract boolean hasSource();

  public abstract boolean hasTimestamp();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.LocationOrBuilder
 * JD-Core Version:    0.6.2
 */
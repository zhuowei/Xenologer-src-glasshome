package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface C2DMRegistrationRequestOrBuilder extends MessageOrBuilder
{
  public abstract C2DMRegistrationRequest.Action getAction();

  public abstract String getDeviceHardware();

  public abstract ByteString getDeviceHardwareBytes();

  public abstract String getDeviceId();

  public abstract ByteString getDeviceIdBytes();

  public abstract String getDeviceOsVersion();

  public abstract ByteString getDeviceOsVersionBytes();

  public abstract long getGsfDeviceId();

  public abstract String getLocale();

  public abstract ByteString getLocaleBytes();

  public abstract String getMajorVersion();

  public abstract ByteString getMajorVersionBytes();

  public abstract String getRegistrationId();

  public abstract ByteString getRegistrationIdBytes();

  public abstract long getVersion();

  public abstract boolean hasAction();

  public abstract boolean hasDeviceHardware();

  public abstract boolean hasDeviceId();

  public abstract boolean hasDeviceOsVersion();

  public abstract boolean hasGsfDeviceId();

  public abstract boolean hasLocale();

  public abstract boolean hasMajorVersion();

  public abstract boolean hasRegistrationId();

  public abstract boolean hasVersion();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.C2DMRegistrationRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
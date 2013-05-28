package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

public abstract interface SetupUserAccountResponseOrBuilder extends MessageOrBuilder
{
  public abstract String getDisplayName();

  public abstract ByteString getDisplayNameBytes();

  public abstract String getPhotoUrl();

  public abstract ByteString getPhotoUrlBytes();

  public abstract boolean getUseGoogleVoiceSms();

  public abstract boolean hasDisplayName();

  public abstract boolean hasPhotoUrl();

  public abstract boolean hasUseGoogleVoiceSms();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SetupUserAccountResponseOrBuilder
 * JD-Core Version:    0.6.2
 */
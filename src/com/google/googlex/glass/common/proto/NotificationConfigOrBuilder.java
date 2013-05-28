package com.google.googlex.glass.common.proto;

import com.google.protobuf.MessageOrBuilder;

public abstract interface NotificationConfigOrBuilder extends MessageOrBuilder
{
  public abstract long getDeliveryTime();

  public abstract NotificationConfig.Level getLevel();

  public abstract boolean hasDeliveryTime();

  public abstract boolean hasLevel();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.NotificationConfigOrBuilder
 * JD-Core Version:    0.6.2
 */
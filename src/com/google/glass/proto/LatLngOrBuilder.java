package com.google.glass.proto;

import com.google.protobuf.MessageOrBuilder;

public abstract interface LatLngOrBuilder extends MessageOrBuilder
{
  public abstract double getLat();

  public abstract double getLng();

  public abstract boolean hasLat();

  public abstract boolean hasLng();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.LatLngOrBuilder
 * JD-Core Version:    0.6.2
 */
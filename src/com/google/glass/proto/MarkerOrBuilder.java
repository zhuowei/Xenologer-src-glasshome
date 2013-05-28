package com.google.glass.proto;

import com.google.protobuf.MessageOrBuilder;

public abstract interface MarkerOrBuilder extends MessageOrBuilder
{
  public abstract LatLng getLocation();

  public abstract LatLngOrBuilder getLocationOrBuilder();

  public abstract Marker.MarkerType getType();

  public abstract boolean hasLocation();

  public abstract boolean hasType();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.MarkerOrBuilder
 * JD-Core Version:    0.6.2
 */
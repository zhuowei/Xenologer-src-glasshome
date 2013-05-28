package com.google.glass.proto;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface PolylineOrBuilder extends MessageOrBuilder
{
  public abstract int getColorArgb();

  public abstract LatLng getVertex(int paramInt);

  public abstract int getVertexCount();

  public abstract List<LatLng> getVertexList();

  public abstract LatLngOrBuilder getVertexOrBuilder(int paramInt);

  public abstract List<? extends LatLngOrBuilder> getVertexOrBuilderList();

  public abstract float getWidth();

  public abstract boolean hasColorArgb();

  public abstract boolean hasWidth();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.PolylineOrBuilder
 * JD-Core Version:    0.6.2
 */
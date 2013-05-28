package com.google.glass.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface MapRenderRequestOrBuilder extends MessageOrBuilder
{
  public abstract LatLng getCenter();

  public abstract LatLngOrBuilder getCenterOrBuilder();

  public abstract int getHeight();

  public abstract String getId();

  public abstract ByteString getIdBytes();

  public abstract double getLatSpan();

  public abstract double getLngSpan();

  public abstract Marker getMarker(int paramInt);

  public abstract int getMarkerCount();

  public abstract List<Marker> getMarkerList();

  public abstract MarkerOrBuilder getMarkerOrBuilder(int paramInt);

  public abstract List<? extends MarkerOrBuilder> getMarkerOrBuilderList();

  public abstract Polyline getPolyline(int paramInt);

  public abstract int getPolylineCount();

  public abstract List<Polyline> getPolylineList();

  public abstract PolylineOrBuilder getPolylineOrBuilder(int paramInt);

  public abstract List<? extends PolylineOrBuilder> getPolylineOrBuilderList();

  public abstract MapRenderRequest.Type getType();

  public abstract String getUri();

  public abstract ByteString getUriBytes();

  public abstract int getWidth();

  public abstract float getZoom();

  public abstract boolean hasCenter();

  public abstract boolean hasHeight();

  public abstract boolean hasId();

  public abstract boolean hasLatSpan();

  public abstract boolean hasLngSpan();

  public abstract boolean hasType();

  public abstract boolean hasUri();

  public abstract boolean hasWidth();

  public abstract boolean hasZoom();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.MapRenderRequestOrBuilder
 * JD-Core Version:    0.6.2
 */
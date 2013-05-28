package com.google.glass.proto;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class MapRenderingService
{
  private static Descriptors.FileDescriptor descriptor = MapRenderingServiceInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_glass_proto_LatLng_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_glass_proto_LatLng_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_glass_proto_LatLng_descriptor, new String[] { "Lat", "Lng" });
  static Descriptors.Descriptor internal_static_glass_proto_MapRenderRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
  static GeneratedMessage.FieldAccessorTable internal_static_glass_proto_MapRenderRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_glass_proto_MapRenderRequest_descriptor, new String[] { "Id", "Type", "Uri", "Width", "Height", "Center", "Zoom", "LatSpan", "LngSpan", "Marker", "Polyline" });
  static Descriptors.Descriptor internal_static_glass_proto_MapRenderResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(4);
  static GeneratedMessage.FieldAccessorTable internal_static_glass_proto_MapRenderResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_glass_proto_MapRenderResponse_descriptor, new String[] { "Id", "Image" });
  static Descriptors.Descriptor internal_static_glass_proto_Marker_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_glass_proto_Marker_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_glass_proto_Marker_descriptor, new String[] { "Type", "Location" });
  static Descriptors.Descriptor internal_static_glass_proto_Polyline_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  static GeneratedMessage.FieldAccessorTable internal_static_glass_proto_Polyline_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_glass_proto_Polyline_descriptor, new String[] { "Vertex", "Width", "ColorArgb" });

  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }

  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.MapRenderingService
 * JD-Core Version:    0.6.2
 */
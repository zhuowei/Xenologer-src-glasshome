package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class LocationRequest
{
  private static Descriptors.FileDescriptor descriptor = LocationRequestInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_LocationUpdateRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_LocationUpdateRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_LocationUpdateRequest_descriptor, new String[] { "Location", "DeviceId" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_LocationUpdateResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_LocationUpdateResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_LocationUpdateResponse_descriptor, new String[] { "ResponseCode" });

  static
  {
    Timeline.getDescriptor();
  }

  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }

  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.LocationRequest
 * JD-Core Version:    0.6.2
 */
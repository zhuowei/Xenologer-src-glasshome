package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class Timezone
{
  private static Descriptors.FileDescriptor descriptor = TimezoneInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_GetTimeZoneRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_GetTimeZoneRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_GetTimeZoneRequest_descriptor, new String[] { "Latitude", "Longitude" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_GetTimeZoneResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_GetTimeZoneResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_GetTimeZoneResponse_descriptor, new String[] { "TimeZone", "ReverseSuccessful" });

  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }

  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.Timezone
 * JD-Core Version:    0.6.2
 */
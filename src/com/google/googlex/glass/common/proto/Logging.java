package com.google.googlex.glass.common.proto;

import com.google.common.logging.GlassExtensions;
import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class Logging
{
  private static Descriptors.FileDescriptor descriptor = LoggingInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_GetSessionIdRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_GetSessionIdRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_GetSessionIdRequest_descriptor, new String[0]);
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_GetSessionIdResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_GetSessionIdResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_GetSessionIdResponse_descriptor, new String[] { "SessionId" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_ReportUserEventRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor, new String[] { "Action", "Data", "SessionId", "Timestamp", "SoftwareVersion", "HardwareVersion", "UserEventProto" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_ReportUserEventResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_ReportUserEventResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_ReportUserEventResponse_descriptor, new String[] { "ResponseCode" });

  static
  {
    GlassExtensions.getDescriptor();
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
 * Qualified Name:     com.google.googlex.glass.common.proto.Logging
 * JD-Core Version:    0.6.2
 */
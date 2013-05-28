package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class Admin
{
  private static Descriptors.FileDescriptor descriptor = AdminInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_PendingWipe_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_PendingWipe_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_PendingWipe_descriptor, new String[] { "Timestamp", "DeviceId", "WipeExternalStorage" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_WipeConfirmationRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_WipeConfirmationRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_WipeConfirmationRequest_descriptor, new String[] { "DeviceId" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_WipeConfirmationResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_WipeConfirmationResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_WipeConfirmationResponse_descriptor, new String[] { "Status", "WipeExternalStorage" });

  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }

  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.Admin
 * JD-Core Version:    0.6.2
 */
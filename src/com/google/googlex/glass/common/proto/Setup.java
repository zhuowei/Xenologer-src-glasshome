package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class Setup
{
  private static Descriptors.FileDescriptor descriptor = SetupInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_SetupUserAccountRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_SetupUserAccountRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_SetupUserAccountRequest_descriptor, new String[] { "DeviceId" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_SetupUserAccountResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_SetupUserAccountResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_SetupUserAccountResponse_descriptor, new String[] { "DisplayName", "PhotoUrl", "UseGoogleVoiceSms" });

  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }

  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.Setup
 * JD-Core Version:    0.6.2
 */
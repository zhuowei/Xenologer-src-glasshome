package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class C2DmRegister
{
  private static Descriptors.FileDescriptor descriptor = C2DmRegisterInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_descriptor, new String[] { "Action", "RegistrationId", "DeviceId", "Locale", "MajorVersion", "Version", "DeviceOsVersion", "DeviceHardware", "GsfDeviceId" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_C2DMRegistrationResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_C2DMRegistrationResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_C2DMRegistrationResponse_descriptor, new String[] { "ResponseCode" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_C2DMRegistration_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_C2DMRegistration_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_C2DMRegistration_descriptor, new String[] { "Id", "RegistrationTime", "DeviceId" });

  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }

  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.C2DmRegister
 * JD-Core Version:    0.6.2
 */
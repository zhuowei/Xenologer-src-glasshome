package com.google.googlex.glass.common.proto.proto2api;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protos.logs_proto.LogsAnnotations;

public final class HardwareVersionProto
{
  private static Descriptors.FileDescriptor descriptor = HardwareVersionProtoInternalDescriptors.descriptor;

  static
  {
    ExtensionRegistry localExtensionRegistry = ExtensionRegistry.newInstance();
    localExtensionRegistry.add(LogsAnnotations.fileNotUsedForLoggingExceptEnums);
    Descriptors.FileDescriptor.internalUpdateFileDescriptor(descriptor, localExtensionRegistry);
    LogsAnnotations.getDescriptor();
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
 * Qualified Name:     com.google.googlex.glass.common.proto.proto2api.HardwareVersionProto
 * JD-Core Version:    0.6.2
 */
package com.google.common.logging;

import com.google.googlex.glass.common.proto.proto2api.HardwareVersionProto;
import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import com.google.protos.logs_proto.LogsAnnotations;
import java.util.List;

public final class GlassExtensions
{
  private static Descriptors.FileDescriptor descriptor = GlassExtensionsInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_GlassExtensionsProto_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_GlassExtensionsProto_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_GlassUserEventFrequencyStat_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor, new String[] { "FrequencyHz", "DurationMs" });
  static Descriptors.Descriptor internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_GlassUserEventPerformanceStats_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor, new String[] { "FrequencyStat", "TotalKernelMs", "BoardTemperatureMilliCentigrade", "BatteryStateOfChargeMah", "BatteryChargeWhenFullMah", "BatteryTemperatureMilliCentigrade", "TotalBytesSent" });
  static Descriptors.Descriptor internal_static_googlex_glass_GlassUserEventProto_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_GlassUserEventProto_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_GlassUserEventProto_descriptor, new String[] { "EventTimeMs", "EventType", "EventData", "PerformanceStats" });

  static
  {
    internal_static_googlex_glass_GlassExtensionsProto_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
    internal_static_googlex_glass_GlassExtensionsProto_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_GlassExtensionsProto_descriptor, new String[] { "SessionId", "SoftwareVersion", "UserEvent", "HardwareVersion" });
    ExtensionRegistry localExtensionRegistry = ExtensionRegistry.newInstance();
    localExtensionRegistry.add(LogsAnnotations.idType);
    localExtensionRegistry.add(LogsAnnotations.idType);
    localExtensionRegistry.add(LogsAnnotations.idType);
    localExtensionRegistry.add(LogsAnnotations.idType);
    localExtensionRegistry.add(LogsAnnotations.msgDetails);
    Descriptors.FileDescriptor.internalUpdateFileDescriptor(descriptor, localExtensionRegistry);
    HardwareVersionProto.getDescriptor();
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
 * Qualified Name:     com.google.common.logging.GlassExtensions
 * JD-Core Version:    0.6.2
 */
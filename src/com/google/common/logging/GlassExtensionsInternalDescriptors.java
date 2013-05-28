package com.google.common.logging;

import com.google.googlex.glass.common.proto.proto2api.HardwareVersionProtoInternalDescriptors;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;
import com.google.protos.logs_proto.LogsAnnotationsInternalDescriptors;

public class GlassExtensionsInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\n/logs/proto/googlex/glass/glass_extensions.proto\022\rgooglex.glass\032*googlex/glass/proto/hardware_version.proto\0322logs/proto/logs_annotations/logs_annotations.proto\"H\n\033GlassUserEventFrequencyStat\022\024\n\ffrequency_hz\030\001 \002(\003\022\023\n\013duration_ms\030\002 \002(\003\"¼\002\n\036GlassUserEventPerformanceStats\022B\n\016frequency_stat\030\001 \003(\0132*.googlex.glass.GlassUserEventFrequencyStat\022\027\n\017total_kernel_ms\030\002 \001(\003\022*\n\"board_temperature_milli_centigrade", "\030\003 \001(\005\022#\n\033battery_state_of_charge_mah\030\004 \001(\005\022$\n\034battery_charge_when_full_mah\030\005 \001(\005\022,\n$battery_temperature_milli_centigrade\030\006 \001(\005\022\030\n\020total_bytes_sent\030\007 \001(\003\"®\001\n\023GlassUserEventProto\022\025\n\revent_time_ms\030\001 \001(\003\022\032\n\nevent_type\030\002 \001(\tB\006à²êRÊ\001\022\032\n\nevent_data\030\003 \001(\tB\006à²êRË\001\022H\n\021performance_stats\030\004 \001(\0132-.googlex.glass.GlassUserEventPerformanceStats\"ä\001\n\024GlassExtensionsProto\022\031\n\nsession_id\030\001 \001(\tB\005à²êR\n\022\037\n\020software_versi", "on\030\002 \001(\tB\005à²êR\007\0226\n\nuser_event\030\003 \003(\0132\".googlex.glass.GlassUserEventProto\022>\n\020hardware_version\030\004 \001(\0162$.googlex_glass_proto.HardwareVersion:\030ÂúñQ\023\n\021\n\005glass\022\bglasslogB#\n\031com.google.common.logging\020\002 \001(\002P\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        GlassExtensionsInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor[] arrayOfFileDescriptor = new Descriptors.FileDescriptor[2];
    arrayOfFileDescriptor[0] = HardwareVersionProtoInternalDescriptors.descriptor;
    arrayOfFileDescriptor[1] = LogsAnnotationsInternalDescriptors.descriptor;
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, arrayOfFileDescriptor, local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassExtensionsInternalDescriptors
 * JD-Core Version:    0.6.2
 */
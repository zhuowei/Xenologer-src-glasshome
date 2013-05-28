package com.google.googlex.glass.common.proto;

import com.google.common.logging.GlassExtensionsInternalDescriptors;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class LoggingInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nDjava/com/google/googlex/glass/common/clientserverproto/logging.proto\022\032googlex_glass_common_proto\032/logs/proto/googlex/glass/glass_extensions.proto\"\025\n\023GetSessionIdRequest\"*\n\024GetSessionIdResponse\022\022\n\nsession_id\030\001 \001(\t\"Û\001\n\026ReportUserEventRequest\022\022\n\006action\030\001 \001(\tB\002\030\001\022\020\n\004data\030\002 \001(\tB\002\030\001\022\022\n\nsession_id\030\003 \001(\t\022\025\n\ttimestamp\030\004 \001(\003B\002\030\001\022\030\n\020software_version\030\005 \001(\t\022\030\n\020hardware_version\030\006 \001(\t\022<\n\020user_event_proto\030\007 \001(\013", "" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        LoggingInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor[] arrayOfFileDescriptor = new Descriptors.FileDescriptor[1];
    arrayOfFileDescriptor[0] = GlassExtensionsInternalDescriptors.descriptor;
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, arrayOfFileDescriptor, local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.LoggingInternalDescriptors
 * JD-Core Version:    0.6.2
 */
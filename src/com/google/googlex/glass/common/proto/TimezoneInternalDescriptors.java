package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class TimezoneInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nEjava/com/google/googlex/glass/common/clientserverproto/timezone.proto\022\032googlex_glass_common_proto\"9\n\022GetTimeZoneRequest\022\020\n\blatitude\030\001 \001(\001\022\021\n\tlongitude\030\002 \001(\001\"D\n\023GetTimeZoneResponse\022\021\n\ttime_zone\030\001 \001(\t\022\032\n\022reverse_successful\030\002 \001(\bB+\n%com.google.googlex.glass.common.proto0\001P\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        TimezoneInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.TimezoneInternalDescriptors
 * JD-Core Version:    0.6.2
 */
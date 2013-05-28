package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class LocationRequestInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nMjava/com/google/googlex/glass/common/clientserverproto/location_request.proto\022\032googlex_glass_common_proto\032Ejava/com/google/googlex/glass/common/clientserverproto/timeline.proto\"b\n\025LocationUpdateRequest\0226\n\blocation\030\001 \001(\0132$.googlex_glass_common_proto.Location\022\021\n\tdevice_id\030\002 \001(\t\"\001\n\026LocationUpdateResponse\022V\n\rresponse_code\030\001 \002(\0162?.googlex_glass_common_proto.LocationUpdateResponse.ResponseCode\"\033\n\fRes", "" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        LocationRequestInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor[] arrayOfFileDescriptor = new Descriptors.FileDescriptor[1];
    arrayOfFileDescriptor[0] = TimelineInternalDescriptors.descriptor;
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, arrayOfFileDescriptor, local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.LocationRequestInternalDescriptors
 * JD-Core Version:    0.6.2
 */
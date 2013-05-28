package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class ResourceInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nEjava/com/google/googlex/glass/common/clientserverproto/resource.proto\022\032googlex_glass_common_proto\"Ñ\001\n\017ResourceRequest\022F\n\004type\030\001 \001(\01628.googlex_glass_common_proto.ResourceRequest.ResourceType\022\f\n\004name\030\002 \001(\t\022\023\n\013fingerprint\030\003 \001(\006\"S\n\fResourceType\022\016\n\nSTYLESHEET\020\001\022\030\n\024GLASSWARE_ICON_SMALL\020\002\022\031\n\025GLASSWARE_ICON_MEDIUM\020\003\"º\001\n\020ResourceResponse\022L\n\006status\030\001 \001(\01623.googlex_glass_common_proto.ResourceResponse.Statu", "" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        ResourceInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ResourceInternalDescriptors
 * JD-Core Version:    0.6.2
 */
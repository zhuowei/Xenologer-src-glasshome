package com.google.glass.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class MapRenderingServiceInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "", "\n\n\002id\030\001 \001(\t\0220\n\004type\030\002 \001(\0162\".glass_proto.MapRenderRequest.Type\022\013\n\003uri\030\f \001(\t\022\r\n\005width\030\003 \001(\005\022\016\n\006height\030\004 \001(\005\022#\n\006center\030\005 \001(\0132\023.glass_proto.LatLng\022\f\n\004zoom\030\006 \001(\002\022\020\n\blat_span\030\b \001(\001\022\020\n\blng_span\030\t \001(\001\022#\n\006marker\030\n \003(\0132\023.glass_proto.Marker\022'\n\bpolyline\030\013 \003(\0132\025.glass_proto.Polyline\"\"\n\004Type\022\016\n\nRENDER_MAP\020\001\022\n\n\006CANCEL\020\002\".\n\021MapRenderResponse\022\n\n\002id\030\001 \002(\t\022\r\n\005image\030\002 \001(\fB\032\n\026com.google.glass.protoP\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        MapRenderingServiceInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.MapRenderingServiceInternalDescriptors
 * JD-Core Version:    0.6.2
 */
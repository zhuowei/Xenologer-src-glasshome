package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class ImageDownloadInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nKjava/com/google/googlex/glass/common/clientserverproto/image_download.proto\022\032googlex_glass_common_proto\"Â\002\n\024ImageDownloadRequest\022\013\n\003url\030\001 \001(\t\022b\n\024requested_dimensions\030\002 \001(\0132D.googlex_glass_common_proto.ImageDownloadRequest.RequestedDimensions\022L\n\tcrop_type\030\003 \001(\01629.googlex_glass_common_proto.ImageDownloadRequest.CropType\032B\n\023RequestedDimensions\022\024\n\fwidth_pixels\030\001 \001(\005\022\025\n\rheight_pixels\030\002 \001(\005\"'\n\bCropTyp", "" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        ImageDownloadInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ImageDownloadInternalDescriptors
 * JD-Core Version:    0.6.2
 */
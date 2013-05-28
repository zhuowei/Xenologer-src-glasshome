package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class ImageDownload
{
  private static Descriptors.FileDescriptor descriptor = ImageDownloadInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_ImageDownloadRequest_RequestedDimensions_descriptor = (Descriptors.Descriptor)internal_static_googlex_glass_common_proto_ImageDownloadRequest_descriptor.getNestedTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_ImageDownloadRequest_RequestedDimensions_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_ImageDownloadRequest_RequestedDimensions_descriptor, new String[] { "WidthPixels", "HeightPixels" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_ImageDownloadRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_ImageDownloadRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_ImageDownloadRequest_descriptor, new String[] { "Url", "RequestedDimensions", "CropType" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_ImageDownloadResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_ImageDownloadResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_ImageDownloadResponse_descriptor, new String[] { "Image", "Status" });

  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }

  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ImageDownload
 * JD-Core Version:    0.6.2
 */
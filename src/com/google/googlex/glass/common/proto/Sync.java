package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class Sync
{
  private static Descriptors.FileDescriptor descriptor = SyncInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_AttachmentGetRequest_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_AttachmentGetResponse_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_AttachmentGetResponse_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_AttachmentInsertRequest_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_AttachmentInsertResponse_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_AttachmentInsertResponse_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_Delete_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_Delete_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_Select_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_Select_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_SyncRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_SyncRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_SyncRequest_descriptor, new String[] { "Select", "InsertReplaceOnConflict", "Update", "Delete", "DeviceId", "SupportsUserActions" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_SyncResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_SyncResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_SyncResponse_descriptor, new String[] { "ResponseCode", "SelectedItems", "InsertFailedItemIds", "UpdateFailedItemIds", "DeleteFailedItemIds", "SyncStartTime", "SyncEndTime", "SyncContinuationToken", "SelectStartTime", "SelectContinuationToken", "SelectMaxWriteTimestamp" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_Update_Mutations_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_Update_Mutations_fieldAccessorTable;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_Update_descriptor;
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_Update_fieldAccessorTable;

  static
  {
    internal_static_googlex_glass_common_proto_Select_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
    internal_static_googlex_glass_common_proto_Select_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_Select_descriptor, new String[] { "MaxItems", "ModifiedAfterTime", "ModifiedBeforeTime", "WriteAfterTime", "WriteBeforeTime", "StartTime", "ContinuationToken" });
    internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
    internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_descriptor, new String[] { "TimelineItem", "UserAction" });
    internal_static_googlex_glass_common_proto_Update_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(4);
    internal_static_googlex_glass_common_proto_Update_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_Update_descriptor, new String[] { "Mutations", "TimelineItemId", "UserAction" });
    internal_static_googlex_glass_common_proto_Update_Mutations_descriptor = (Descriptors.Descriptor)internal_static_googlex_glass_common_proto_Update_descriptor.getNestedTypes().get(0);
    internal_static_googlex_glass_common_proto_Update_Mutations_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_Update_Mutations_descriptor, new String[] { "Item", "ItemFieldDeletions", "AttachmentDeletions" });
    internal_static_googlex_glass_common_proto_Delete_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(5);
    internal_static_googlex_glass_common_proto_Delete_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_Delete_descriptor, new String[] { "TimelineItemId", "UserAction" });
    internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(6);
    internal_static_googlex_glass_common_proto_AttachmentGetRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor, new String[] { "AttachmentId", "ScreenDimensions" });
    internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_descriptor = (Descriptors.Descriptor)internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor.getNestedTypes().get(0);
    internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_descriptor, new String[] { "WidthPixels", "HeightPixels" });
    internal_static_googlex_glass_common_proto_AttachmentGetResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(7);
    internal_static_googlex_glass_common_proto_AttachmentGetResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_AttachmentGetResponse_descriptor, new String[] { "ResponseCode", "MimeType", "Content" });
    internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(8);
    internal_static_googlex_glass_common_proto_AttachmentInsertRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor, new String[] { "DeviceId", "MimeType", "Content", "Description", "Name", "CreationTime" });
    internal_static_googlex_glass_common_proto_AttachmentInsertResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(9);
    internal_static_googlex_glass_common_proto_AttachmentInsertResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_AttachmentInsertResponse_descriptor, new String[] { "ResponseCode", "AttachmentId" });
    Timeline.getDescriptor();
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
 * Qualified Name:     com.google.googlex.glass.common.proto.Sync
 * JD-Core Version:    0.6.2
 */
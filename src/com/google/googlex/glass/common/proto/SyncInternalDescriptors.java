package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class SyncInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nAjava/com/google/googlex/glass/common/clientserverproto/sync.proto\022\032googlex_glass_common_proto\032Ejava/com/google/googlex/glass/common/clientserverproto/timeline.proto\"´\002\n\013SyncRequest\0222\n\006select\030\001 \001(\0132\".googlex_glass_common_proto.Select\022W\n\032insert_replace_on_conflict\030\002 \003(\01323.googlex_glass_common_proto.InsertReplaceOnConflict\0222\n\006update\030\003 \003(\0132\".googlex_glass_common_proto.Update\0222\n\006delete\030\004 \003(\0132\".google", "x_glass_common_proto.Delete\022\021\n\tdevice_id\030\005 \002(\t\022\035\n\025supports_user_actions\030\t \001(\b\"Î\003\n\fSyncResponse\022L\n\rresponse_code\030\001 \002(\01625.googlex_glass_common_proto.SyncResponse.ResponseCode\022@\n\016selected_items\030\002 \003(\0132(.googlex_glass_common_proto.TimelineItem\022\036\n\026insert_failed_item_ids\030\003 \003(\t\022\036\n\026update_failed_item_ids\030\004 \003(\t\022\036\n\026delete_failed_item_ids\030\005 \003(\t\022\027\n\017sync_start_time\030\006 \001(\004\022\025\n\rsync_end_time\030\007 \001(\004\022\037\n\027sync_continuat", "", "ass_common_proto.TimelineItem\022;\n\013user_action\030\002 \003(\0132&.googlex_glass_common_proto.UserAction\"¡\002\n\006Update\022?\n\tmutations\030\001 \001(\0132,.googlex_glass_common_proto.Update.Mutations\022\030\n\020timeline_item_id\030\002 \001(\t\022;\n\013user_action\030\003 \003(\0132&.googlex_glass_common_proto.UserAction\032\n\tMutations\0226\n\004item\030\001 \002(\0132(.googlex_glass_common_proto.TimelineItem\022\034\n\024item_field_deletions\030\002 \003(\r\022\034\n\024attachment_deletions\030\003 \003(\t\"_\n\006Delete\022\030\n\020time", "line_item_id\030\001 \001(\t\022;\n\013user_action\030\002 \003(\0132&.googlex_glass_common_proto.UserAction\"Ì\001\n\024AttachmentGetRequest\022\025\n\rattachment_id\030\001 \001(\t\022\\\n\021screen_dimensions\030\002 \001(\0132A.googlex_glass_common_proto.AttachmentGetRequest.ScreenDimensions\032?\n\020ScreenDimensions\022\024\n\fwidth_pixels\030\001 \001(\005\022\025\n\rheight_pixels\030\002 \001(\005\"¹\001\n\025AttachmentGetResponse\022U\n\rresponse_code\030\001 \001(\0162>.googlex_glass_common_proto.AttachmentGetResponse.ResponseCode\022", "", "com.google.googlex.glass.common.protoP\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        SyncInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor[] arrayOfFileDescriptor = new Descriptors.FileDescriptor[1];
    arrayOfFileDescriptor[0] = TimelineInternalDescriptors.descriptor;
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, arrayOfFileDescriptor, local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SyncInternalDescriptors
 * JD-Core Version:    0.6.2
 */
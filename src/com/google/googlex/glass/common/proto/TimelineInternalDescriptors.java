package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class TimelineInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nEjava/com/google/googlex/glass/common/clientserverproto/timeline.proto\022\032googlex_glass_common_proto\"ë\f\n\fTimelineItem\022\n\n\002id\030\001 \001(\t\022\021\n\tbundle_id\030\031 \001(\t\022\036\n\017is_bundle_cover\030\035 \001(\b:\005false\022\025\n\rcreation_time\030\002 \001(\004\022\025\n\rmodified_time\030\003 \001(\004\022\024\n\fdisplay_time\030\021 \001(\004\022\020\n\bpin_time\030# \001(\004\022\021\n\tpin_score\030$ \001(\005\022\030\n\tis_pinned\030\025 \001(\b:\005false\022\031\n\nis_deleted\030\017 \001(\b:\005false\022\016\n\006source\030\004 \001(\t\022S\n\013source_type\030\016 \001(\01623.googlex_glass_common_pr", "oto.TimelineItem.SourceType:\tGLASSWARE\022\026\n\016source_item_id\030\036 \001(\t\022\025\n\rcanonical_url\030\037 \001(\t\0223\n\007creator\030\005 \001(\0132\".googlex_glass_common_proto.Entity\0228\n\fshare_target\030\006 \003(\0132\".googlex_glass_common_proto.Entity\022\023\n\013in_reply_to\030\007 \001(\t\022\r\n\005title\030\027 \001(\t\022\f\n\004text\030\b \001(\t\022\f\n\004html\030\030 \001(\t\022\021\n\thtml_page\030\032 \003(\t\022\026\n\016speakable_text\030\023 \001(\t\022:\n\nattachment\030\t \003(\0132&.googlex_glass_common_proto.Attachment\0226\n\blocation\030\n \001(\0132$.googlex_glass_co", "mmon_proto.Location\0227\n\tmenu_item\030\013 \003(\0132$.googlex_glass_common_proto.MenuItem\022@\n\016pending_action\030\022 \003(\0132$.googlex_glass_common_proto.MenuItemB\002\030\001\022D\n\fnotification\030\020 \001(\0132..googlex_glass_common_proto.NotificationConfig\022Z\n\021cloud_sync_status\030\f \001(\01623.googlex_glass_common_proto.TimelineItem.SyncStatus:\nNOT_SYNCED\022^\n\025companion_sync_status\030! \001(\01623.googlex_glass_common_proto.TimelineItem.SyncStatus:\nNOT_SYNCED", "", "", "url\030\003 \001(\t\022\025\n\rthumbnail_url\030\004 \001(\t\022\031\n\021client_cache_path\030\005 \001(\t\022\025\n\rcreation_time\030\006 \001(\004\022\035\n\025is_processing_content\030\007 \001(\b\"Ñ\003\n\006Entity\022\016\n\006source\030\001 \001(\t\022\n\n\002id\030\002 \001(\t\022\024\n\fdisplay_name\030\003 \001(\t\022\021\n\timage_url\030\f \003(\t\022\032\n\013should_sync\030\005 \001(\b:\005false\022A\n\004type\030\006 \001(\0162'.googlex_glass_common_proto.Entity.Type:\nINDIVIDUAL\022\024\n\fphone_number\030\007 \001(\t\022\036\n\026secondary_phone_number\030\r \003(\t\022\r\n\005email\030\b \001(\t\022\027\n\017secondary_email\030\017 \003(\t\022\023\n\013accept_type\030\t ", "", "", "\n\bicon_url\030\002 \001(\t\"\001\n\022NotificationConfig\022L\n\005level\030\001 \001(\01624.googlex_glass_common_proto.NotificationConfig.Level:\007DEFAULT\022\025\n\rdelivery_time\030\002 \001(\004\"\024\n\005Level\022\013\n\007DEFAULT\020\n\"Î\001\n\nUserAction\0229\n\004type\030\001 \001(\0162+.googlex_glass_common_proto.UserAction.Type\022\017\n\007payload\030\002 \001(\t\"t\n\004Type\022\017\n\013NEW_MESSAGE\020\001\022\t\n\005SHARE\020\002\022\t\n\005REPLY\020\003\022\r\n\tREPLY_ALL\020\004\022\n\n\006CUSTOM\020\005\022\n\n\006DELETE\020\006\022\n\n\006LAUNCH\020\007\022\007\n\003PIN\020\b\022\t\n\005UNPIN\020\tB)\n%com.google.googlex.glass.", "common.protoP\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        TimelineInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.TimelineInternalDescriptors
 * JD-Core Version:    0.6.2
 */
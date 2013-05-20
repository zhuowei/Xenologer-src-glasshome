.class public Lcom/google/googlex/glass/common/proto/TimelineInternalDescriptors;
.super Ljava/lang/Object;
.source "TimelineInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    const/16 v2, 0xa

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nEjava/com/google/googlex/glass/common/clientserverproto/timeline.proto\u0012\u001agooglex_glass_common_proto\"\u00eb\u000c\n\u000cTimelineItem\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0011\n\tbundle_id\u0018\u0019 \u0001(\t\u0012\u001e\n\u000fis_bundle_cover\u0018\u001d \u0001(\u0008:\u0005false\u0012\u0015\n\rcreation_time\u0018\u0002 \u0001(\u0004\u0012\u0015\n\rmodified_time\u0018\u0003 \u0001(\u0004\u0012\u0014\n\u000cdisplay_time\u0018\u0011 \u0001(\u0004\u0012\u0010\n\u0008pin_time\u0018# \u0001(\u0004\u0012\u0011\n\tpin_score\u0018$ \u0001(\u0005\u0012\u0018\n\tis_pinned\u0018\u0015 \u0001(\u0008:\u0005false\u0012\u0019\n\nis_deleted\u0018\u000f \u0001(\u0008:\u0005false\u0012\u000e\n\u0006source\u0018\u0004 \u0001(\t\u0012S\n\u000bsource_type\u0018\u000e \u0001(\u000e23.googlex_glass_common_pr"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "oto.TimelineItem.SourceType:\tGLASSWARE\u0012\u0016\n\u000esource_item_id\u0018\u001e \u0001(\t\u0012\u0015\n\rcanonical_url\u0018\u001f \u0001(\t\u00123\n\u0007creator\u0018\u0005 \u0001(\u000b2\".googlex_glass_common_proto.Entity\u00128\n\u000cshare_target\u0018\u0006 \u0003(\u000b2\".googlex_glass_common_proto.Entity\u0012\u0013\n\u000bin_reply_to\u0018\u0007 \u0001(\t\u0012\r\n\u0005title\u0018\u0017 \u0001(\t\u0012\u000c\n\u0004text\u0018\u0008 \u0001(\t\u0012\u000c\n\u0004html\u0018\u0018 \u0001(\t\u0012\u0011\n\thtml_page\u0018\u001a \u0003(\t\u0012\u0016\n\u000espeakable_text\u0018\u0013 \u0001(\t\u0012:\n\nattachment\u0018\t \u0003(\u000b2&.googlex_glass_common_proto.Attachment\u00126\n\u0008location\u0018\n \u0001(\u000b2$.googlex_glass_co"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "mmon_proto.Location\u00127\n\tmenu_item\u0018\u000b \u0003(\u000b2$.googlex_glass_common_proto.MenuItem\u0012@\n\u000epending_action\u0018\u0012 \u0003(\u000b2$.googlex_glass_common_proto.MenuItemB\u0002\u0018\u0001\u0012D\n\u000cnotification\u0018\u0010 \u0001(\u000b2..googlex_glass_common_proto.NotificationConfig\u0012Z\n\u0011cloud_sync_status\u0018\u000c \u0001(\u000e23.googlex_glass_common_proto.TimelineItem.SyncStatus:\nNOT_SYNCED\u0012^\n\u0015companion_sync_status\u0018! \u0001(\u000e23.googlex_glass_common_proto.TimelineItem.SyncStatus:\nNOT_SYNCED"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u0012Z\n\u0013cloud_sync_protocol\u0018\r \u0001(\u000e25.googlex_glass_common_proto.TimelineItem.SyncProtocol:\u0006ALWAYS\u0012]\n\u0017companion_sync_protocol\u0018\" \u0001(\u000e25.googlex_glass_common_proto.TimelineItem.SyncProtocol:\u0005NEVER\u0012N\n\u0008sms_type\u0018\u0014 \u0001(\u000e20.googlex_glass_common_proto.TimelineItem.SmsType:\u0006NATIVEB\u0002\u0018\u0001\u0012\u001d\n\u0011send_to_phone_url\u0018\u001c \u0001(\tB\u0002\u0018\u0001\"@\n\nSourceType\u0012\r\n\tGLASSWARE\u0010\u0000\u0012\u0010\n\u000cGLASS_DEVICE\u0010\u0001\u0012\u0011\n\rCOMPANIONWARE\u0010\u0002\"9\n\nSyncStatus\u0012\u000e\n\nNOT_SYNCED\u0010\u0000\u0012\n\n\u0006SY"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "NCED\u0010\u0001\u0012\u000f\n\u000bSYNC_FAILED\u0010\u0002\"8\n\u000cSyncProtocol\u0012\n\n\u0006ALWAYS\u0010\u0000\u0012\u0011\n\rOPPORTUNISTIC\u0010\u0001\u0012\t\n\u0005NEVER\u0010\u0002\">\n\u0007SmsType\u0012\n\n\u0006NATIVE\u0010\u0000\u0012\u0010\n\u000cGOOGLE_VOICE\u0010\u0001\u0012\u0015\n\u0011COMPANION_DECIDES\u0010\u0002\"\u00bf\u0001\n\u0008Location\u0012\n\n\u0002id\u0018\u0007 \u0001(\t\u0012\u000e\n\u0006source\u0018\n \u0001(\t\u0012\u0011\n\ttimestamp\u0018\u0005 \u0001(\u0004\u0012\u0010\n\u0008latitude\u0018\u0001 \u0001(\u0001\u0012\u0011\n\tlongitude\u0018\u0002 \u0001(\u0001\u0012\u0010\n\u0008accuracy\u0018\u0006 \u0001(\u0001\u0012\u0010\n\u0008level_id\u0018\u0008 \u0001(\t\u0012\u0014\n\u000clevel_number\u0018\t \u0001(\u0002\u0012\u0014\n\u000cdisplay_name\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007address\u0018\u0004 \u0001(\t\"\u00ab\u0001\n\nAttachment\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0014\n\u000ccontent_type\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bcontent_"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "url\u0018\u0003 \u0001(\t\u0012\u0015\n\rthumbnail_url\u0018\u0004 \u0001(\t\u0012\u0019\n\u0011client_cache_path\u0018\u0005 \u0001(\t\u0012\u0015\n\rcreation_time\u0018\u0006 \u0001(\u0004\u0012\u001d\n\u0015is_processing_content\u0018\u0007 \u0001(\u0008\"\u00d1\u0003\n\u0006Entity\u0012\u000e\n\u0006source\u0018\u0001 \u0001(\t\u0012\n\n\u0002id\u0018\u0002 \u0001(\t\u0012\u0014\n\u000cdisplay_name\u0018\u0003 \u0001(\t\u0012\u0011\n\timage_url\u0018\u000c \u0003(\t\u0012\u001a\n\u000bshould_sync\u0018\u0005 \u0001(\u0008:\u0005false\u0012A\n\u0004type\u0018\u0006 \u0001(\u000e2\'.googlex_glass_common_proto.Entity.Type:\nINDIVIDUAL\u0012\u0014\n\u000cphone_number\u0018\u0007 \u0001(\t\u0012\u001e\n\u0016secondary_phone_number\u0018\r \u0003(\t\u0012\r\n\u0005email\u0018\u0008 \u0001(\t\u0012\u0017\n\u000fsecondary_email\u0018\u000f \u0003(\t\u0012\u0013\n\u000baccept_type\u0018\t "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0003(\t\u0012&\n\u0017is_communication_target\u0018\n \u0001(\u0008:\u0005false\u0012=\n\u0008priority\u0018\u000e \u0001(\u000b2+.googlex_glass_common_proto.Entity.Priority\u001a&\n\u0008Priority\u0012\u001a\n\u0012glassware_affinity\u0018\u0001 \u0001(\r\"!\n\u0004Type\u0012\t\n\u0005GROUP\u0010\u0000\u0012\u000e\n\nINDIVIDUAL\u0010\u0001\"\u00ff\u0003\n\u0008MenuItem\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012C\n\u0006action\u0018\u0002 \u0001(\u000e2+.googlex_glass_common_proto.MenuItem.Action:\u0006CUSTOM\u00124\n\u0005value\u0018\u0003 \u0003(\u000b2%.googlex_glass_common_proto.MenuValue\u0012\u0018\n\u0010broadcast_action\u0018\u0005 \u0001(\t\u0012\u001c\n\u0014remove_when_selected\u0018\u0007 \u0001(\u0008\"\u0081\u0002\n\u0006Action\u0012\n\n\u0006"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "CUSTOM\u0010\u0000\u0012\t\n\u0005REPLY\u0010\u0002\u0012\n\n\u0006DELETE\u0010\u0003\u0012\t\n\u0005SHARE\u0010\u0004\u0012\u000e\n\nREAD_ALOUD\u0010\u0005\u0012\r\n\tREPLY_ALL\u0010\u0006\u0012\r\n\tBROADCAST\u0010\u0007\u0012\u000e\n\nVOICE_CALL\u0010\u0008\u0012\u000c\n\u0008NAVIGATE\u0010\t\u0012\n\n\u0006SEARCH\u0010\n\u0012\u000c\n\u0008MUTE_MIC\u0010\u000b\u0012\u0011\n\rSEND_TO_PHONE\u0010\u000c\u0012\u0011\n\rVIEW_WEB_SITE\u0010\r\u0012\u000b\n\u0007HANGOUT\u0010\u000e\u0012\u0011\n\rTOGGLE_PINNED\u0010\u000f\u0012\r\n\tREAD_MORE\u0010\u0010\u0012\u000e\n\nPLAY_VIDEO\u0010\u0011\"0\n\u0005State\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\u000b\n\u0007PENDING\u0010\u0001\u0012\r\n\tCONFIRMED\u0010\u0002\"w\n\tMenuValue\u0012B\n\u0005state\u0018\u0003 \u0001(\u000e2*.googlex_glass_common_proto.MenuItem.State:\u0007DEFAULT\u0012\u0014\n\u000cdisplay_name\u0018\u0001 \u0001(\t\u0012\u0010"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\n\u0008icon_url\u0018\u0002 \u0001(\t\"\u008f\u0001\n\u0012NotificationConfig\u0012L\n\u0005level\u0018\u0001 \u0001(\u000e24.googlex_glass_common_proto.NotificationConfig.Level:\u0007DEFAULT\u0012\u0015\n\rdelivery_time\u0018\u0002 \u0001(\u0004\"\u0014\n\u0005Level\u0012\u000b\n\u0007DEFAULT\u0010\n\"\u00ce\u0001\n\nUserAction\u00129\n\u0004type\u0018\u0001 \u0001(\u000e2+.googlex_glass_common_proto.UserAction.Type\u0012\u000f\n\u0007payload\u0018\u0002 \u0001(\t\"t\n\u0004Type\u0012\u000f\n\u000bNEW_MESSAGE\u0010\u0001\u0012\t\n\u0005SHARE\u0010\u0002\u0012\t\n\u0005REPLY\u0010\u0003\u0012\r\n\tREPLY_ALL\u0010\u0004\u0012\n\n\u0006CUSTOM\u0010\u0005\u0012\n\n\u0006DELETE\u0010\u0006\u0012\n\n\u0006LAUNCH\u0010\u0007\u0012\u0007\n\u0003PIN\u0010\u0008\u0012\t\n\u0005UNPIN\u0010\tB)\n%com.google.googlex.glass."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "common.protoP\u0001"

    aput-object v3, v1, v2

    .line 103
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineInternalDescriptors$1;-><init>()V

    .line 111
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/google/protos/logs_proto/LogsAnnotationsInternalDescriptors;
.super Ljava/lang/Object;
.source "LogsAnnotationsInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n2logs/proto/logs_annotations/logs_annotations.proto\u0012\nlogs_proto\u001a!net/proto2/proto/descriptor.proto\";\n\u000cFieldDetails\u0012+\n\u0007id_type\u0018\u0001 \u0003(\u000e2\u001a.logs_proto.IdentifierType\"w\n\u000eMessageDetails\u00126\n\rmay_appear_in\u0018\u0001 \u0003(\u000b2\u001f.logs_proto.MessageDetails.Type\u001a-\n\u0004Type\u0012\u0013\n\u000bsource_type\u0018\u0001 \u0002(\t\u0012\u0010\n\u0008log_type\u0018\u0002 \u0002(\t*\u00cf\t\n\u000eIdentifierType\u0012\u000f\n\u000bLOGSID_NONE\u0010\u0000\u0012\u0015\n\u0011LOGSID_IP_ADDRESS\u0010\u0001\u0012\u001e\n\u001aLOGSID_IP_ADDRESS_INTERNAL\u0010\u0002\u0012\u0015\n\u0011LOGSID_USER_AGENT\u0010\u0003\u0012\u001e\n\u001aL"

    aput-object v2, v1, v4

    const-string v2, "OGSID_SENSITIVE_TIMESTAMP\u0010\u0004\u0012\u001d\n\u0019LOGSID_SENSITIVE_LOCATION\u0010\u0005\u0012\u001f\n\u001bLOGSID_APPROXIMATE_LOCATION\u0010\u000f\u0012\u001a\n\u0016LOGSID_COARSE_LOCATION\u0010\u0006\u0012\u0019\n\u0015LOGSID_OTHER_LOCATION\u0010\t\u0012\u001b\n\u0017LOGSID_OTHER_VERSION_ID\u0010\u0007\u0012\u0012\n\u000eLOGSID_REFERER\u0010\u0008\u0012!\n\u001dLOGSID_THIRD_PARTY_PARAMETERS\u0010\u0010\u0012 \n\u001cLOGSID_OTHER_PSEUDONYMOUS_ID\u0010\n\u0012\u000f\n\u000bLOGSID_PREF\u0010\u000b\u0012\u0013\n\u000fLOGSID_ZWIEBACK\u0010\u000c\u0012\u0013\n\u000fLOGSID_BISCOTTI\u0010\r\u0012\u001c\n\u0018LOGSID_CUSTOM_SESSION_ID\u0010\u000e\u0012\u001c\n\u0018LOGSID_OTHER_PERSONAL_ID\u0010\u0014\u0012\u0012\n\u000eLOGSID_GAIA_I"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "D\u0010\u0015\u0012\u0010\n\u000cLOGSID_EMAIL\u0010\u0016\u0012\u0013\n\u000fLOGSID_USERNAME\u0010\u0017\u0012\u0017\n\u0013LOGSID_PHONE_NUMBER\u0010\u0018\u0012\u001a\n\u0015LOGSID_GAIA_ID_PUBLIC\u0010\u00cf\u0001\u0012!\n\u001dLOGSID_OTHER_AUTHENTICATED_ID\u0010\u001e\u0012#\n\u001fLOGSID_OTHER_UNAUTHENTICATED_ID\u0010\u001f\u0012!\n\u001dLOGSID_PARTNER_OR_CUSTOMER_ID\u0010 \u0012\u0017\n\u0013LOGSID_PUBLISHER_ID\u0010#\u0012\u0014\n\u0010LOGSID_DASHER_ID\u0010!\u0012\u0019\n\u0015LOGSID_FOCUS_GROUP_ID\u0010\"\u0012!\n\u001dLOGSID_OTHER_MOBILE_DEVICE_ID\u00102\u0012\u001f\n\u001bLOGSID_GSERVICES_ANDROID_ID\u00103\u0012\u0016\n\u0012LOGSID_HARDWARE_ID\u00104\u0012\u0014\n\u0010LOGSID_MSISDN_ID\u00105\u0012\u001a\n\u0016LOGSID"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "_BUILD_SERIAL_ID\u00106\u0012\u0012\n\u000eLOGSID_UDID_ID\u00107\u0012\u001d\n\u0019LOGSID_ANDROID_LOGGING_ID\u00108\u0012%\n!LOGSID_SECURE_SETTINGS_ANDROID_ID\u00109\u0012&\n\"LOGSID_OTHER_IDENTIFYING_USER_INFO\u0010d\u0012\u0016\n\u0011LOGSID_USER_INPUT\u0010\u00c8\u0001\u0012\u001c\n\u0017LOGSID_DEMOGRAPHIC_INFO\u0010\u00c9\u0001\u0012\u0017\n\u0012LOGSID_GENERIC_KEY\u0010\u00ca\u0001\u0012\u0019\n\u0014LOGSID_GENERIC_VALUE\u0010\u00cb\u0001\u0012\u0012\n\rLOGSID_COOKIE\u0010\u00cc\u0001\u0012\u000f\n\nLOGSID_URL\u0010\u00cd\u0001\u0012\u0016\n\u0011LOGSID_HTTPHEADER\u0010\u00ce\u0001*8\n\nFormatType\u0012\u0013\n\u000fLOGSFORMAT_NONE\u0010\u0000\u0012\u0015\n\u0011LOGSFORMAT_COOKIE\u0010\u0001:Q\n\u0007id_type\u0012\u0014.proto2.FieldO"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ptions\u0018\u00ac\u00a6\u00ad\n \u0001(\u000e2\u001a.logs_proto.IdentifierType:\u000bLOGSID_NONE:6\n\u000etemp_logs_only\u0012\u0014.proto2.FieldOptions\u0018\u00b5\u00e5\u00a7\n \u0001(\u0008:\u0005false:6\n\u000eis_private_log\u0012\u0014.proto2.FieldOptions\u0018\u00ae\u00ee\u0097\u000b \u0001(\u0008:\u0005false:=\n\u0015not_logged_in_sawmill\u0012\u0014.proto2.FieldOptions\u0018\u00a0\u0091\u00a6\n \u0001(\u0008:\u0005false:H\n\rfield_details\u0012\u0014.proto2.FieldOptions\u0018\u00a8\u009f\u009e\n \u0001(\u000b2\u0018.logs_proto.FieldDetails:4\n\u000cis_encrypted\u0012\u0014.proto2.FieldOptions\u0018\u00b2\u00e1\u00da\u000c \u0001(\u0008:\u0005false:V\n\u000cfield_format\u0012\u0014.proto2.FieldOptions\u0018\u00be\u00e1"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u00d3\r \u0001(\u000e2\u0016.logs_proto.FormatType:\u000fLOGSFORMAT_NONE:W\n\u000bmsg_id_type\u0012\u0016.proto2.MessageOptions\u0018\u00ac\u00a6\u00ad\n \u0001(\u000e2\u001a.logs_proto.IdentifierType:\u000bLOGSID_NONE:<\n\u0012msg_temp_logs_only\u0012\u0016.proto2.MessageOptions\u0018\u00b5\u00e5\u00a7\n \u0001(\u0008:\u0005false:C\n\u0019msg_not_logged_in_sawmill\u0012\u0016.proto2.MessageOptions\u0018\u00a0\u0091\u00a6\n \u0001(\u0008:\u0005false:J\n\u000bmsg_details\u0012\u0016.proto2.MessageOptions\u0018\u00a8\u009f\u009e\n \u0001(\u000b2\u001a.logs_proto.MessageDetails:<\n\u0019field_encryption_key_name\u0012\u0016.proto2.MessageOptions\u0018\u00b2\u00e1\u00da"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u000c \u0001(\t:M\n&file_not_used_for_logging_except_enums\u0012\u0013.proto2.FileOptions\u0018\u00a0\u0091\u00a6\n \u0001(\u0008:\u0005false:G\n file_vetted_for_logs_annotations\u0012\u0013.proto2.FileOptions\u0018\u00d3\u00d1\u00e9\r \u0001(\u0008:\u0005falseB\u0006\u0010\u0002 \u0002(\u0002"

    aput-object v3, v1, v2

    .line 77
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotationsInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotationsInternalDescriptors$1;-><init>()V

    .line 85
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    sget-object v3, Lcom/google/protobuf/DescriptorProtosInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    aput-object v3, v2, v4

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

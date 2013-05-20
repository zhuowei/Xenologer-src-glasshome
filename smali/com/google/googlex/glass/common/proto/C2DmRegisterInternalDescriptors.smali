.class public Lcom/google/googlex/glass/common/proto/C2DmRegisterInternalDescriptors;
.super Ljava/lang/Object;
.source "C2DmRegisterInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nJjava/com/google/googlex/glass/common/clientserverproto/c2dm_register.proto\u0012\u001agooglex_glass_common_proto\"\u00dc\u0002\n\u0017C2DMRegistrationRequest\u0012T\n\u0006action\u0018\u0001 \u0001(\u000e2:.googlex_glass_common_proto.C2DMRegistrationRequest.Action:\u0008REGISTER\u0012\u0017\n\u000fregistration_id\u0018\u0002 \u0001(\t\u0012\u0011\n\tdevice_id\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006locale\u0018\u0004 \u0001(\t\u0012\u0015\n\rmajor_version\u0018\u0005 \u0001(\t\u0012\u000f\n\u0007version\u0018\u0006 \u0001(\u0003\u0012\u0019\n\u0011device_os_version\u0018\u0007 \u0001(\t\u0012\u0017\n\u000fdevice_hardware\u0018\u0008 \u0001(\t\u0012\u0015\n\rgsf_device_id\u0018\t \u0001(\u0003\"<\n\u0006Act"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "ion\u0012\u000c\n\u0008REGISTER\u0010\u0000\u0012\u000e\n\nUNREGISTER\u0010\u0001\u0012\u0014\n\u0010CHECK_REGISTERED\u0010\u0002\"\u00f5\u0001\n\u0018C2DMRegistrationResponse\u0012a\n\rresponse_code\u0018\u0001 \u0001(\u000e2A.googlex_glass_common_proto.C2DMRegistrationResponse.ResponseCode:\u0007SUCCESS\"v\n\u000cResponseCode\u0012\u000b\n\u0007SUCCESS\u0010\u0000\u0012!\n\u001dERROR_MISSING_REGISTRATION_ID\u0010\u0001\u0012\u001c\n\u0018ERROR_UNSUPPORTED_ACTION\u0010\u0002\u0012\u0018\n\u0014ERROR_NOT_REGISTERED\u0010\u0003\"L\n\u0010C2DMRegistration\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0019\n\u0011registration_time\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tdevice_id\u0018\u0003 \u0001(\tB)\n%com.google.goog"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "lex.glass.common.protoP\u0001"

    aput-object v3, v1, v2

    .line 33
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DmRegisterInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DmRegisterInternalDescriptors$1;-><init>()V

    .line 41
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

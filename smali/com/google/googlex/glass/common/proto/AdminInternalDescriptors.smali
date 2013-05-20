.class public Lcom/google/googlex/glass/common/proto/AdminInternalDescriptors;
.super Ljava/lang/Object;
.source "AdminInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nBjava/com/google/googlex/glass/common/clientserverproto/admin.proto\u0012\u001agooglex_glass_common_proto\",\n\u0017WipeConfirmationRequest\u0012\u0011\n\tdevice_id\u0018\u0001 \u0001(\t\"\u00af\u0001\n\u0018WipeConfirmationResponse\u0012K\n\u0006status\u0018\u0001 \u0001(\u000e2;.googlex_glass_common_proto.WipeConfirmationResponse.Status\u0012$\n\u0015wipe_external_storage\u0018\u0002 \u0001(\u0008:\u0005false\" \n\u0006Status\u0012\u000b\n\u0007PROCEED\u0010\u0000\u0012\t\n\u0005ABORT\u0010\u0001\"Y\n\u000bPendingWipe\u0012\u0011\n\ttimestamp\u0018\u0001 \u0001(\u0004\u0012\u0011\n\tdevice_id\u0018\u0002 \u0001(\t\u0012$\n\u0015wipe_external_storage\u0018\u0003"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, " \u0001(\u0008:\u0005falseB)\n%com.google.googlex.glass.common.protoP\u0001"

    aput-object v3, v1, v2

    .line 24
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/AdminInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AdminInternalDescriptors$1;-><init>()V

    .line 32
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

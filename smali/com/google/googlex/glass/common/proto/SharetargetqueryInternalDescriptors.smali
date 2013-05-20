.class public Lcom/google/googlex/glass/common/proto/SharetargetqueryInternalDescriptors;
.super Ljava/lang/Object;
.source "SharetargetqueryInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nMjava/com/google/googlex/glass/common/clientserverproto/sharetargetquery.proto\u0012\u001agooglex_glass_common_proto\u001aEjava/com/google/googlex/glass/common/clientserverproto/timeline.proto\"\u0014\n\u0012ShareTargetRequest\"\u00bc\u0001\n\u0013ShareTargetResponse\u0012S\n\rresponse_code\u0018\u0001 \u0001(\u000e2<.googlex_glass_common_proto.ShareTargetResponse.ResponseCode\u00123\n\u0007targets\u0018\u0002 \u0003(\u000b2\".googlex_glass_common_proto.Entity\"\u001b\n\u000cResponseCode\u0012\u000b\n\u0007SUCCESS\u0010\u0000B)\n%com.g"

    aput-object v2, v1, v4

    const-string v2, "oogle.googlex.glass.common.protoP\u0001"

    aput-object v2, v1, v3

    .line 23
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/SharetargetqueryInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SharetargetqueryInternalDescriptors$1;-><init>()V

    .line 31
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    aput-object v3, v2, v4

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

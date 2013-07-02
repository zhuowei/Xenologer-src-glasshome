.class public Lcom/google/googlex/glass/common/proto/EntitySyncInternalDescriptors;
.super Ljava/lang/Object;
.source "EntitySyncInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nHjava/com/google/googlex/glass/common/clientserverproto/entity_sync.proto\u0012\u001agooglex_glass_common_proto\u001aEjava/com/google/googlex/glass/common/clientserverproto/timeline.proto\"m\n\u0011EntitySyncRequest\u0012\u0011\n\tdevice_id\u0018\u0005 \u0001(\t\u0012 \n\u0011all_share_targets\u0018\u0006 \u0001(\u0008:\u0005false\u0012#\n\u0014enabled_targets_only\u0018\u0007 \u0001(\u0008:\u0005false\"J\n\u0012EntitySyncResponse\u00124\n\u0008entities\u0018\u0001 \u0003(\u000b2\".googlex_glass_common_proto.EntityB)\n%com.google.googlex.glass.common.prot"

    aput-object v2, v1, v6

    const-string v2, "oP\u0001"

    aput-object v2, v1, v5

    .line 23
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncInternalDescriptors$1;-><init>()V

    .line 31
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    const-class v2, Lcom/google/googlex/glass/common/proto/EntitySyncInternalDescriptors;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "com.google.googlex.glass.common.proto.TimelineInternalDescriptors"

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "java/com/google/googlex/glass/common/clientserverproto/timeline.proto"

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

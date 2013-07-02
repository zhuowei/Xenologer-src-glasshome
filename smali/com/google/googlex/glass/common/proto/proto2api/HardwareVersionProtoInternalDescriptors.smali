.class public Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProtoInternalDescriptors;
.super Ljava/lang/Object;
.source "HardwareVersionProtoInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 10
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\n*googlex/glass/proto/hardware_version.proto\u0012\u0013googlex_glass_proto\u001a2logs/proto/logs_annotations/logs_annotations.proto*V\n\u000fHardwareVersion\u0012\u000f\n\u000bUNVERSIONED\u0010\u0007\u0012\u000b\n\u0007V1_EVT1\u0010\u0001\u0012\u000b\n\u0007V1_EVT2\u0010\u0002\u0012\u000b\n\u0007V1_EVT3\u0010\u0003\u0012\u000b\n\u0007V1_DVT1\u0010\u0004BN\n%com.google.googlex.glass.common.proto\u0010\u0002 \u0001(\u00010\u00008\u0001B\u0014HardwareVersionProtoP\u0001\u0080\u008a\u00b1R\u0001"

    aput-object v2, v1, v6

    .line 20
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProtoInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProtoInternalDescriptors$1;-><init>()V

    .line 28
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    const-class v2, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProtoInternalDescriptors;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "com.google.protos.logs_proto.LogsAnnotationsInternalDescriptors"

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "logs/proto/logs_annotations/logs_annotations.proto"

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

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

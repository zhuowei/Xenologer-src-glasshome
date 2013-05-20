.class public Lcom/google/googlex/glass/common/proto/ResourceInternalDescriptors;
.super Ljava/lang/Object;
.source "ResourceInternalDescriptors.java"


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

    const-string v2, "\nEjava/com/google/googlex/glass/common/clientserverproto/resource.proto\u0012\u001agooglex_glass_common_proto\"\u00d1\u0001\n\u000fResourceRequest\u0012F\n\u0004type\u0018\u0001 \u0001(\u000e28.googlex_glass_common_proto.ResourceRequest.ResourceType\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bfingerprint\u0018\u0003 \u0001(\u0006\"S\n\u000cResourceType\u0012\u000e\n\nSTYLESHEET\u0010\u0001\u0012\u0018\n\u0014GLASSWARE_ICON_SMALL\u0010\u0002\u0012\u0019\n\u0015GLASSWARE_ICON_MEDIUM\u0010\u0003\"\u00ba\u0001\n\u0010ResourceResponse\u0012L\n\u0006status\u0018\u0001 \u0001(\u000e23.googlex_glass_common_proto.ResourceResponse.Statu"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "s:\u0007SUCCESS\u0012\u000c\n\u0004data\u0018\u0002 \u0001(\u000c\u0012\u0013\n\u000bfingerprint\u0018\u0003 \u0001(\u0006\"5\n\u0006Status\u0012\u000b\n\u0007SUCCESS\u0010\u0000\u0012\u000f\n\u000bBAD_REQUEST\u0010\u0001\u0012\r\n\tNOT_FOUND\u0010\u0002B+\n%com.google.googlex.glass.common.proto0\u0001P\u0001"

    aput-object v3, v1, v2

    .line 26
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceInternalDescriptors$1;-><init>()V

    .line 34
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/google/googlex/glass/common/proto/GlasswareInternalDescriptors;
.super Ljava/lang/Object;
.source "GlasswareInternalDescriptors.java"


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

    const-string v2, "\nFjava/com/google/googlex/glass/common/clientserverproto/glassware.proto\u0012\u001agooglex_glass_common_proto\"\u00c2\u0002\n\u0016GlasswareMetadataEntry\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012M\n\u0008messages\u0018\u0002 \u0001(\u000b2;.googlex_glass_common_proto.GlasswareMetadataEntry.Messages\u0012F\n\u000capk_metadata\u0018\u0003 \u0001(\u000b20.googlex_glass_common_proto.ApkGlasswareMetadata\u0012L\n\u000fmirror_metadata\u0018\u0004 \u0001(\u000b23.googlex_glass_common_proto.MirrorGlasswareMetadata\u001a7\n\u0008Messages\u0012\u0015\n\rlanguage_code\u0018\u0001 "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\u0001(\t\u0012\u0014\n\u000cdisplay_name\u0018\u0002 \u0001(\t\"\u00ab\u0001\n\u0014ApkGlasswareMetadata\u0012\u0014\n\u000cpackage_name\u0018\u0001 \u0001(\t\u0012I\n\u0007version\u0018\u0002 \u0003(\u000b28.googlex_glass_common_proto.ApkGlasswareMetadata.Version\u001a2\n\u0007Version\u0012\r\n\u0005label\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010upload_timestamp\u0018\u0002 \u0001(\u0003\"-\n\u0017MirrorGlasswareMetadata\u0012\u0012\n\nproject_id\u0018\u0001 \u0001(\tB)\n%com.google.googlex.glass.common.protoP\u0001"

    aput-object v3, v1, v2

    .line 30
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareInternalDescriptors$1;-><init>()V

    .line 38
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareInternalDescriptors;

    new-array v3, v4, [Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

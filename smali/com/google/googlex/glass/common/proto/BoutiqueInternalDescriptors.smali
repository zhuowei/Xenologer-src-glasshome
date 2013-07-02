.class public Lcom/google/googlex/glass/common/proto/BoutiqueInternalDescriptors;
.super Ljava/lang/Object;
.source "BoutiqueInternalDescriptors.java"


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

    const-string v2, "\nEjava/com/google/googlex/glass/common/clientserverproto/boutique.proto\u0012\u001agooglex_glass_common_proto\"\u00cc\u0001\n\u0012InstalledGlassware\u0012\u0014\n\u000cglassware_id\u0018\u0001 \u0001(\u0003\u0012P\n\u000capk_metadata\u0018\u0002 \u0001(\u000b2:.googlex_glass_common_proto.InstalledGlassware.ApkMetadata\u0012\u0012\n\nis_enabled\u0018\u0003 \u0001(\u0008\u001a:\n\u000bApkMetadata\u0012\u0015\n\rversion_label\u0018\u0001 \u0001(\t\u0012\u0014\n\u000cpackage_name\u0018\u0002 \u0001(\t\"\u0016\n\u0014GlasswareSyncRequest\"d\n\u0015GlasswareSyncResponse\u0012K\n\u0013installed_glassware\u0018\u0001 \u0003(\u000b2..googlex_glass"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "_common_proto.InstalledGlasswareB)\n%com.google.googlex.glass.common.protoP\u0001"

    aput-object v3, v1, v2

    .line 24
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueInternalDescriptors$1;-><init>()V

    .line 32
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    const-class v2, Lcom/google/googlex/glass/common/proto/BoutiqueInternalDescriptors;

    new-array v3, v4, [Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

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

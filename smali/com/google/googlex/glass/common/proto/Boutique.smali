.class public final Lcom/google/googlex/glass/common/proto/Boutique;
.super Ljava/lang/Object;
.source "Boutique.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static internal_static_googlex_glass_common_proto_GlasswareSyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_common_proto_GlasswareSyncRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_googlex_glass_common_proto_GlasswareSyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_common_proto_GlasswareSyncResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_googlex_glass_common_proto_InstalledGlassware_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_common_proto_InstalledGlassware_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    sget-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Boutique;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "GlasswareId"

    aput-object v3, v2, v4

    const-string v3, "ApkMetadata"

    aput-object v3, v2, v5

    const-string v3, "IsEnabled"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 46
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 48
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VersionLabel"

    aput-object v3, v2, v4

    const-string v3, "PackageName"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 52
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Boutique;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_GlasswareSyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 54
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_GlasswareSyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_GlasswareSyncRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 58
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Boutique;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_GlasswareSyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 60
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_GlasswareSyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "InstalledGlassware"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_GlasswareSyncResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 10
    return-void
.end method

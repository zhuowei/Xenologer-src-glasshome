.class public final Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;
.super Ljava/lang/Object;
.source "GlasswareRegistryOuterClass.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static internal_static_googlex_glass_common_proto_GlasswareMessages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_common_proto_GlasswareMessages_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_googlex_glass_common_proto_GlasswareRegistry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_common_proto_GlasswareRegistry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClassInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 37
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ProjectId"

    aput-object v3, v2, v5

    const-string v3, "IconGlass30Url"

    aput-object v3, v2, v6

    const-string v3, "IconGlass50Url"

    aput-object v3, v2, v7

    const-string v3, "IconGlass160Url"

    aput-object v3, v2, v8

    const-string v3, "IconWeb40Url"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "IconWeb85Url"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Messages"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "AuthUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SettingsUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "MoreInfoUrl"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "InternalGlassware"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "NameTextColor"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Visibility"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 41
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 43
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Locale"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "Description"

    aput-object v3, v2, v7

    const-string v3, "ShortDescription"

    aput-object v3, v2, v8

    const-string v3, "MoreInfoTitle"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Permissions"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "SpeakableName"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 47
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 49
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RegistryEntries"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 53
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
    .line 29
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 10
    return-void
.end method

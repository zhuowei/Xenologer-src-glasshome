.class public final Lcom/google/glass/proto/MapRenderingService;
.super Ljava/lang/Object;
.source "MapRenderingService.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static internal_static_glass_proto_LatLng_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_glass_proto_LatLng_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_glass_proto_MapRenderRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_glass_proto_MapRenderRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_glass_proto_MapRenderResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_glass_proto_MapRenderResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_glass_proto_Marker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_glass_proto_Marker_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_glass_proto_Polyline_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_glass_proto_Polyline_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lcom/google/glass/proto/MapRenderingService;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_LatLng_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 47
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_LatLng_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Lat"

    aput-object v3, v2, v5

    const-string v3, "Lng"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_LatLng_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 51
    invoke-static {}, Lcom/google/glass/proto/MapRenderingService;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Marker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 53
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Marker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "Location"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Marker_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 57
    invoke-static {}, Lcom/google/glass/proto/MapRenderingService;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Polyline_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 59
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Polyline_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "Vertex"

    aput-object v3, v2, v5

    const-string v3, "Width"

    aput-object v3, v2, v6

    const-string v3, "ColorArgb"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Polyline_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 63
    invoke-static {}, Lcom/google/glass/proto/MapRenderingService;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 65
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Type"

    aput-object v3, v2, v6

    const-string v3, "Uri"

    aput-object v3, v2, v7

    const-string v3, "Width"

    aput-object v3, v2, v4

    const-string v3, "Height"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "Center"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Zoom"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "LatSpan"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "LngSpan"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Marker"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Polyline"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 69
    invoke-static {}, Lcom/google/glass/proto/MapRenderingService;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 71
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Image"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 75
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
    .line 39
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 10
    return-void
.end method

.class public final Lcom/google/common/logging/GlassExtensions;
.super Ljava/lang/Object;
.source "GlassExtensions.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static internal_static_googlex_glass_GlassExtensionsProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_GlassExtensionsProto_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_GlassUserEventFrequencyStat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_GlassUserEventPerformanceStats_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_googlex_glass_GlassUserEventProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_GlassUserEventProto_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    sget-object v1, Lcom/google/common/logging/GlassExtensionsInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    sput-object v1, Lcom/google/common/logging/GlassExtensions;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lcom/google/common/logging/GlassExtensions;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v1, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 42
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v2, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "FrequencyHz"

    aput-object v4, v3, v6

    const-string v4, "DurationMs"

    aput-object v4, v3, v7

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventFrequencyStat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 46
    invoke-static {}, Lcom/google/common/logging/GlassExtensions;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v1, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 48
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v2, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "FrequencyStat"

    aput-object v4, v3, v6

    const-string v4, "TotalKernelMs"

    aput-object v4, v3, v7

    const-string v4, "BoardTemperatureMilliCentigrade"

    aput-object v4, v3, v8

    const-string v4, "BatteryStateOfChargeMah"

    aput-object v4, v3, v9

    const-string v4, "BatteryChargeWhenFullMah"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "BatteryTemperatureMilliCentigrade"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "TotalBytesSent"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventPerformanceStats_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 52
    invoke-static {}, Lcom/google/common/logging/GlassExtensions;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v1, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 54
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v2, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "EventTimeMs"

    aput-object v4, v3, v6

    const-string v4, "EventType"

    aput-object v4, v3, v7

    const-string v4, "EventData"

    aput-object v4, v3, v8

    const-string v4, "PerformanceStats"

    aput-object v4, v3, v9

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 58
    invoke-static {}, Lcom/google/common/logging/GlassExtensions;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v1, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassExtensionsProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 60
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v2, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassExtensionsProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "SessionId"

    aput-object v4, v3, v6

    const-string v4, "SoftwareVersion"

    aput-object v4, v3, v7

    const-string v4, "UserEvent"

    aput-object v4, v3, v8

    const-string v4, "HardwareVersion"

    aput-object v4, v3, v9

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassExtensionsProto_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 64
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->newInstance()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    .line 66
    .local v0, registry:Lcom/google/protobuf/ExtensionRegistry;
    sget-object v1, Lcom/google/protos/logs_proto/LogsAnnotations;->idType:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/Extension;)V

    .line 67
    sget-object v1, Lcom/google/protos/logs_proto/LogsAnnotations;->idType:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/Extension;)V

    .line 68
    sget-object v1, Lcom/google/protos/logs_proto/LogsAnnotations;->idType:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/Extension;)V

    .line 69
    sget-object v1, Lcom/google/protos/logs_proto/LogsAnnotations;->idType:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/Extension;)V

    .line 70
    sget-object v1, Lcom/google/protos/logs_proto/LogsAnnotations;->msgDetails:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/Extension;)V

    .line 71
    sget-object v1, Lcom/google/common/logging/GlassExtensions;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalUpdateFileDescriptor(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/ExtensionRegistry;)V

    .line 73
    invoke-static {}, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 74
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .line 34
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 10
    return-void
.end method

.class public Lcom/google/common/logging/GlassExtensionsInternalDescriptors;
.super Ljava/lang/Object;
.source "GlassExtensionsInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n/logs/proto/googlex/glass/glass_extensions.proto\u0012\rgooglex.glass\u001a*googlex/glass/proto/hardware_version.proto\u001a2logs/proto/logs_annotations/logs_annotations.proto\"H\n\u001bGlassUserEventFrequencyStat\u0012\u0014\n\u000cfrequency_hz\u0018\u0001 \u0002(\u0003\u0012\u0013\n\u000bduration_ms\u0018\u0002 \u0002(\u0003\"\u00bc\u0002\n\u001eGlassUserEventPerformanceStats\u0012B\n\u000efrequency_stat\u0018\u0001 \u0003(\u000b2*.googlex.glass.GlassUserEventFrequencyStat\u0012\u0017\n\u000ftotal_kernel_ms\u0018\u0002 \u0001(\u0003\u0012*\n\"board_temperature_milli_centigrade"

    aput-object v2, v1, v4

    const-string v2, "\u0018\u0003 \u0001(\u0005\u0012#\n\u001bbattery_state_of_charge_mah\u0018\u0004 \u0001(\u0005\u0012$\n\u001cbattery_charge_when_full_mah\u0018\u0005 \u0001(\u0005\u0012,\n$battery_temperature_milli_centigrade\u0018\u0006 \u0001(\u0005\u0012\u0018\n\u0010total_bytes_sent\u0018\u0007 \u0001(\u0003\"\u00ae\u0001\n\u0013GlassUserEventProto\u0012\u0015\n\revent_time_ms\u0018\u0001 \u0001(\u0003\u0012\u001a\n\nevent_type\u0018\u0002 \u0001(\tB\u0006\u00e0\u00b2\u00eaR\u00ca\u0001\u0012\u001a\n\nevent_data\u0018\u0003 \u0001(\tB\u0006\u00e0\u00b2\u00eaR\u00cb\u0001\u0012H\n\u0011performance_stats\u0018\u0004 \u0001(\u000b2-.googlex.glass.GlassUserEventPerformanceStats\"\u00e4\u0001\n\u0014GlassExtensionsProto\u0012\u0019\n\nsession_id\u0018\u0001 \u0001(\tB\u0005\u00e0\u00b2\u00eaR\n\u0012\u001f\n\u0010software_versi"

    aput-object v2, v1, v5

    const-string v2, "on\u0018\u0002 \u0001(\tB\u0005\u00e0\u00b2\u00eaR\u0007\u00126\n\nuser_event\u0018\u0003 \u0003(\u000b2\".googlex.glass.GlassUserEventProto\u0012>\n\u0010hardware_version\u0018\u0004 \u0001(\u000e2$.googlex_glass_proto.HardwareVersion:\u0018\u00c2\u00fa\u00f1Q\u0013\n\u0011\n\u0005glass\u0012\u0008glasslogB#\n\u0019com.google.common.logging\u0010\u0002 \u0001(\u0002P\u0001"

    aput-object v2, v1, v3

    .line 37
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/common/logging/GlassExtensionsInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsInternalDescriptors$1;-><init>()V

    .line 45
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    sget-object v3, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProtoInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/protos/logs_proto/LogsAnnotationsInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

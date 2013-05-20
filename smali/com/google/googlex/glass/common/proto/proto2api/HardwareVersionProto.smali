.class public final Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProto;
.super Ljava/lang/Object;
.source "HardwareVersionProto.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-object v1, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProtoInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    sput-object v1, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 20
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->newInstance()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    .line 22
    .local v0, registry:Lcom/google/protobuf/ExtensionRegistry;
    sget-object v1, Lcom/google/protos/logs_proto/LogsAnnotations;->fileNotUsedForLoggingExceptEnums:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/Extension;)V

    .line 23
    sget-object v1, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalUpdateFileDescriptor(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/ExtensionRegistry;)V

    .line 25
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
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
    .line 14
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersionProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 10
    return-void
.end method

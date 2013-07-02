.class public final Lcom/google/googlex/glass/common/proto/Entity$Command;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Entity.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;,
        Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    }
.end annotation


# static fields
.field public static final IS_VOICE_ENABLED_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Command;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private isVoiceEnabled_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1031
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Command$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    .line 1241
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1539
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Command;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Command;

    .line 1540
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Command;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->initFields()V

    .line 1541
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 971
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1193
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedIsInitialized:B

    .line 1214
    iput v7, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedSerializedSize:I

    .line 972
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->initFields()V

    .line 973
    const/4 v2, 0x0

    .line 974
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 977
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 978
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 979
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 980
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 985
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/Entity$Command;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 987
    const/4 v0, 0x1

    goto :goto_0

    .line 982
    :sswitch_0
    const/4 v0, 0x1

    .line 983
    goto :goto_0

    .line 992
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 993
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->valueOf(I)Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    move-result-object v6

    .line 994
    .local v6, value:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    if-nez v6, :cond_1

    .line 995
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1009
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    :catch_0
    move-exception v1

    .line 1010
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1016
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->makeExtensionsImmutable()V

    throw v7

    .line 997
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v6       #value:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    :cond_1
    :try_start_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    .line 998
    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1011
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    :catch_1
    move-exception v1

    .line 1012
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1003
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_4
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    .line 1004
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->isVoiceEnabled_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1015
    .end local v4           #tag:I
    :cond_2
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1016
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->makeExtensionsImmutable()V

    .line 1018
    return-void

    .line 980
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/Entity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Command;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$Builder;,"Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 948
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1193
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedIsInitialized:B

    .line 1214
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedSerializedSize:I

    .line 949
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 950
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Entity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 942
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Command;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 951
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1193
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedIsInitialized:B

    .line 1214
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedSerializedSize:I

    .line 951
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 942
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/Entity$Command;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 942
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/Entity$Command;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 942
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->isVoiceEnabled_:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/Entity$Command;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 942
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1

    .prologue
    .line 955
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1021
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Command_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1190
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->isVoiceEnabled_:Z

    .line 1192
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1

    .prologue
    .line 1303
    #calls: Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->access$900()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1306
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1283
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1289
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1253
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1259
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1294
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1300
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1273
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1279
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1263
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1269
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1

    .prologue
    .line 959
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public getIsVoiceEnabled()Z
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->isVoiceEnabled_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1216
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedSerializedSize:I

    .line 1217
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1230
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1219
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1220
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1221
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1224
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1225
    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->isVoiceEnabled_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1228
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1229
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedSerializedSize:I

    move v1, v0

    .line 1230
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasIsVoiceEnabled()Z
    .locals 2

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1155
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1026
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Command_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Entity$Command;

    const-class v2, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1244
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 1245
    const-string v0, "com.google.googlex.glass.common.proto.MutableTimeline$Entity$Command"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1247
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1195
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedIsInitialized:B

    .line 1196
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1199
    :goto_0
    return v1

    .line 1196
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1198
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 1313
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Entity$1;)V

    .line 1314
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 942
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Command;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1

    .prologue
    .line 1308
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1237
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1204
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getSerializedSize()I

    .line 1205
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1208
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1209
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command;->isVoiceEnabled_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1211
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1212
    return-void
.end method

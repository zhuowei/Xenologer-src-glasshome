.class public final Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LocationUpdateRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/LocationUpdateRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x2

.field public static final LOCATION_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private location_:Lcom/google/googlex/glass/common/proto/Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 256
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 726
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    .line 727
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->initFields()V

    .line 728
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

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 208
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedIsInitialized:B

    .line 229
    iput v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedSerializedSize:I

    .line 39
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->initFields()V

    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 44
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 45
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 47
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :sswitch_0
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 59
    :sswitch_1
    const/4 v4, 0x0

    .line 60
    .local v4, subBuilder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 61
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Location;->toBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v4

    .line 63
    :cond_1
    sget-object v7, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/googlex/glass/common/proto/Location;

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 64
    if-eqz v4, :cond_2

    .line 65
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 66
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 68
    :cond_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 79
    .end local v4           #subBuilder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 80
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 86
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->makeExtensionsImmutable()V

    throw v7

    .line 72
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 73
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

    .line 74
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 81
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 82
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 86
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->makeExtensionsImmutable()V

    .line 88
    return-void

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$1;)V
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
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 208
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedIsInitialized:B

    .line 229
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedSerializedSize:I

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 208
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedIsInitialized:B

    .line 229
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedSerializedSize:I

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 318
    #calls: Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 321
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 284
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;

    .line 171
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 172
    check-cast v1, Ljava/lang/String;

    .line 180
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 174
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 176
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 180
    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;

    .line 193
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 194
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 197
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;

    .line 200
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getLocation()Lcom/google/googlex/glass/common/proto/Location;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public getLocationOrBuilder()Lcom/google/googlex/glass/common/proto/LocationOrBuilder;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 231
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedSerializedSize:I

    .line 232
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 245
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 234
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 235
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 236
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 239
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 244
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 245
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

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

.method public hasLocation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 127
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

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
    .line 96
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 260
    const-string v0, "com.google.googlex.glass.common.proto.MutableLocationRequest$LocationUpdateRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 262
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedIsInitialized:B

    .line 211
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 214
    :goto_0
    return v1

    .line 211
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 213
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 328
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$1;)V

    .line 329
    .local v0, builder:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

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
    .line 252
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

    .line 219
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getSerializedSize()I

    .line 220
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 223
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 227
    return-void
.end method

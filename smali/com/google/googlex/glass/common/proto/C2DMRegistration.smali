.class public final Lcom/google/googlex/glass/common/proto/C2DMRegistration;
.super Lcom/google/protobuf/GeneratedMessage;
.source "C2DMRegistration.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/C2DMRegistrationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/C2DMRegistration;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGISTRATION_TIME_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistration;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private registrationTime_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    .line 310
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 782
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    .line 783
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->initFields()V

    .line 784
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 255
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedIsInitialized:B

    .line 279
    iput v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->initFields()V

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 48
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 49
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 51
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    :sswitch_0
    const/4 v1, 0x1

    .line 54
    goto :goto_0

    .line 63
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 64
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    .line 65
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->makeExtensionsImmutable()V

    throw v6

    .line 69
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->registrationTime_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 83
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 84
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 75
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    .line 76
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 87
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->makeExtensionsImmutable()V

    .line 90
    return-void

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/C2DMRegistration$1;)V
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
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 19
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 255
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedIsInitialized:B

    .line 279
    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/C2DMRegistration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 255
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedIsInitialized:B

    .line 279
    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/C2DMRegistration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/C2DMRegistration;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->registrationTime_:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/C2DMRegistration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/C2DMRegistration;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistration_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;

    .line 252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->registrationTime_:J

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1

    .prologue
    .line 372
    #calls: Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->access$100()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 375
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 322
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 328
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 332
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 338
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;

    .line 217
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 218
    check-cast v1, Ljava/lang/String;

    .line 226
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 220
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 222
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 226
    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;

    .line 239
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 240
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 243
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;

    .line 246
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

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;

    .line 140
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 141
    check-cast v1, Ljava/lang/String;

    .line 149
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 143
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 145
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 149
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;

    .line 162
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 163
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 166
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;

    .line 169
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/C2DMRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRegistrationTime()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->registrationTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 281
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedSerializedSize:I

    .line 282
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 299
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 284
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 285
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 289
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 290
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->registrationTime_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 293
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 294
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 298
    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedSerializedSize:I

    move v1, v0

    .line 299
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 129
    iget v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegistrationTime()Z
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistration_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    const-class v2, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 314
    const-string v0, "com.google.googlex.glass.common.proto.MutableC2DmRegister$C2DMRegistration"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 316
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedIsInitialized:B

    .line 258
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 261
    :goto_0
    return v1

    .line 258
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 382
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/C2DMRegistration$1;)V

    .line 383
    .local v0, builder:Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->newBuilderForType()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->newBuilderForType()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1

    .prologue
    .line 377
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->newBuilder(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->toBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->toBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

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
    .line 306
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

    .line 266
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getSerializedSize()I

    .line 267
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 270
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 271
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->registrationTime_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 273
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 274
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 277
    return-void
.end method

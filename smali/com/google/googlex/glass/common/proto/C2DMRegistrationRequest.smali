.class public final Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "C2DMRegistrationRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;,
        Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final DEVICE_HARDWARE_FIELD_NUMBER:I = 0x8

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x3

.field public static final DEVICE_OS_VERSION_FIELD_NUMBER:I = 0x7

.field public static final GSF_DEVICE_ID_FIELD_NUMBER:I = 0x9

.field public static final LOCALE_FIELD_NUMBER:I = 0x4

.field public static final MAJOR_VERSION_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGISTRATION_ID_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

.field private bitField0_:I

.field private deviceHardware_:Ljava/lang/Object;

.field private deviceId_:Ljava/lang/Object;

.field private deviceOsVersion_:Ljava/lang/Object;

.field private gsfDeviceId_:J

.field private locale_:Ljava/lang/Object;

.field private majorVersion_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private registrationId_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 733
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1682
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    .line 1683
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->initFields()V

    .line 1684
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 636
    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedIsInitialized:B

    .line 678
    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->initFields()V

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 48
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 49
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 51
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

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
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 64
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->valueOf(I)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    move-result-object v7

    .line 65
    .local v7, value:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    if-nez v7, :cond_1

    .line 66
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 121
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    :catch_0
    move-exception v2

    .line 122
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 128
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->makeExtensionsImmutable()V

    throw v8

    .line 68
    .restart local v4       #rawValue:I
    .restart local v5       #tag:I
    .restart local v7       #value:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    :cond_1
    :try_start_2
    iget v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    .line 69
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 123
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    :catch_1
    move-exception v2

    .line 124
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 75
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    .line 76
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 81
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    .line 82
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 87
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    .line 88
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;

    goto :goto_0

    .line 92
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 93
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    .line 94
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_6
    iget v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    .line 99
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->version_:J

    goto/16 :goto_0

    .line 103
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 104
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    .line 105
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 109
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 110
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    .line 111
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 115
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_9
    iget v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    .line 116
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->gsfDeviceId_:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 127
    .end local v5           #tag:I
    :cond_2
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 128
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->makeExtensionsImmutable()V

    .line 130
    return-void

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 636
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedIsInitialized:B

    .line 678
    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 636
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedIsInitialized:B

    .line 678
    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->version_:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->gsfDeviceId_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 626
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;

    .line 628
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;

    .line 629
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;

    .line 630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;

    .line 631
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->version_:J

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;

    .line 633
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;

    .line 634
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->gsfDeviceId_:J

    .line 635
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 795
    #calls: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 798
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 745
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 751
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 755
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 761
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceHardware()Ljava/lang/String;
    .locals 4

    .prologue
    .line 580
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;

    .line 581
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 582
    check-cast v1, Ljava/lang/String;

    .line 590
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 584
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 586
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 590
    goto :goto_0
.end method

.method public getDeviceHardwareBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 598
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;

    .line 599
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 600
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 603
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;

    .line 606
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

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 367
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;

    .line 368
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 369
    check-cast v1, Ljava/lang/String;

    .line 377
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 371
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 373
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 377
    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;

    .line 392
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 393
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 396
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;

    .line 399
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

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 538
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;

    .line 539
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 540
    check-cast v1, Ljava/lang/String;

    .line 548
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 542
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 544
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 548
    goto :goto_0
.end method

.method public getDeviceOsVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;

    .line 557
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 558
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 561
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;

    .line 564
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

.method public getGsfDeviceId()J
    .locals 2

    .prologue
    .line 622
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->gsfDeviceId_:J

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 4

    .prologue
    .line 423
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;

    .line 424
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 425
    check-cast v1, Ljava/lang/String;

    .line 433
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 427
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 429
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 433
    goto :goto_0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;

    .line 446
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 447
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 450
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;

    .line 453
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

.method public getMajorVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 477
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;

    .line 478
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 479
    check-cast v1, Ljava/lang/String;

    .line 487
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 481
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 483
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 487
    goto :goto_0
.end method

.method public getMajorVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 499
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;

    .line 500
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 501
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 504
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;

    .line 507
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
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;

    .line 310
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 311
    check-cast v1, Ljava/lang/String;

    .line 319
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 313
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 315
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 319
    goto :goto_0
.end method

.method public getRegistrationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 331
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;

    .line 332
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 333
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 336
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;

    .line 339
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

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 680
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedSerializedSize:I

    .line 681
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 722
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 683
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 684
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 685
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 688
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 689
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getRegistrationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 692
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 693
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 696
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 697
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 700
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 701
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getMajorVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 704
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 705
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->version_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 708
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 709
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceOsVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 712
    :cond_7
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 713
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceHardwareBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 716
    :cond_8
    iget v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 717
    const/16 v2, 0x9

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->gsfDeviceId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 720
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 721
    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 722
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 523
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->version_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 280
    iget v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceHardware()Z
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 355
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

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

.method public hasDeviceOsVersion()Z
    .locals 2

    .prologue
    .line 532
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGsfDeviceId()Z
    .locals 2

    .prologue
    .line 616
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 2

    .prologue
    .line 413
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMajorVersion()Z
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegistrationId()Z
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .prologue
    .line 517
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 138
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 736
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 737
    const-string v0, "com.google.googlex.glass.common.proto.MutableC2DmRegister$C2DMRegistrationRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 739
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 638
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedIsInitialized:B

    .line 639
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 642
    :goto_0
    return v1

    .line 639
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 641
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 796
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 805
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$1;)V

    .line 806
    .local v0, builder:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 800
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

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
    .line 729
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 647
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getSerializedSize()I

    .line 648
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 651
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getRegistrationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 654
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 655
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 657
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 658
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 660
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 661
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getMajorVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 663
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 664
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->version_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 666
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 667
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceOsVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 669
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 670
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceHardwareBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 672
    :cond_7
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 673
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->gsfDeviceId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 675
    :cond_8
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 676
    return-void
.end method

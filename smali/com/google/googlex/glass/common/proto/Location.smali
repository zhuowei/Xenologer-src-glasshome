.class public final Lcom/google/googlex/glass/common/proto/Location;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Location.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/Location$Builder;
    }
.end annotation


# static fields
.field public static final ACCURACY_FIELD_NUMBER:I = 0x6

.field public static final ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x7

.field public static final LATITUDE_FIELD_NUMBER:I = 0x1

.field public static final LEVEL_ID_FIELD_NUMBER:I = 0x8

.field public static final LEVEL_NUMBER_FIELD_NUMBER:I = 0x9

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0xa

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/Location;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private accuracy_:D

.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private latitude_:D

.field private levelId_:Ljava/lang/Object;

.field private levelNumber_:F

.field private longitude_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private source_:Ljava/lang/Object;

.field private timestamp_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/google/googlex/glass/common/proto/Location$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Location$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 674
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Location;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1738
    new-instance v0, Lcom/google/googlex/glass/common/proto/Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Location;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Location;->defaultInstance:Lcom/google/googlex/glass/common/proto/Location;

    .line 1739
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->defaultInstance:Lcom/google/googlex/glass/common/proto/Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Location;->initFields()V

    .line 1740
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

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 570
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedIsInitialized:B

    .line 615
    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Location;->initFields()V

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 49
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 50
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 52
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/Location;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :sswitch_0
    const/4 v1, 0x1

    .line 55
    goto :goto_0

    .line 64
    :sswitch_1
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/Location;->latitude_:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 120
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 121
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 127
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->makeExtensionsImmutable()V

    throw v6

    .line 69
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/Location;->longitude_:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 122
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 123
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
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 76
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 81
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 82
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_5
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 87
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/Location;->timestamp_:J

    goto :goto_0

    .line 91
    :sswitch_6
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 92
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/Location;->accuracy_:D

    goto :goto_0

    .line 96
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 97
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 98
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 103
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 104
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 108
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_9
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 109
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->levelNumber_:F

    goto/16 :goto_0

    .line 113
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 114
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    .line 115
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 126
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 127
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->makeExtensionsImmutable()V

    .line 129
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4d -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/Location$1;)V
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
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Location;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 570
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedIsInitialized:B

    .line 615
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Location$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Location;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 570
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedIsInitialized:B

    .line 615
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location;->accuracy_:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Location;->levelNumber_:F

    return p1
.end method

.method static synthetic access$1300(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Location;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/Location;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location;->longitude_:D

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->defaultInstance:Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Location_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 559
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;

    .line 560
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;

    .line 561
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location;->timestamp_:J

    .line 562
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location;->latitude_:D

    .line 563
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location;->longitude_:D

    .line 564
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location;->accuracy_:D

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location;->levelNumber_:F

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;

    .line 569
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 736
    #calls: Lcom/google/googlex/glass/common/proto/Location$Builder;->create()Lcom/google/googlex/glass/common/proto/Location$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location$Builder;->access$100()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 739
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 686
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 692
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 696
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 702
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method


# virtual methods
.method public getAccuracy()D
    .locals 2

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location;->accuracy_:D

    return-wide v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 524
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;

    .line 525
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 526
    check-cast v1, Ljava/lang/String;

    .line 534
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 528
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 530
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 534
    goto :goto_0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 546
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;

    .line 547
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 548
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 551
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;

    .line 554
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Location;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->defaultInstance:Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 469
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;

    .line 470
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 471
    check-cast v1, Ljava/lang/String;

    .line 479
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 473
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 475
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 479
    goto :goto_0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 492
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;

    .line 493
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 494
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 497
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;

    .line 500
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
    .line 178
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;

    .line 179
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 180
    check-cast v1, Ljava/lang/String;

    .line 188
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 182
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 184
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 188
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;

    .line 201
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 202
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 205
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;

    .line 208
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

.method public getLatitude()D
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 384
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;

    .line 385
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 386
    check-cast v1, Ljava/lang/String;

    .line 394
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 388
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 390
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 394
    goto :goto_0
.end method

.method public getLevelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 408
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;

    .line 409
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 410
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 413
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;

    .line 416
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

.method public getLevelNumber()F
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->levelNumber_:F

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location;->longitude_:D

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 617
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedSerializedSize:I

    .line 618
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 663
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 620
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 621
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_1

    .line 622
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location;->latitude_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 625
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 626
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location;->longitude_:D

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 629
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_3

    .line 630
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 633
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_4

    .line 634
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 637
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v4, :cond_5

    .line 638
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location;->timestamp_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 641
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 642
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location;->accuracy_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 645
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_7

    .line 646
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 649
    :cond_7
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_8

    .line 650
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getLevelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 653
    :cond_8
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_9

    .line 654
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/googlex/glass/common/proto/Location;->levelNumber_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 657
    :cond_9
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v6, :cond_a

    .line 658
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 661
    :cond_a
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 662
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedSerializedSize:I

    move v1, v0

    .line 663
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;

    .line 233
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 234
    check-cast v1, Ljava/lang/String;

    .line 242
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 236
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 238
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 242
    goto :goto_0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;

    .line 255
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 256
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 259
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;

    .line 262
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

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    .line 347
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

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

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 168
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatitude()Z
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

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

.method public hasLevelId()Z
    .locals 2

    .prologue
    .line 372
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

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

.method public hasLevelNumber()Z
    .locals 2

    .prologue
    .line 432
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 277
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 137
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Location_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Location;

    const-class v2, Lcom/google/googlex/glass/common/proto/Location$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 677
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 678
    const-string v0, "com.google.googlex.glass.common.proto.MutableTimeline$Location"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Location;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Location;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 680
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Location;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 572
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedIsInitialized:B

    .line 573
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 576
    :goto_0
    return v1

    .line 573
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 575
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Location;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 746
    new-instance v0, Lcom/google/googlex/glass/common/proto/Location$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Location$1;)V

    .line 747
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Location;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->toBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->toBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

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
    .line 670
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 581
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getSerializedSize()I

    .line 582
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_0

    .line 583
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location;->latitude_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 585
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 586
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location;->longitude_:D

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 588
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    .line 589
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 591
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_3

    .line 592
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 594
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_4

    .line 595
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/Location;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 597
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 598
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/Location;->accuracy_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 600
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_6

    .line 601
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 603
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getLevelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 606
    :cond_7
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    .line 607
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/googlex/glass/common/proto/Location;->levelNumber_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 609
    :cond_8
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_9

    .line 610
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 612
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 613
    return-void
.end method

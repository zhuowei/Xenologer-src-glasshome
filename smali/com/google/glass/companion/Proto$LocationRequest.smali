.class public final Lcom/google/glass/companion/Proto$LocationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$LocationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$LocationRequest$Builder;,
        Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    }
.end annotation


# static fields
.field public static final MIN_DISTANCE_FIELD_NUMBER:I = 0x4

.field public static final MIN_TIME_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_FIELD_NUMBER:I = 0x2

.field public static final SEND_LAST_KNOWN_LOCATION_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$LocationRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private minDistance_:F

.field private minTime_:J

.field private provider_:Ljava/lang/Object;

.field private sendLastKnownLocation_:Z

.field private type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7121
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 7395
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 7847
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 7848
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->initFields()V

    .line 7849
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 7047
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7318
    iput-byte v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    .line 7356
    iput v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    .line 7048
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->initFields()V

    .line 7049
    const/4 v3, 0x0

    .line 7050
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v7

    .line 7052
    .local v7, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v6

    .line 7056
    .local v6, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 7057
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 7058
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 7059
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 7064
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/glass/companion/Proto$LocationRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 7066
    const/4 v1, 0x1

    goto :goto_0

    .line 7061
    :sswitch_0
    const/4 v1, 0x1

    .line 7062
    goto :goto_0

    .line 7071
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 7072
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->valueOf(I)Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    move-result-object v8

    .line 7073
    .local v8, value:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    if-nez v8, :cond_1

    .line 7074
    invoke-virtual {v6, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 7075
    invoke-virtual {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7105
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    :catch_0
    move-exception v2

    .line 7106
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7111
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    .line 7112
    :try_start_2
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 7116
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7118
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->makeExtensionsImmutable()V

    throw v9

    .line 7077
    .restart local v4       #rawValue:I
    .restart local v5       #tag:I
    .restart local v8       #value:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    :cond_1
    :try_start_3
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 7078
    iput-object v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 7107
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    :catch_1
    move-exception v2

    .line 7108
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7083
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7084
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 7085
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    goto :goto_0

    .line 7089
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_3
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 7090
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    goto :goto_0

    .line 7094
    :sswitch_4
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 7095
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v9

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    goto :goto_0

    .line 7099
    :sswitch_5
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 7100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 7112
    .end local v5           #tag:I
    :cond_2
    :try_start_6
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 7116
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7118
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->makeExtensionsImmutable()V

    .line 7120
    return-void

    .line 7113
    :catch_2
    move-exception v9

    .line 7116
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 7113
    :catch_3
    move-exception v10

    .line 7116
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 7059
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/glass/companion/Proto$1;)V
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
    .line 7023
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7029
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7318
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    .line 7356
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    .line 7030
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7031
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7032
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7318
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    .line 7356
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    .line 7032
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$6802(Lcom/google/glass/companion/Proto$LocationRequest;Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/google/glass/companion/Proto$LocationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7023
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/google/glass/companion/Proto$LocationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/google/glass/companion/Proto$LocationRequest;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    return-wide p1
.end method

.method static synthetic access$7102(Lcom/google/glass/companion/Proto$LocationRequest;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    return p1
.end method

.method static synthetic access$7202(Lcom/google/glass/companion/Proto$LocationRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    return p1
.end method

.method static synthetic access$7302(Lcom/google/glass/companion/Proto$LocationRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$7400(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7023
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 7036
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 7312
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 7313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    .line 7314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    .line 7315
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    .line 7316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 7317
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 7457
    #calls: Lcom/google/glass/companion/Proto$LocationRequest$Builder;->create()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->access$6600()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7460
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7437
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7443
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7407
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7413
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7448
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7454
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7427
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7433
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7417
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7423
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 7040
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7023
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMinDistance()F
    .locals 1

    .prologue
    .line 7285
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    return v0
.end method

.method public getMinTime()J
    .locals 2

    .prologue
    .line 7270
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$LocationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7133
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7220
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    .line 7221
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7222
    check-cast v1, Ljava/lang/String;

    .line 7230
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7224
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7226
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7227
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7228
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7230
    goto :goto_0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7238
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    .line 7239
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7240
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7243
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    .line 7246
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

.method public getSendLastKnownLocation()Z
    .locals 1

    .prologue
    .line 7308
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 7358
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    .line 7359
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7384
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 7361
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 7362
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 7363
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7366
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 7367
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7370
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 7371
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7374
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 7375
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 7378
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 7379
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7382
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 7383
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 7384
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    .locals 1

    .prologue
    .line 7205
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    return-object v0
.end method

.method public hasMinDistance()Z
    .locals 2

    .prologue
    .line 7279
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

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

.method public hasMinTime()Z
    .locals 2

    .prologue
    .line 7260
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

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

.method public hasProvider()Z
    .locals 2

    .prologue
    .line 7214
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

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

.method public hasSendLastKnownLocation()Z
    .locals 2

    .prologue
    .line 7298
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7199
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 7398
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 7399
    const-string v0, "com.google.glass.companion.MutableProto$LocationRequest"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 7401
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7320
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    .line 7321
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 7332
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 7321
    goto :goto_0

    .line 7323
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7324
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 7325
    goto :goto_0

    .line 7327
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->hasProvider()Z

    move-result v3

    if-nez v3, :cond_3

    .line 7328
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 7329
    goto :goto_0

    .line 7331
    :cond_3
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 7458
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7023
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilderForType()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 7462
    invoke-static {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7023
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->toBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

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
    .line 7391
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 7337
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->getSerializedSize()I

    .line 7338
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7339
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7341
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 7342
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7344
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 7345
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7347
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 7348
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 7350
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 7351
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7353
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 7354
    return-void
.end method

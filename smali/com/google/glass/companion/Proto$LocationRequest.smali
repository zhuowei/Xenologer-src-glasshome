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
    .line 3798
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 4072
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 4521
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 4522
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->initFields()V

    .line 4523
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

    .line 3725
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3995
    iput-byte v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    .line 4033
    iput v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    .line 3726
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->initFields()V

    .line 3727
    const/4 v2, 0x0

    .line 3728
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 3730
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 3734
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 3735
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 3736
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 3737
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 3742
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$LocationRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3744
    const/4 v0, 0x1

    goto :goto_0

    .line 3739
    :sswitch_0
    const/4 v0, 0x1

    .line 3740
    goto :goto_0

    .line 3749
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 3750
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->valueOf(I)Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    move-result-object v7

    .line 3751
    .local v7, value:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    if-nez v7, :cond_1

    .line 3752
    invoke-virtual {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3753
    invoke-virtual {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3782
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    :catch_0
    move-exception v1

    .line 3783
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3788
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    .line 3789
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3793
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 3795
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->makeExtensionsImmutable()V

    throw v8

    .line 3755
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v7       #value:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    :cond_1
    :try_start_3
    iget v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 3756
    iput-object v7, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3784
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    :catch_1
    move-exception v1

    .line 3785
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3761
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_5
    iget v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 3762
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    goto :goto_0

    .line 3766
    :sswitch_3
    iget v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 3767
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    goto :goto_0

    .line 3771
    :sswitch_4
    iget v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 3772
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    goto :goto_0

    .line 3776
    :sswitch_5
    iget v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 3777
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 3789
    .end local v4           #tag:I
    :cond_2
    :try_start_6
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 3793
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 3795
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->makeExtensionsImmutable()V

    .line 3797
    return-void

    .line 3790
    :catch_2
    move-exception v8

    .line 3793
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 3790
    :catch_3
    move-exception v9

    .line 3793
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 3737
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
    .line 3701
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3707
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3995
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    .line 4033
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    .line 3708
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 3709
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3701
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3710
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3995
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    .line 4033
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    .line 3710
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2702(Lcom/google/glass/companion/Proto$LocationRequest;Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3701
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/glass/companion/Proto$LocationRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/glass/companion/Proto$LocationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3701
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/glass/companion/Proto$LocationRequest;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3701
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    return-wide p1
.end method

.method static synthetic access$3002(Lcom/google/glass/companion/Proto$LocationRequest;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3701
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    return p1
.end method

.method static synthetic access$3102(Lcom/google/glass/companion/Proto$LocationRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3701
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/google/glass/companion/Proto$LocationRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3701
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$3300(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 3714
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 3989
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 3990
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    .line 3991
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    .line 3992
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    .line 3993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 3994
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 4134
    #calls: Lcom/google/glass/companion/Proto$LocationRequest$Builder;->create()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->access$2500()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4137
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
    .line 4114
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
    .line 4120
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
    .line 4084
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
    .line 4090
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
    .line 4125
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
    .line 4131
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
    .line 4104
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
    .line 4110
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
    .line 4094
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
    .line 4100
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
    .line 3718
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->defaultInstance:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3701
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMinDistance()F
    .locals 1

    .prologue
    .line 3962
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    return v0
.end method

.method public getMinTime()J
    .locals 2

    .prologue
    .line 3947
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
    .line 3810
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3897
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    .line 3898
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3899
    check-cast v1, Ljava/lang/String;

    .line 3907
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3901
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3903
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3904
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3905
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3907
    goto :goto_0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3915
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    .line 3916
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3917
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3920
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;

    .line 3923
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
    .line 3985
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4035
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    .line 4036
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4061
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4038
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4039
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4040
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4043
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4044
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4047
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4048
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4051
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 4052
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4055
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 4056
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4059
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 4060
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 4061
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    .locals 1

    .prologue
    .line 3882
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    return-object v0
.end method

.method public hasMinDistance()Z
    .locals 2

    .prologue
    .line 3956
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
    .line 3937
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
    .line 3891
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
    .line 3975
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

    .line 3876
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
    .line 4075
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 4076
    const-string v0, "com.google.glass.companion.MutableProto$LocationRequest"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 4078
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3997
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    .line 3998
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 4009
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 3998
    goto :goto_0

    .line 4000
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4001
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 4002
    goto :goto_0

    .line 4004
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->hasProvider()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4005
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 4006
    goto :goto_0

    .line 4008
    :cond_3
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 4135
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3701
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilderForType()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 4139
    invoke-static {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3701
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
    .line 4068
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

    .line 4014
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->getSerializedSize()I

    .line 4015
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4016
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4018
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4019
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4021
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4022
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4024
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4025
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4027
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 4028
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4030
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 4031
    return-void
.end method

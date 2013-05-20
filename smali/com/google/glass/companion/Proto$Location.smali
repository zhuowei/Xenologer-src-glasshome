.class public final Lcom/google/glass/companion/Proto$Location;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Location$Builder;
    }
.end annotation


# static fields
.field public static final ACCURACY_FIELD_NUMBER:I = 0x3

.field public static final ALTITUDE_FIELD_NUMBER:I = 0x4

.field public static final BEARING_FIELD_NUMBER:I = 0x5

.field public static final LATITUDE_FIELD_NUMBER:I = 0x1

.field public static final LEVEL_ID_FIELD_NUMBER:I = 0xa

.field public static final LEVEL_NUMBER_E3_FIELD_NUMBER:I = 0xb

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final SATELLITES_USED_IN_FIX_FIELD_NUMBER:I = 0x8

.field public static final SPEED_FIELD_NUMBER:I = 0x6

.field public static final TIME_FIELD_NUMBER:I = 0x7

.field public static final VISIBLE_SATELLITES_FIELD_NUMBER:I = 0x9

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$Location;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private accuracy_:F

.field private altitude_:D

.field private bearing_:F

.field private bitField0_:I

.field private latitude_:D

.field private levelId_:Ljava/lang/Object;

.field private levelNumberE3_:I

.field private longitude_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private satellitesUsedInFix_:I

.field private speed_:F

.field private time_:J

.field private visibleSatellites_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5843
    new-instance v0, Lcom/google/glass/companion/Proto$Location$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 6213
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 6942
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Location;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    .line 6943
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;->initFields()V

    .line 6944
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 5759
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6104
    iput-byte v4, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 6151
    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 5760
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Location;->initFields()V

    .line 5761
    const/4 v2, 0x0

    .line 5763
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 5764
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 5765
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 5766
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 5771
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/glass/companion/Proto$Location;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5773
    const/4 v0, 0x1

    goto :goto_0

    .line 5768
    :sswitch_0
    const/4 v0, 0x1

    .line 5769
    goto :goto_0

    .line 5778
    :sswitch_1
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5779
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5834
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 5835
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5840
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->makeExtensionsImmutable()V

    throw v4

    .line 5783
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5784
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5836
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 5837
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5788
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5789
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    goto :goto_0

    .line 5793
    :sswitch_4
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5794
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    goto :goto_0

    .line 5798
    :sswitch_5
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5799
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    goto :goto_0

    .line 5803
    :sswitch_6
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5804
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    goto :goto_0

    .line 5808
    :sswitch_7
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5809
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    goto/16 :goto_0

    .line 5813
    :sswitch_8
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5814
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    goto/16 :goto_0

    .line 5818
    :sswitch_9
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5819
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    goto/16 :goto_0

    .line 5823
    :sswitch_a
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5824
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5828
    :sswitch_b
    iget v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5829
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 5840
    .end local v3           #tag:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->makeExtensionsImmutable()V

    .line 5842
    return-void

    .line 5766
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1d -> :sswitch_3
        0x21 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
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
    .line 5736
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Location;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5742
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6104
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 6151
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 5744
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Location;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5745
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6104
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 6151
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 5745
    return-void
.end method

.method static synthetic access$4402(Lcom/google/glass/companion/Proto$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$4502(Lcom/google/glass/companion/Proto$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    return-wide p1
.end method

.method static synthetic access$4602(Lcom/google/glass/companion/Proto$Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    return p1
.end method

.method static synthetic access$4702(Lcom/google/glass/companion/Proto$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    return-wide p1
.end method

.method static synthetic access$4802(Lcom/google/glass/companion/Proto$Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    return p1
.end method

.method static synthetic access$4902(Lcom/google/glass/companion/Proto$Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    return p1
.end method

.method static synthetic access$5002(Lcom/google/glass/companion/Proto$Location;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    return-wide p1
.end method

.method static synthetic access$5102(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    return p1
.end method

.method static synthetic access$5202(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    return p1
.end method

.method static synthetic access$5300(Lcom/google/glass/companion/Proto$Location;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5736
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/glass/companion/Proto$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    return p1
.end method

.method static synthetic access$5502(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5736
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 5749
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 6092
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 6093
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 6094
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 6095
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 6096
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 6097
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 6098
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 6099
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 6100
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 6101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 6102
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 6103
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6275
    #calls: Lcom/google/glass/companion/Proto$Location$Builder;->create()Lcom/google/glass/companion/Proto$Location$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Location$Builder;->access$4200()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6278
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->newBuilder()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6255
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6261
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6225
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6231
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6266
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6272
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6245
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6251
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6235
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6241
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 5901
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 5916
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 5931
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 5753
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5736
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 5871
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6030
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 6031
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6032
    check-cast v1, Ljava/lang/String;

    .line 6040
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6034
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6036
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6037
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6038
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6040
    goto :goto_0
.end method

.method public getLevelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6052
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 6053
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6054
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6057
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 6060
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

.method public getLevelNumberE3()I
    .locals 1

    .prologue
    .line 6088
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 5886
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5855
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSatellitesUsedInFix()I
    .locals 1

    .prologue
    .line 5984
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 6153
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 6154
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6202
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 6156
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 6157
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 6158
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 6161
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 6162
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 6165
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 6166
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 6169
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_4

    .line 6170
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 6173
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 6174
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 6177
    :cond_5
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 6178
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 6181
    :cond_6
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 6182
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6185
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 6186
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6189
    :cond_8
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 6190
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6193
    :cond_9
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 6194
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getLevelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6197
    :cond_a
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 6198
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6201
    :cond_b
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    move v1, v0

    .line 6202
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 5946
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 5961
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    return-wide v0
.end method

.method public getVisibleSatellites()I
    .locals 1

    .prologue
    .line 6007
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    return v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    .line 5895
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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

.method public hasAltitude()Z
    .locals 2

    .prologue
    .line 5910
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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

.method public hasBearing()Z
    .locals 2

    .prologue
    .line 5925
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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

.method public hasLatitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5865
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelId()Z
    .locals 2

    .prologue
    .line 6020
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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

.method public hasLevelNumberE3()Z
    .locals 2

    .prologue
    .line 6076
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

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
    .line 5880
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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

.method public hasSatellitesUsedInFix()Z
    .locals 2

    .prologue
    .line 5974
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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

.method public hasSpeed()Z
    .locals 2

    .prologue
    .line 5940
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    .prologue
    .line 5955
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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

.method public hasVisibleSatellites()Z
    .locals 2

    .prologue
    .line 5997
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6216
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 6217
    const-string v0, "com.google.glass.companion.MutableProto$Location"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Location;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 6219
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6106
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 6107
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 6110
    :goto_0
    return v1

    .line 6107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 6109
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6276
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->newBuilder()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5736
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->newBuilderForType()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6280
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Location;->newBuilder(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5736
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->toBuilder()Lcom/google/glass/companion/Proto$Location$Builder;

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
    .line 6209
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

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

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6115
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getSerializedSize()I

    .line 6116
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 6117
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6119
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 6120
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6122
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 6123
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 6125
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 6126
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6128
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 6129
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 6131
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 6132
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 6134
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 6135
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 6137
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 6138
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6140
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 6141
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6143
    :cond_8
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 6144
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getLevelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6146
    :cond_9
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 6147
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6149
    :cond_a
    return-void
.end method

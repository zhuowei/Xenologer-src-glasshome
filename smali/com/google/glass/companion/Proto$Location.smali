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

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private visibleSatellites_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5910
    new-instance v0, Lcom/google/glass/companion/Proto$Location$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 6282
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 7012
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Location;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    .line 7013
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;->initFields()V

    .line 7014
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

    .line 5814
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6171
    iput-byte v6, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 6219
    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 5815
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Location;->initFields()V

    .line 5816
    const/4 v2, 0x0

    .line 5817
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v5

    .line 5819
    .local v5, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    .line 5823
    .local v4, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 5824
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 5825
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 5826
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 5831
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/glass/companion/Proto$Location;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5833
    const/4 v0, 0x1

    goto :goto_0

    .line 5828
    :sswitch_0
    const/4 v0, 0x1

    .line 5829
    goto :goto_0

    .line 5838
    :sswitch_1
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5839
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5894
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 5895
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5900
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    .line 5901
    :try_start_2
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 5905
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 5907
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->makeExtensionsImmutable()V

    throw v6

    .line 5843
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_3
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5844
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 5896
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 5897
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5848
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_5
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5849
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    goto :goto_0

    .line 5853
    :sswitch_4
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5854
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    goto :goto_0

    .line 5858
    :sswitch_5
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5859
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    goto :goto_0

    .line 5863
    :sswitch_6
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5864
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    goto/16 :goto_0

    .line 5868
    :sswitch_7
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5869
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    goto/16 :goto_0

    .line 5873
    :sswitch_8
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5874
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    goto/16 :goto_0

    .line 5878
    :sswitch_9
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5879
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    goto/16 :goto_0

    .line 5883
    :sswitch_a
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5884
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5888
    :sswitch_b
    iget v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 5889
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 5901
    .end local v3           #tag:I
    :cond_1
    :try_start_6
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 5905
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 5907
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->makeExtensionsImmutable()V

    .line 5909
    return-void

    .line 5902
    :catch_2
    move-exception v6

    .line 5905
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 5902
    :catch_3
    move-exception v7

    .line 5905
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 5826
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
    .line 5790
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Location;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5796
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6171
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 6219
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 5797
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 5798
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Location;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5799
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6171
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 6219
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 5799
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$4702(Lcom/google/glass/companion/Proto$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$4802(Lcom/google/glass/companion/Proto$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    return-wide p1
.end method

.method static synthetic access$4902(Lcom/google/glass/companion/Proto$Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    return p1
.end method

.method static synthetic access$5002(Lcom/google/glass/companion/Proto$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    return-wide p1
.end method

.method static synthetic access$5102(Lcom/google/glass/companion/Proto$Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    return p1
.end method

.method static synthetic access$5202(Lcom/google/glass/companion/Proto$Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    return p1
.end method

.method static synthetic access$5302(Lcom/google/glass/companion/Proto$Location;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    return-wide p1
.end method

.method static synthetic access$5402(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    return p1
.end method

.method static synthetic access$5502(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    return p1
.end method

.method static synthetic access$5600(Lcom/google/glass/companion/Proto$Location;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5790
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/google/glass/companion/Proto$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    return p1
.end method

.method static synthetic access$5802(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5790
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    return p1
.end method

.method static synthetic access$5900(Lcom/google/glass/companion/Proto$Location;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5790
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 5803
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 6159
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 6160
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 6161
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 6162
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 6163
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 6164
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 6165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 6166
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 6167
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 6168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 6169
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 6170
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6344
    #calls: Lcom/google/glass/companion/Proto$Location$Builder;->create()Lcom/google/glass/companion/Proto$Location$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Location$Builder;->access$4500()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6347
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
    .line 6324
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
    .line 6330
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
    .line 6294
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
    .line 6300
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
    .line 6335
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
    .line 6341
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
    .line 6314
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
    .line 6320
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
    .line 6304
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
    .line 6310
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
    .line 5968
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 5983
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 5998
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 5807
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5790
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 5938
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6097
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 6098
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6099
    check-cast v1, Ljava/lang/String;

    .line 6107
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6101
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6103
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6104
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6105
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6107
    goto :goto_0
.end method

.method public getLevelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6119
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 6120
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6121
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6124
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 6127
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
    .line 6155
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 5953
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
    .line 5922
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSatellitesUsedInFix()I
    .locals 1

    .prologue
    .line 6051
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

    .line 6221
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 6222
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6271
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 6224
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 6225
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 6226
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 6229
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 6230
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 6233
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 6234
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 6237
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_4

    .line 6238
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 6241
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 6242
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 6245
    :cond_5
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 6246
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 6249
    :cond_6
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 6250
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6253
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 6254
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6257
    :cond_8
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 6258
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6261
    :cond_9
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 6262
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getLevelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6265
    :cond_a
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 6266
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6269
    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 6270
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    move v1, v0

    .line 6271
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 6013
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 6028
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    return-wide v0
.end method

.method public getVisibleSatellites()I
    .locals 1

    .prologue
    .line 6074
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    return v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    .line 5962
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
    .line 5977
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
    .line 5992
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

    .line 5932
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
    .line 6087
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
    .line 6143
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
    .line 5947
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
    .line 6041
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
    .line 6007
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
    .line 6022
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
    .line 6064
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
    .line 6285
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 6286
    const-string v0, "com.google.glass.companion.MutableProto$Location"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Location;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 6288
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6173
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 6174
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 6177
    :goto_0
    return v1

    .line 6174
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 6176
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6345
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->newBuilder()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5790
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->newBuilderForType()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6349
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Location;->newBuilder(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5790
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
    .line 6278
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

    .line 6182
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getSerializedSize()I

    .line 6183
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 6184
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6186
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 6187
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6189
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 6190
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 6192
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 6193
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6195
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 6196
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 6198
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 6199
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 6201
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 6202
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 6204
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 6205
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6207
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 6208
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6210
    :cond_8
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 6211
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getLevelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6213
    :cond_9
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 6214
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6216
    :cond_a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 6217
    return-void
.end method

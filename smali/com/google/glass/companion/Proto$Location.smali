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
    .line 9245
    new-instance v0, Lcom/google/glass/companion/Proto$Location$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 9617
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 10350
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Location;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    .line 10351
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;->initFields()V

    .line 10352
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

    .line 9148
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9506
    iput-byte v7, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 9554
    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 9149
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Location;->initFields()V

    .line 9150
    const/4 v3, 0x0

    .line 9151
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 9153
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 9157
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 9158
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 9159
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 9160
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 9165
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$Location;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 9167
    const/4 v1, 0x1

    goto :goto_0

    .line 9162
    :sswitch_0
    const/4 v1, 0x1

    .line 9163
    goto :goto_0

    .line 9172
    :sswitch_1
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9173
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 9229
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 9230
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9235
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    .line 9236
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 9240
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 9242
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->makeExtensionsImmutable()V

    throw v7

    .line 9177
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_3
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9178
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 9231
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 9232
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9182
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_5
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9183
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    goto :goto_0

    .line 9187
    :sswitch_4
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9188
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    goto :goto_0

    .line 9192
    :sswitch_5
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9193
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    goto :goto_0

    .line 9197
    :sswitch_6
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9198
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    goto/16 :goto_0

    .line 9202
    :sswitch_7
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9203
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    goto/16 :goto_0

    .line 9207
    :sswitch_8
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9208
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    goto/16 :goto_0

    .line 9212
    :sswitch_9
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9213
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    goto/16 :goto_0

    .line 9217
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9218
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9219
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9223
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_b
    iget v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 9224
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 9236
    .end local v4           #tag:I
    :cond_1
    :try_start_6
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 9240
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 9242
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->makeExtensionsImmutable()V

    .line 9244
    return-void

    .line 9237
    :catch_2
    move-exception v7

    .line 9240
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 9237
    :catch_3
    move-exception v8

    .line 9240
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 9160
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
    .line 9124
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Location;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9130
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9506
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 9554
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 9131
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 9132
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Location;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9506
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 9554
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 9133
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000(Lcom/google/glass/companion/Proto$Location;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9124
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/google/glass/companion/Proto$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$8902(Lcom/google/glass/companion/Proto$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    return-wide p1
.end method

.method static synthetic access$9002(Lcom/google/glass/companion/Proto$Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    return p1
.end method

.method static synthetic access$9102(Lcom/google/glass/companion/Proto$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    return-wide p1
.end method

.method static synthetic access$9202(Lcom/google/glass/companion/Proto$Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    return p1
.end method

.method static synthetic access$9302(Lcom/google/glass/companion/Proto$Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    return p1
.end method

.method static synthetic access$9402(Lcom/google/glass/companion/Proto$Location;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    return-wide p1
.end method

.method static synthetic access$9502(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    return p1
.end method

.method static synthetic access$9602(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    return p1
.end method

.method static synthetic access$9700(Lcom/google/glass/companion/Proto$Location;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9124
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/google/glass/companion/Proto$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    return p1
.end method

.method static synthetic access$9902(Lcom/google/glass/companion/Proto$Location;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9124
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 9137
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 9494
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 9495
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 9496
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 9497
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 9498
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 9499
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 9500
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 9501
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 9502
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 9503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 9504
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 9505
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 9679
    #calls: Lcom/google/glass/companion/Proto$Location$Builder;->create()Lcom/google/glass/companion/Proto$Location$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Location$Builder;->access$8600()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 9682
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
    .line 9659
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
    .line 9665
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
    .line 9629
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
    .line 9635
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
    .line 9670
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
    .line 9676
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
    .line 9649
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
    .line 9655
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
    .line 9639
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
    .line 9645
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
    .line 9303
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 9318
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 9333
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 9141
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->defaultInstance:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9124
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 9273
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9432
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 9433
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9434
    check-cast v1, Ljava/lang/String;

    .line 9442
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 9436
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9438
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9439
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9440
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9442
    goto :goto_0
.end method

.method public getLevelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 9454
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 9455
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9456
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9459
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;

    .line 9462
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
    .line 9490
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 9288
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
    .line 9257
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSatellitesUsedInFix()I
    .locals 1

    .prologue
    .line 9386
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

    .line 9556
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    .line 9557
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 9606
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 9559
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 9560
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 9561
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 9564
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 9565
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 9568
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 9569
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 9572
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_4

    .line 9573
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 9576
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 9577
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 9580
    :cond_5
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 9581
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 9584
    :cond_6
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 9585
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9588
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 9589
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9592
    :cond_8
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 9593
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9596
    :cond_9
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 9597
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getLevelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9600
    :cond_a
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 9601
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9604
    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 9605
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedSerializedSize:I

    move v1, v0

    .line 9606
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 9348
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 9363
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    return-wide v0
.end method

.method public getVisibleSatellites()I
    .locals 1

    .prologue
    .line 9409
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    return v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    .line 9297
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
    .line 9312
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
    .line 9327
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

    .line 9267
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
    .line 9422
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
    .line 9478
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
    .line 9282
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
    .line 9376
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
    .line 9342
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
    .line 9357
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
    .line 9399
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
    .line 9620
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 9621
    const-string v0, "com.google.glass.companion.MutableProto$Location"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Location;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 9623
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Location;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 9508
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    .line 9509
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 9512
    :goto_0
    return v1

    .line 9509
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 9511
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Location;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 9680
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->newBuilder()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9124
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->newBuilderForType()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 9684
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Location;->newBuilder(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9124
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
    .line 9613
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

    .line 9517
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getSerializedSize()I

    .line 9518
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 9519
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 9521
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 9522
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 9524
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 9525
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 9527
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 9528
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 9530
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 9531
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 9533
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 9534
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 9536
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 9537
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 9539
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 9540
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9542
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 9543
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9545
    :cond_8
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 9546
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getLevelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9548
    :cond_9
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 9549
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9551
    :cond_a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 9552
    return-void
.end method

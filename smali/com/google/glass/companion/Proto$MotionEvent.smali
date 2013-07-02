.class public final Lcom/google/glass/companion/Proto$MotionEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$MotionEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$MotionEvent$Builder;,
        Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;,
        Lcom/google/glass/companion/Proto$MotionEvent$PointerCoordsOrBuilder;,
        Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;,
        Lcom/google/glass/companion/Proto$MotionEvent$PointerPropertiesOrBuilder;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x3

.field public static final BUTTON_STATE_FIELD_NUMBER:I = 0x8

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0xb

.field public static final DOWN_TIME_FIELD_NUMBER:I = 0x1

.field public static final EDGE_FLAGS_FIELD_NUMBER:I = 0xc

.field public static final EVENT_TIME_FIELD_NUMBER:I = 0x2

.field public static final FLAGS_FIELD_NUMBER:I = 0xe

.field public static final META_STATE_FIELD_NUMBER:I = 0x7

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINTER_COORDS_FIELD_NUMBER:I = 0x6

.field public static final POINTER_COUNT_FIELD_NUMBER:I = 0x4

.field public static final POINTER_PROPERTIES_FIELD_NUMBER:I = 0x5

.field public static final SOURCE_FIELD_NUMBER:I = 0xd

.field public static final X_PRECISION_FIELD_NUMBER:I = 0x9

.field public static final Y_PRECISION_FIELD_NUMBER:I = 0xa

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private action_:I

.field private bitField0_:I

.field private buttonState_:I

.field private deviceId_:I

.field private downTime_:J

.field private edgeFlags_:I

.field private eventTime_:J

.field private flags_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private metaState_:I

.field private pointerCoords_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private pointerCount_:I

.field private pointerProperties_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation
.end field

.field private source_:I

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private xPrecision_:F

.field private yPrecision_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4099
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 5955
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 6936
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 6937
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent;->initFields()V

    .line 6938
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
    const/4 v6, -0x1

    const/16 v9, 0x20

    const/16 v8, 0x10

    .line 3976
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5823
    iput-byte v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedIsInitialized:B

    .line 5880
    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedSerializedSize:I

    .line 3977
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent;->initFields()V

    .line 3978
    const/4 v2, 0x0

    .line 3979
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v5

    .line 3981
    .local v5, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    .line 3985
    .local v4, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 3986
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 3987
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3988
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 3993
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3995
    const/4 v0, 0x1

    goto :goto_0

    .line 3990
    :sswitch_0
    const/4 v0, 0x1

    .line 3991
    goto :goto_0

    .line 4000
    :sswitch_1
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4001
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4077
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 4078
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4083
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit8 v7, v2, 0x10

    if-ne v7, v8, :cond_1

    .line 4084
    iget-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    .line 4086
    :cond_1
    and-int/lit8 v7, v2, 0x20

    if-ne v7, v9, :cond_2

    .line 4087
    iget-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    .line 4090
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 4094
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4096
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent;->makeExtensionsImmutable()V

    throw v6

    .line 4005
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_3
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4079
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 4080
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

    .line 4010
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_5
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4011
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    goto :goto_0

    .line 4015
    :sswitch_4
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4016
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    goto/16 :goto_0

    .line 4020
    :sswitch_5
    and-int/lit8 v6, v2, 0x10

    if-eq v6, v8, :cond_3

    .line 4021
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    .line 4022
    or-int/lit8 v2, v2, 0x10

    .line 4024
    :cond_3
    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    sget-object v7, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4028
    :sswitch_6
    and-int/lit8 v6, v2, 0x20

    if-eq v6, v9, :cond_4

    .line 4029
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    .line 4030
    or-int/lit8 v2, v2, 0x20

    .line 4032
    :cond_4
    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    sget-object v7, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4036
    :sswitch_7
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4037
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    goto/16 :goto_0

    .line 4041
    :sswitch_8
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4042
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    goto/16 :goto_0

    .line 4046
    :sswitch_9
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4047
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    goto/16 :goto_0

    .line 4051
    :sswitch_a
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4052
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    goto/16 :goto_0

    .line 4056
    :sswitch_b
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4057
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    goto/16 :goto_0

    .line 4061
    :sswitch_c
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4062
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    goto/16 :goto_0

    .line 4066
    :sswitch_d
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    goto/16 :goto_0

    .line 4071
    :sswitch_e
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 4072
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 4083
    .end local v3           #tag:I
    :cond_5
    and-int/lit8 v6, v2, 0x10

    if-ne v6, v8, :cond_6

    .line 4084
    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    .line 4086
    :cond_6
    and-int/lit8 v6, v2, 0x20

    if-ne v6, v9, :cond_7

    .line 4087
    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    .line 4090
    :cond_7
    :try_start_6
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 4094
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4096
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent;->makeExtensionsImmutable()V

    .line 4098
    return-void

    .line 4091
    :catch_2
    move-exception v6

    .line 4094
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 4091
    :catch_3
    move-exception v7

    .line 4094
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 3988
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
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
    .line 3952
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3958
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5823
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedIsInitialized:B

    .line 5880
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedSerializedSize:I

    .line 3959
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 3960
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3961
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5823
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedIsInitialized:B

    .line 5880
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedSerializedSize:I

    .line 3961
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$4902(Lcom/google/glass/companion/Proto$MotionEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    return-wide p1
.end method

.method static synthetic access$5002(Lcom/google/glass/companion/Proto$MotionEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    return-wide p1
.end method

.method static synthetic access$5102(Lcom/google/glass/companion/Proto$MotionEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    return p1
.end method

.method static synthetic access$5202(Lcom/google/glass/companion/Proto$MotionEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    return p1
.end method

.method static synthetic access$5300(Lcom/google/glass/companion/Proto$MotionEvent;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3952
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/glass/companion/Proto$MotionEvent;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput-object p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/google/glass/companion/Proto$MotionEvent;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3952
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/glass/companion/Proto$MotionEvent;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput-object p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/google/glass/companion/Proto$MotionEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    return p1
.end method

.method static synthetic access$5602(Lcom/google/glass/companion/Proto$MotionEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    return p1
.end method

.method static synthetic access$5702(Lcom/google/glass/companion/Proto$MotionEvent;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    return p1
.end method

.method static synthetic access$5802(Lcom/google/glass/companion/Proto$MotionEvent;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    return p1
.end method

.method static synthetic access$5902(Lcom/google/glass/companion/Proto$MotionEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    return p1
.end method

.method static synthetic access$6002(Lcom/google/glass/companion/Proto$MotionEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    return p1
.end method

.method static synthetic access$6102(Lcom/google/glass/companion/Proto$MotionEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    return p1
.end method

.method static synthetic access$6202(Lcom/google/glass/companion/Proto$MotionEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    return p1
.end method

.method static synthetic access$6302(Lcom/google/glass/companion/Proto$MotionEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    return p1
.end method

.method static synthetic access$6400(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3952
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 3965
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method private initFields()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5808
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 5809
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 5810
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 5811
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 5812
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    .line 5813
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    .line 5814
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 5815
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 5816
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 5817
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 5818
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 5819
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 5820
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 5821
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 5822
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6017
    #calls: Lcom/google/glass/companion/Proto$MotionEvent$Builder;->create()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->access$4700()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6020
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent;->newBuilder()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5997
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6003
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5967
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5973
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6008
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6014
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5987
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5993
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5977
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5983
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 5579
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    return v0
.end method

.method public getButtonState()I
    .locals 1

    .prologue
    .line 5714
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 3969
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3952
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 5759
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .prologue
    .line 5549
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    return-wide v0
.end method

.method public getEdgeFlags()I
    .locals 1

    .prologue
    .line 5774
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 5564
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 5804
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    return v0
.end method

.method public getMetaState()I
    .locals 1

    .prologue
    .line 5699
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4111
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPointerCoords(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "index"

    .prologue
    .line 5677
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public getPointerCoordsCount()I
    .locals 1

    .prologue
    .line 5671
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPointerCoordsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5658
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    return-object v0
.end method

.method public getPointerCoordsOrBuilder(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoordsOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 5684
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoordsOrBuilder;

    return-object v0
.end method

.method public getPointerCoordsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoordsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5665
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 5594
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    return v0
.end method

.method public getPointerProperties(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "index"

    .prologue
    .line 5638
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public getPointerPropertiesCount()I
    .locals 1

    .prologue
    .line 5628
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPointerPropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5607
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    return-object v0
.end method

.method public getPointerPropertiesOrBuilder(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerPropertiesOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 5649
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerPropertiesOrBuilder;

    return-object v0
.end method

.method public getPointerPropertiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerPropertiesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5618
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 5882
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedSerializedSize:I

    .line 5883
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 5944
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 5885
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 5886
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 5887
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 5890
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_2

    .line 5891
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 5894
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_3

    .line 5895
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5898
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_4

    .line 5899
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5902
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 5903
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5902
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5906
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 5907
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5906
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5910
    :cond_6
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_7

    .line 5911
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5914
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_8

    .line 5915
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5918
    :cond_8
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_9

    .line 5919
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v1, v3

    .line 5922
    :cond_9
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_a

    .line 5923
    const/16 v3, 0xa

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v1, v3

    .line 5926
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_b

    .line 5927
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5930
    :cond_b
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_c

    .line 5931
    const/16 v3, 0xc

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5934
    :cond_c
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_d

    .line 5935
    const/16 v3, 0xd

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5938
    :cond_d
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_e

    .line 5939
    const/16 v3, 0xe

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5942
    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 5943
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedSerializedSize:I

    move v2, v1

    .line 5944
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 5789
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    return v0
.end method

.method public getXPrecision()F
    .locals 1

    .prologue
    .line 5729
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    return v0
.end method

.method public getYPrecision()F
    .locals 1

    .prologue
    .line 5744
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    return v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 5573
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method public hasButtonState()Z
    .locals 2

    .prologue
    .line 5708
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 5753
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method public hasDownTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5543
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEdgeFlags()Z
    .locals 2

    .prologue
    .line 5768
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method public hasEventTime()Z
    .locals 2

    .prologue
    .line 5558
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method public hasFlags()Z
    .locals 2

    .prologue
    .line 5798
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMetaState()Z
    .locals 2

    .prologue
    .line 5693
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method public hasPointerCount()Z
    .locals 2

    .prologue
    .line 5588
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 5783
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method public hasXPrecision()Z
    .locals 2

    .prologue
    .line 5723
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method public hasYPrecision()Z
    .locals 2

    .prologue
    .line 5738
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5958
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 5959
    const-string v0, "com.google.glass.companion.MutableProto$MotionEvent"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$MotionEvent;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 5961
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 5825
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedIsInitialized:B

    .line 5826
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 5829
    :goto_0
    return v1

    .line 5826
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5828
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6018
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent;->newBuilder()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3952
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent;->newBuilderForType()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6022
    invoke-static {p0}, Lcom/google/glass/companion/Proto$MotionEvent;->newBuilder(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3952
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent;->toBuilder()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

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
    .line 5951
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5834
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent;->getSerializedSize()I

    .line 5835
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    .line 5836
    iget-wide v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 5838
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 5839
    iget-wide v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 5841
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 5842
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5844
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_3

    .line 5845
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5847
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 5848
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5850
    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 5851
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5850
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5853
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    .line 5854
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5856
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    .line 5857
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5859
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_8

    .line 5860
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5862
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_9

    .line 5863
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5865
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_a

    .line 5866
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5868
    :cond_a
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_b

    .line 5869
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5871
    :cond_b
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_c

    .line 5872
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5874
    :cond_c
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_d

    .line 5875
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5877
    :cond_d
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 5878
    return-void
.end method

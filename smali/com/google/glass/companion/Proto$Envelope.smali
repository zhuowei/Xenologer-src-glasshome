.class public final Lcom/google/glass/companion/Proto$Envelope;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$EnvelopeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Envelope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Envelope$Builder;
    }
.end annotation


# static fields
.field public static final API_REQUEST_C2G_FIELD_NUMBER:I = 0x12

.field public static final API_RESPONSE_G2C_FIELD_NUMBER:I = 0x13

.field public static final COMMAND_FIELD_NUMBER:I = 0x10

.field public static final COMPANION_INFO_FIELD_NUMBER:I = 0xd

.field public static final ERROR_FIELD_NUMBER:I = 0xe

.field public static final LOCATION_MESSAGE_C2G_FIELD_NUMBER:I = 0x7

.field public static final LOCATION_REQUEST_G2C_FIELD_NUMBER:I = 0x6

.field public static final MESSAGE_C2G_FIELD_NUMBER:I = 0x8

.field public static final NAVIGATION_REQUEST_C2G_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$Envelope;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREENSHOT_FIELD_NUMBER:I = 0xf

.field public static final SERIAL_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final SETUP_WIFI_C2G_FIELD_NUMBER:I = 0xc

.field public static final TIMELINE_ITEM_FIELD_NUMBER:I = 0x5

.field public static final TIMELINE_ITEM_RESPONSE_C2G_FIELD_NUMBER:I = 0x11

.field public static final TIMEZONE_C2G_FIELD_NUMBER:I = 0x9

.field public static final TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final UPTIME_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final URL_G2C_FIELD_NUMBER:I = 0xb

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

.field private apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

.field private bitField0_:I

.field private command_:Lcom/google/glass/companion/Proto$Command;

.field private companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

.field private error_:Lcom/google/glass/companion/Proto$Error;

.field private locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

.field private locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messageC2G_:Ljava/lang/Object;

.field private navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

.field private screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

.field private serialNumber_:I

.field private setupWifiC2G_:Ljava/lang/Object;

.field private timeMillis_:J

.field private timelineItemResponseC2G_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$TimelineItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field private timelineItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private timezoneC2G_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private uptimeMillis_:J

.field private urlG2C_:Ljava/lang/Object;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 655
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    .line 1526
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 3614
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    .line 3615
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;->initFields()V

    .line 3616
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 13
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/high16 v12, 0x1

    const v11, 0x8000

    const/16 v10, 0x20

    const/16 v9, 0x10

    .line 435
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1325
    iput-byte v7, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1431
    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 436
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope;->initFields()V

    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 440
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 444
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 445
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_17

    .line 446
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 447
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 452
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$Envelope;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 454
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    :sswitch_0
    const/4 v0, 0x1

    .line 450
    goto :goto_0

    .line 459
    :sswitch_1
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 460
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 633
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 634
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit8 v8, v2, 0x10

    if-ne v8, v9, :cond_1

    .line 640
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 642
    :cond_1
    and-int/lit8 v8, v2, 0x20

    if-ne v8, v10, :cond_2

    .line 643
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 646
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 650
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 652
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->makeExtensionsImmutable()V

    throw v7

    .line 464
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_3
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 465
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 635
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 636
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 469
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_5
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 470
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    goto :goto_0

    .line 474
    :sswitch_4
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 475
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    goto/16 :goto_0

    .line 479
    :sswitch_5
    and-int/lit8 v7, v2, 0x10

    if-eq v7, v9, :cond_3

    .line 480
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 481
    or-int/lit8 v2, v2, 0x10

    .line 483
    :cond_3
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    sget-object v8, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 487
    :sswitch_6
    const/4 v3, 0x0

    .line 488
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v7, v7, 0x10

    if-ne v7, v9, :cond_4

    .line 489
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$LocationRequest;->toBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v3

    .line 491
    :cond_4
    sget-object v7, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$LocationRequest;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 492
    if-eqz v3, :cond_5

    .line 493
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v3, v7}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 494
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 496
    :cond_5
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 500
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    :sswitch_7
    const/4 v3, 0x0

    .line 501
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v7, v7, 0x20

    if-ne v7, v10, :cond_6

    .line 502
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$LocationMessage;->toBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v3

    .line 504
    :cond_6
    sget-object v7, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$LocationMessage;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 505
    if-eqz v3, :cond_7

    .line 506
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v3, v7}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 507
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 509
    :cond_7
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 513
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    :sswitch_8
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 514
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 518
    :sswitch_9
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 519
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 523
    :sswitch_a
    const/4 v3, 0x0

    .line 524
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v7, v7, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_8

    .line 525
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$NavigationRequest;->toBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v3

    .line 527
    :cond_8
    sget-object v7, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$NavigationRequest;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 528
    if-eqz v3, :cond_9

    .line 529
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v3, v7}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    .line 530
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 532
    :cond_9
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 536
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    :sswitch_b
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 537
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 541
    :sswitch_c
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 542
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 546
    :sswitch_d
    const/4 v3, 0x0

    .line 547
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v7, v7, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_a

    .line 548
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$CompanionInfo;->toBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v3

    .line 550
    :cond_a
    sget-object v7, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$CompanionInfo;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 551
    if-eqz v3, :cond_b

    .line 552
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v3, v7}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 553
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 555
    :cond_b
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 559
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    :sswitch_e
    const/4 v3, 0x0

    .line 560
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$Error$Builder;
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v7, v7, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_c

    .line 561
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$Error;->toBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v3

    .line 563
    :cond_c
    sget-object v7, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$Error;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 564
    if-eqz v3, :cond_d

    .line 565
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v3, v7}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    .line 566
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Error$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Error;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 568
    :cond_d
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 572
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$Error$Builder;
    :sswitch_f
    const/4 v3, 0x0

    .line 573
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v7, v7, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_e

    .line 574
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$ScreenShot;->toBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v3

    .line 576
    :cond_e
    sget-object v7, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$ScreenShot;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 577
    if-eqz v3, :cond_f

    .line 578
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v3, v7}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    .line 579
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 581
    :cond_f
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 585
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    :sswitch_10
    const/4 v3, 0x0

    .line 586
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$Command$Builder;
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v7, v7, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_10

    .line 587
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$Command;->toBuilder()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v3

    .line 589
    :cond_10
    sget-object v7, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$Command;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 590
    if-eqz v3, :cond_11

    .line 591
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v3, v7}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    .line 592
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Command$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Command;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 594
    :cond_11
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 598
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$Command$Builder;
    :sswitch_11
    and-int/lit8 v7, v2, 0x20

    if-eq v7, v10, :cond_12

    .line 599
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 600
    or-int/lit8 v2, v2, 0x20

    .line 602
    :cond_12
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    sget-object v8, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 606
    :sswitch_12
    const/4 v3, 0x0

    .line 607
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/2addr v7, v11

    if-ne v7, v11, :cond_13

    .line 608
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$ApiRequest;->toBuilder()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v3

    .line 610
    :cond_13
    sget-object v7, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$ApiRequest;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 611
    if-eqz v3, :cond_14

    .line 612
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v3, v7}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 613
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 615
    :cond_14
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/2addr v7, v11

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 619
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    :sswitch_13
    const/4 v3, 0x0

    .line 620
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/2addr v7, v12

    if-ne v7, v12, :cond_15

    .line 621
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$ApiResponse;->toBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v3

    .line 623
    :cond_15
    sget-object v7, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/glass/companion/Proto$ApiResponse;

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 624
    if-eqz v3, :cond_16

    .line 625
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v3, v7}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 626
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 628
    :cond_16
    iget v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/2addr v7, v12

    iput v7, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 639
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .end local v4           #tag:I
    :cond_17
    and-int/lit8 v7, v2, 0x10

    if-ne v7, v9, :cond_18

    .line 640
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 642
    :cond_18
    and-int/lit8 v7, v2, 0x20

    if-ne v7, v10, :cond_19

    .line 643
    iget-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 646
    :cond_19
    :try_start_6
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 650
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 652
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->makeExtensionsImmutable()V

    .line 654
    return-void

    .line 647
    :catch_2
    move-exception v7

    .line 650
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 647
    :catch_3
    move-exception v8

    .line 650
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
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
    .line 411
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Envelope;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 417
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1325
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1431
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 418
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 419
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Envelope;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 420
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1325
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1431
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 420
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/glass/companion/Proto$Envelope;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    return p1
.end method

.method static synthetic access$2300(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/companion/Proto$Envelope;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/glass/companion/Proto$Envelope;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/glass/companion/Proto$Envelope;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/glass/companion/Proto$Envelope;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/companion/Proto$Envelope;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/companion/Proto$Envelope;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 1305
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    .line 1306
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 1307
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 1308
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 1309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 1310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 1311
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1312
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 1314
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1315
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1318
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1319
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 1320
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1321
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 1322
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1323
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1324
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1588
    #calls: Lcom/google/glass/companion/Proto$Envelope$Builder;->create()Lcom/google/glass/companion/Proto$Envelope$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope$Builder;->access$100()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1591
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->newBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1568
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1574
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1538
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1544
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1579
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1585
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1558
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1564
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1548
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1554
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method


# virtual methods
.method public getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public getCommand()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public getMessageC2G()Ljava/lang/String;
    .locals 4

    .prologue
    .line 945
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 946
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 947
    check-cast v1, Ljava/lang/String;

    .line 955
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 949
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 951
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 953
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 955
    goto :goto_0
.end method

.method public getMessageC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 967
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 968
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 969
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 972
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 975
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

.method public getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$Envelope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1433
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 1434
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1515
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1436
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1437
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1438
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1441
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 1442
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1445
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 1446
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1449
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4

    .line 1450
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1453
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1454
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1453
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1457
    :cond_5
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v8, :cond_6

    .line 1458
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1461
    :cond_6
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    .line 1462
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1465
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_8

    .line 1466
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1469
    :cond_8
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_9

    .line 1470
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1473
    :cond_9
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a

    .line 1474
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1477
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b

    .line 1478
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getUrlG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1481
    :cond_b
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_c

    .line 1482
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1485
    :cond_c
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d

    .line 1486
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1489
    :cond_d
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_e

    .line 1490
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1493
    :cond_e
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_f

    .line 1494
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1497
    :cond_f
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_10

    .line 1498
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1501
    :cond_10
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    .line 1502
    const/16 v4, 0x11

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1501
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1505
    :cond_11
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    const v4, 0x8000

    if-ne v3, v4, :cond_12

    .line 1506
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1509
    :cond_12
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 1510
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1513
    :cond_13
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 1514
    iput v1, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    move v2, v1

    .line 1515
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSetupWifiC2G()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1131
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1132
    check-cast v1, Ljava/lang/String;

    .line 1140
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1134
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1136
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1137
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1138
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1140
    goto :goto_0
.end method

.method public getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1153
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1154
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1157
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1160
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

.method public getTimeMillis()J
    .locals 2

    .prologue
    .line 743
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    return-wide v0
.end method

.method public getTimelineItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getTimelineItemCount()I
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTimelineItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object v0
.end method

.method public getTimelineItemOrBuilder(I)Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;

    return-object v0
.end method

.method public getTimelineItemOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object v0
.end method

.method public getTimelineItemResponseC2G(I)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "index"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public getTimelineItemResponseC2GCount()I
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTimelineItemResponseC2GList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$TimelineItemResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object v0
.end method

.method public getTimelineItemResponseC2GOrBuilder(I)Lcom/google/glass/companion/Proto$TimelineItemResponseOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponseOrBuilder;

    return-object v0
.end method

.method public getTimelineItemResponseC2GOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/companion/Proto$TimelineItemResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object v0
.end method

.method public getTimezoneC2G()Ljava/lang/String;
    .locals 4

    .prologue
    .line 999
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1000
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1001
    check-cast v1, Ljava/lang/String;

    .line 1009
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1003
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1005
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1006
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1007
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1009
    goto :goto_0
.end method

.method public getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1021
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1022
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1023
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1026
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1029
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

.method public getUptimeMillis()J
    .locals 2

    .prologue
    .line 766
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    return-wide v0
.end method

.method public getUrlG2C()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1077
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1078
    check-cast v1, Ljava/lang/String;

    .line 1086
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1080
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1082
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1084
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1086
    goto :goto_0
.end method

.method public getUrlG2CBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1098
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1099
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1100
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1103
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1106
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

.method public getVersion()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    return v0
.end method

.method public hasApiRequestC2G()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v1, 0x8000

    .line 1268
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApiResponseG2C()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v1, 0x1

    .line 1291
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCommand()Z
    .locals 2

    .prologue
    .line 1245
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionInfo()Z
    .locals 2

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasError()Z
    .locals 2

    .prologue
    .line 1199
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationMessageC2G()Z
    .locals 2

    .prologue
    .line 912
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasLocationRequestG2C()Z
    .locals 2

    .prologue
    .line 889
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasMessageC2G()Z
    .locals 2

    .prologue
    .line 935
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasNavigationRequestC2G()Z
    .locals 2

    .prologue
    .line 1043
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasScreenshot()Z
    .locals 2

    .prologue
    .line 1222
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSerialNumber()Z
    .locals 2

    .prologue
    .line 704
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasSetupWifiC2G()Z
    .locals 2

    .prologue
    .line 1120
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasTimeMillis()Z
    .locals 2

    .prologue
    .line 730
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasTimezoneC2G()Z
    .locals 2

    .prologue
    .line 989
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasUptimeMillis()Z
    .locals 2

    .prologue
    .line 756
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasUrlG2C()Z
    .locals 2

    .prologue
    .line 1066
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 681
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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
    .line 1529
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 1530
    const-string v0, "com.google.glass.companion.MutableProto$Envelope"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Envelope;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 1532
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1327
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1328
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 1365
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 1328
    goto :goto_0

    .line 1330
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasVersion()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1331
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1334
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationRequestG2C()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1335
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationRequest;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1336
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1340
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationMessageC2G()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1341
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationMessage;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1342
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1346
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1347
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1348
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1352
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasError()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1353
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getError()Lcom/google/glass/companion/Proto$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Error;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1354
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1358
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasCommand()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getCommand()Lcom/google/glass/companion/Proto$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Command;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1360
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1364
    :cond_7
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    move v2, v1

    .line 1365
    goto :goto_1
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1589
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->newBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->newBuilderForType()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1593
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Envelope;->newBuilder(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->toBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

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
    .line 1522
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
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1370
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSerializedSize()I

    .line 1371
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1372
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1374
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 1375
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1377
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 1378
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1380
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 1381
    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1383
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1384
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    .line 1387
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1389
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 1390
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1392
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 1393
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1395
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 1396
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1398
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 1399
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1401
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 1402
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getUrlG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1404
    :cond_a
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 1405
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1407
    :cond_b
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 1408
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1410
    :cond_c
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 1411
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1413
    :cond_d
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 1414
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1416
    :cond_e
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 1417
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1419
    :cond_f
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 1420
    const/16 v2, 0x11

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1422
    :cond_10
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_11

    .line 1423
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1425
    :cond_11
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 1426
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1428
    :cond_12
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 1429
    return-void
.end method

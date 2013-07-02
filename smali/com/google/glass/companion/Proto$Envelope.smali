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

.field public static final MOTION_C2G_FIELD_NUMBER:I = 0x14

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

.field private motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

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
    .line 689
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    .line 1591
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 3784
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    .line 3785
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;->initFields()V

    .line 3786
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
    .line 452
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1383
    const/4 v8, -0x1

    iput-byte v8, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1492
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 453
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope;->initFields()V

    .line 454
    const/4 v3, 0x0

    .line 455
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v7

    .line 457
    .local v7, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v6

    .line 461
    .local v6, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 462
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_19

    .line 463
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 464
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 469
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/glass/companion/Proto$Envelope;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 471
    const/4 v1, 0x1

    goto :goto_0

    .line 466
    :sswitch_0
    const/4 v1, 0x1

    .line 467
    goto :goto_0

    .line 476
    :sswitch_1
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 477
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 667
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 668
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v3, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_1

    .line 674
    iget-object v9, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 676
    :cond_1
    and-int/lit8 v9, v3, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_2

    .line 677
    iget-object v9, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 680
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 684
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 686
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->makeExtensionsImmutable()V

    throw v8

    .line 481
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_3
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 482
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 669
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 670
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 486
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_5
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 487
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    goto :goto_0

    .line 491
    :sswitch_4
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 492
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    goto/16 :goto_0

    .line 496
    :sswitch_5
    and-int/lit8 v8, v3, 0x10

    const/16 v9, 0x10

    if-eq v8, v9, :cond_3

    .line 497
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 498
    or-int/lit8 v3, v3, 0x10

    .line 500
    :cond_3
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    sget-object v9, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 504
    :sswitch_6
    const/4 v4, 0x0

    .line 505
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v8, v8, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    .line 506
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$LocationRequest;->toBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v4

    .line 508
    :cond_4
    sget-object v8, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$LocationRequest;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 509
    if-eqz v4, :cond_5

    .line 510
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 511
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 513
    :cond_5
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 517
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    :sswitch_7
    const/4 v4, 0x0

    .line 518
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v8, v8, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_6

    .line 519
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$LocationMessage;->toBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v4

    .line 521
    :cond_6
    sget-object v8, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$LocationMessage;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 522
    if-eqz v4, :cond_7

    .line 523
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 524
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 526
    :cond_7
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 530
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 531
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 532
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 536
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 537
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 538
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 542
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_a
    const/4 v4, 0x0

    .line 543
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v8, v8, 0x100

    const/16 v9, 0x100

    if-ne v8, v9, :cond_8

    .line 544
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$NavigationRequest;->toBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v4

    .line 546
    :cond_8
    sget-object v8, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$NavigationRequest;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 547
    if-eqz v4, :cond_9

    .line 548
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    .line 549
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 551
    :cond_9
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 555
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 556
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 557
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 561
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 562
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 563
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 567
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_d
    const/4 v4, 0x0

    .line 568
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v8, v8, 0x800

    const/16 v9, 0x800

    if-ne v8, v9, :cond_a

    .line 569
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$CompanionInfo;->toBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v4

    .line 571
    :cond_a
    sget-object v8, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$CompanionInfo;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 572
    if-eqz v4, :cond_b

    .line 573
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 574
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 576
    :cond_b
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 580
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    :sswitch_e
    const/4 v4, 0x0

    .line 581
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$Error$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v8, v8, 0x1000

    const/16 v9, 0x1000

    if-ne v8, v9, :cond_c

    .line 582
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$Error;->toBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v4

    .line 584
    :cond_c
    sget-object v8, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$Error;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 585
    if-eqz v4, :cond_d

    .line 586
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    .line 587
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$Error$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Error;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 589
    :cond_d
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 593
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$Error$Builder;
    :sswitch_f
    const/4 v4, 0x0

    .line 594
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v8, v8, 0x2000

    const/16 v9, 0x2000

    if-ne v8, v9, :cond_e

    .line 595
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$ScreenShot;->toBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v4

    .line 597
    :cond_e
    sget-object v8, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$ScreenShot;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 598
    if-eqz v4, :cond_f

    .line 599
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    .line 600
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 602
    :cond_f
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 606
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    :sswitch_10
    const/4 v4, 0x0

    .line 607
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$Command$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v8, v8, 0x4000

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_10

    .line 608
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$Command;->toBuilder()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v4

    .line 610
    :cond_10
    sget-object v8, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$Command;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 611
    if-eqz v4, :cond_11

    .line 612
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    .line 613
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$Command$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Command;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 615
    :cond_11
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 619
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$Command$Builder;
    :sswitch_11
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-eq v8, v9, :cond_12

    .line 620
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 621
    or-int/lit8 v3, v3, 0x20

    .line 623
    :cond_12
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    sget-object v9, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 627
    :sswitch_12
    const/4 v4, 0x0

    .line 628
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const v9, 0x8000

    and-int/2addr v8, v9

    const v9, 0x8000

    if-ne v8, v9, :cond_13

    .line 629
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$ApiRequest;->toBuilder()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v4

    .line 631
    :cond_13
    sget-object v8, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$ApiRequest;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 632
    if-eqz v4, :cond_14

    .line 633
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 634
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 636
    :cond_14
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const v9, 0x8000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 640
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    :sswitch_13
    const/4 v4, 0x0

    .line 641
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v9, 0x1

    and-int/2addr v8, v9

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_15

    .line 642
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$ApiResponse;->toBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v4

    .line 644
    :cond_15
    sget-object v8, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$ApiResponse;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 645
    if-eqz v4, :cond_16

    .line 646
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 647
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 649
    :cond_16
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v9, 0x1

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 653
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    :sswitch_14
    const/4 v4, 0x0

    .line 654
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v9, 0x2

    and-int/2addr v8, v9

    const/high16 v9, 0x2

    if-ne v8, v9, :cond_17

    .line 655
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$MotionEvent;->toBuilder()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v4

    .line 657
    :cond_17
    sget-object v8, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/Proto$MotionEvent;

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 658
    if-eqz v4, :cond_18

    .line 659
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v4, v8}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 660
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 662
    :cond_18
    iget v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v9, 0x2

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 673
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .end local v5           #tag:I
    :cond_19
    and-int/lit8 v8, v3, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_1a

    .line 674
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 676
    :cond_1a
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_1b

    .line 677
    iget-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 680
    :cond_1b
    :try_start_6
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 684
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 686
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->makeExtensionsImmutable()V

    .line 688
    return-void

    .line 681
    :catch_2
    move-exception v8

    .line 684
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v8

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 681
    :catch_3
    move-exception v9

    .line 684
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v8

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 464
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
        0xa2 -> :sswitch_14
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
    .line 428
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Envelope;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 434
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1383
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1492
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 435
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Envelope;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 437
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1383
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1492
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 437
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/glass/companion/Proto$Envelope;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    return p1
.end method

.method static synthetic access$2400(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/companion/Proto$Envelope;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/glass/companion/Proto$Envelope;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/glass/companion/Proto$Envelope;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/glass/companion/Proto$Envelope;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/companion/Proto$Envelope;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/companion/Proto$Envelope;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 1362
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    .line 1363
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 1364
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 1365
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 1366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 1367
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 1368
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1369
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 1371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1372
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1374
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1375
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1376
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 1377
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1378
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 1379
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1380
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1381
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent;->getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 1382
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1653
    #calls: Lcom/google/glass/companion/Proto$Envelope$Builder;->create()Lcom/google/glass/companion/Proto$Envelope$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope$Builder;->access$100()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1656
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
    .line 1633
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
    .line 1639
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
    .line 1603
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
    .line 1609
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
    .line 1644
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
    .line 1650
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
    .line 1623
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
    .line 1629
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
    .line 1613
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
    .line 1619
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
    .line 1312
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public getCommand()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public getMessageC2G()Ljava/lang/String;
    .locals 4

    .prologue
    .line 979
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 980
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 981
    check-cast v1, Ljava/lang/String;

    .line 989
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 983
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 985
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 987
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 989
    goto :goto_0
.end method

.method public getMessageC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 1002
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1003
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1006
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 1009
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

.method public getMotionC2G()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 1087
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
    .line 701
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 748
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

    .line 1494
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 1495
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1580
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1497
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1498
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1499
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1502
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 1503
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1506
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 1507
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1510
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4

    .line 1511
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1514
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1515
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1518
    :cond_5
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v8, :cond_6

    .line 1519
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1522
    :cond_6
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    .line 1523
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1526
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_8

    .line 1527
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1530
    :cond_8
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_9

    .line 1531
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1534
    :cond_9
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a

    .line 1535
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1538
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b

    .line 1539
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getUrlG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1542
    :cond_b
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_c

    .line 1543
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1546
    :cond_c
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d

    .line 1547
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1550
    :cond_d
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_e

    .line 1551
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1554
    :cond_e
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_f

    .line 1555
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1558
    :cond_f
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_10

    .line 1559
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1562
    :cond_10
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    .line 1563
    const/16 v4, 0x11

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1562
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1566
    :cond_11
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    const v4, 0x8000

    if-ne v3, v4, :cond_12

    .line 1567
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1570
    :cond_12
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 1571
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1574
    :cond_13
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v4, 0x2

    and-int/2addr v3, v4

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_14

    .line 1575
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1578
    :cond_14
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 1579
    iput v1, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    move v2, v1

    .line 1580
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSetupWifiC2G()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1165
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1166
    check-cast v1, Ljava/lang/String;

    .line 1174
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1168
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1170
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1172
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1174
    goto :goto_0
.end method

.method public getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1187
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1188
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1191
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1194
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
    .line 777
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    return-wide v0
.end method

.method public getTimelineItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getTimelineItemCount()I
    .locals 1

    .prologue
    .line 834
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
    .line 813
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object v0
.end method

.method public getTimelineItemOrBuilder(I)Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 855
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
    .line 824
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object v0
.end method

.method public getTimelineItemResponseC2G(I)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "index"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public getTimelineItemResponseC2GCount()I
    .locals 1

    .prologue
    .line 889
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
    .line 868
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object v0
.end method

.method public getTimelineItemResponseC2GOrBuilder(I)Lcom/google/glass/companion/Proto$TimelineItemResponseOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 910
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
    .line 879
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object v0
.end method

.method public getTimezoneC2G()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1034
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1035
    check-cast v1, Ljava/lang/String;

    .line 1043
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1037
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1039
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1041
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1043
    goto :goto_0
.end method

.method public getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1056
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1057
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1060
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1063
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
    .line 800
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    return-wide v0
.end method

.method public getUrlG2C()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1111
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1112
    check-cast v1, Ljava/lang/String;

    .line 1120
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1114
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1116
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1118
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1120
    goto :goto_0
.end method

.method public getUrlG2CBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1133
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1134
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1137
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1140
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
    .line 725
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    return v0
.end method

.method public hasApiRequestC2G()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v1, 0x8000

    .line 1302
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

    .line 1325
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
    .line 1279
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
    .line 1209
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
    .line 1233
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
    .line 946
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
    .line 923
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
    .line 969
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

.method public hasMotionC2G()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 1348
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

.method public hasNavigationRequestC2G()Z
    .locals 2

    .prologue
    .line 1077
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
    .line 1256
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
    .line 738
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
    .line 1154
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
    .line 764
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
    .line 1023
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
    .line 790
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
    .line 1100
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

    .line 715
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
    .line 1594
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 1595
    const-string v0, "com.google.glass.companion.MutableProto$Envelope"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Envelope;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 1597
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1385
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1386
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 1423
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 1386
    goto :goto_0

    .line 1388
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasVersion()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1389
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1392
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationRequestG2C()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1393
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationRequest;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1394
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1398
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationMessageC2G()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1399
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationMessage;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1400
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1404
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1405
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1406
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1410
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasError()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1411
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getError()Lcom/google/glass/companion/Proto$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Error;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1412
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1416
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasCommand()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1417
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getCommand()Lcom/google/glass/companion/Proto$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Command;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1418
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1422
    :cond_7
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    move v2, v1

    .line 1423
    goto :goto_1
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1654
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->newBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->newBuilderForType()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1658
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Envelope;->newBuilder(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 428
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
    .line 1587
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

    .line 1428
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSerializedSize()I

    .line 1429
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1430
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1432
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 1433
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1435
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 1436
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1438
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 1439
    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1441
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1442
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    .line 1445
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1447
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 1448
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1450
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 1451
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1453
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 1454
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1456
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 1457
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1459
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 1460
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getUrlG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1462
    :cond_a
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 1463
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1465
    :cond_b
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 1466
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1468
    :cond_c
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 1469
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1471
    :cond_d
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 1472
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1474
    :cond_e
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 1475
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1477
    :cond_f
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 1478
    const/16 v2, 0x11

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1480
    :cond_10
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_11

    .line 1481
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1483
    :cond_11
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 1484
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1486
    :cond_12
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 1487
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1489
    :cond_13
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 1490
    return-void
.end method

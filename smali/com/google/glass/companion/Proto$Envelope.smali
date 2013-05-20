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

.field private uptimeMillis_:J

.field private urlG2C_:Ljava/lang/Object;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 642
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    .line 1511
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 3598
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    .line 3599
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->defaultInstance:Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;->initFields()V

    .line 3600
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
    const/4 v5, -0x1

    const/high16 v10, 0x1

    const v9, 0x8000

    const/16 v8, 0x20

    const/16 v7, 0x10

    .line 434
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1312
    iput-byte v5, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1417
    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 435
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope;->initFields()V

    .line 436
    const/4 v2, 0x0

    .line 438
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 439
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_17

    .line 440
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 441
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 446
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/glass/companion/Proto$Envelope;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 448
    const/4 v0, 0x1

    goto :goto_0

    .line 443
    :sswitch_0
    const/4 v0, 0x1

    .line 444
    goto :goto_0

    .line 453
    :sswitch_1
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 454
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 627
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 628
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x10

    if-ne v6, v7, :cond_1

    .line 634
    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 636
    :cond_1
    and-int/lit8 v6, v2, 0x20

    if-ne v6, v8, :cond_2

    .line 637
    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 639
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->makeExtensionsImmutable()V

    throw v5

    .line 458
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 459
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 629
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 630
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 464
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    goto :goto_0

    .line 468
    :sswitch_4
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 469
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    goto :goto_0

    .line 473
    :sswitch_5
    and-int/lit8 v5, v2, 0x10

    if-eq v5, v7, :cond_3

    .line 474
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 475
    or-int/lit8 v2, v2, 0x10

    .line 477
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    sget-object v6, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 481
    :sswitch_6
    const/4 v3, 0x0

    .line 482
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-ne v5, v7, :cond_4

    .line 483
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$LocationRequest;->toBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v3

    .line 485
    :cond_4
    sget-object v5, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$LocationRequest;

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 486
    if-eqz v3, :cond_5

    .line 487
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v3, v5}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 488
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 490
    :cond_5
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 494
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    :sswitch_7
    const/4 v3, 0x0

    .line 495
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-ne v5, v8, :cond_6

    .line 496
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$LocationMessage;->toBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v3

    .line 498
    :cond_6
    sget-object v5, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$LocationMessage;

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 499
    if-eqz v3, :cond_7

    .line 500
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v3, v5}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 501
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 503
    :cond_7
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 507
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    :sswitch_8
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 508
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 512
    :sswitch_9
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 513
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 517
    :sswitch_a
    const/4 v3, 0x0

    .line 518
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_8

    .line 519
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$NavigationRequest;->toBuilder()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v3

    .line 521
    :cond_8
    sget-object v5, Lcom/google/glass/companion/Proto$NavigationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$NavigationRequest;

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 522
    if-eqz v3, :cond_9

    .line 523
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v3, v5}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    .line 524
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 526
    :cond_9
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 530
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
    :sswitch_b
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 531
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 535
    :sswitch_c
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 536
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 540
    :sswitch_d
    const/4 v3, 0x0

    .line 541
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v5, v5, 0x800

    const/16 v6, 0x800

    if-ne v5, v6, :cond_a

    .line 542
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$CompanionInfo;->toBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v3

    .line 544
    :cond_a
    sget-object v5, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$CompanionInfo;

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 545
    if-eqz v3, :cond_b

    .line 546
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v3, v5}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 547
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 549
    :cond_b
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 553
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    :sswitch_e
    const/4 v3, 0x0

    .line 554
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$Error$Builder;
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v5, v5, 0x1000

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_c

    .line 555
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$Error;->toBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v3

    .line 557
    :cond_c
    sget-object v5, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$Error;

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 558
    if-eqz v3, :cond_d

    .line 559
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v3, v5}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    .line 560
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Error$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Error;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 562
    :cond_d
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 566
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$Error$Builder;
    :sswitch_f
    const/4 v3, 0x0

    .line 567
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v5, v5, 0x2000

    const/16 v6, 0x2000

    if-ne v5, v6, :cond_e

    .line 568
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$ScreenShot;->toBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v3

    .line 570
    :cond_e
    sget-object v5, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$ScreenShot;

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 571
    if-eqz v3, :cond_f

    .line 572
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v3, v5}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    .line 573
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 575
    :cond_f
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 579
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    :sswitch_10
    const/4 v3, 0x0

    .line 580
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$Command$Builder;
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v5, v5, 0x4000

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_10

    .line 581
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$Command;->toBuilder()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v3

    .line 583
    :cond_10
    sget-object v5, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$Command;

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 584
    if-eqz v3, :cond_11

    .line 585
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v3, v5}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    .line 586
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Command$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Command;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 588
    :cond_11
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 592
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$Command$Builder;
    :sswitch_11
    and-int/lit8 v5, v2, 0x20

    if-eq v5, v8, :cond_12

    .line 593
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 594
    or-int/lit8 v2, v2, 0x20

    .line 596
    :cond_12
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    sget-object v6, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 600
    :sswitch_12
    const/4 v3, 0x0

    .line 601
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_13

    .line 602
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$ApiRequest;->toBuilder()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v3

    .line 604
    :cond_13
    sget-object v5, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$ApiRequest;

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 605
    if-eqz v3, :cond_14

    .line 606
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v3, v5}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 607
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 609
    :cond_14
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/2addr v5, v9

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 613
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    :sswitch_13
    const/4 v3, 0x0

    .line 614
    .local v3, subBuilder:Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_15

    .line 615
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$ApiResponse;->toBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v3

    .line 617
    :cond_15
    sget-object v5, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$ApiResponse;

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 618
    if-eqz v3, :cond_16

    .line 619
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v3, v5}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 620
    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 622
    :cond_16
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/2addr v5, v10

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 633
    .end local v3           #subBuilder:Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .end local v4           #tag:I
    :cond_17
    and-int/lit8 v5, v2, 0x10

    if-ne v5, v7, :cond_18

    .line 634
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 636
    :cond_18
    and-int/lit8 v5, v2, 0x20

    if-ne v5, v8, :cond_19

    .line 637
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 639
    :cond_19
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->makeExtensionsImmutable()V

    .line 641
    return-void

    .line 441
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

    .line 1312
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1417
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

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

    .line 1312
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1417
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 420
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

    .line 1292
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    .line 1293
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 1294
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 1295
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 1296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    .line 1297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    .line 1298
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1299
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 1301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1302
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1305
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1306
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 1307
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1308
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 1309
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1310
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1311
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1573
    #calls: Lcom/google/glass/companion/Proto$Envelope$Builder;->create()Lcom/google/glass/companion/Proto$Envelope$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope$Builder;->access$100()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1576
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
    .line 1553
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
    .line 1559
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
    .line 1523
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
    .line 1529
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
    .line 1564
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
    .line 1570
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
    .line 1543
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
    .line 1549
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
    .line 1533
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
    .line 1539
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method


# virtual methods
.method public getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public getCommand()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 1173
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
    .line 1196
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public getMessageC2G()Ljava/lang/String;
    .locals 4

    .prologue
    .line 932
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 933
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 934
    check-cast v1, Ljava/lang/String;

    .line 942
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 936
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 938
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 940
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 942
    goto :goto_0
.end method

.method public getMessageC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 954
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 955
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 956
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 959
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;

    .line 962
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
    .line 1040
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
    .line 654
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 701
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

    .line 1419
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    .line 1420
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1500
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1422
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1423
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1424
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1427
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 1428
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1431
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 1432
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1435
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4

    .line 1436
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1439
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1440
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1439
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1443
    :cond_5
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v8, :cond_6

    .line 1444
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1447
    :cond_6
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    .line 1448
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1451
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_8

    .line 1452
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1455
    :cond_8
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_9

    .line 1456
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1459
    :cond_9
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a

    .line 1460
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1463
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b

    .line 1464
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getUrlG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1467
    :cond_b
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_c

    .line 1468
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1471
    :cond_c
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d

    .line 1472
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1475
    :cond_d
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_e

    .line 1476
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1479
    :cond_e
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_f

    .line 1480
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1483
    :cond_f
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_10

    .line 1484
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1487
    :cond_10
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    .line 1488
    const/16 v4, 0x11

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1487
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1491
    :cond_11
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    const v4, 0x8000

    if-ne v3, v4, :cond_12

    .line 1492
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1495
    :cond_12
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 1496
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1499
    :cond_13
    iput v1, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedSerializedSize:I

    move v2, v1

    .line 1500
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSetupWifiC2G()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1118
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1119
    check-cast v1, Ljava/lang/String;

    .line 1127
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1121
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1123
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1125
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1127
    goto :goto_0
.end method

.method public getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1140
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1141
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1144
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;

    .line 1147
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
    .line 730
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    return-wide v0
.end method

.method public getTimelineItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getTimelineItemCount()I
    .locals 1

    .prologue
    .line 787
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
    .line 766
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object v0
.end method

.method public getTimelineItemOrBuilder(I)Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 808
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
    .line 777
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    return-object v0
.end method

.method public getTimelineItemResponseC2G(I)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "index"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public getTimelineItemResponseC2GCount()I
    .locals 1

    .prologue
    .line 842
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
    .line 821
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object v0
.end method

.method public getTimelineItemResponseC2GOrBuilder(I)Lcom/google/glass/companion/Proto$TimelineItemResponseOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 863
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
    .line 832
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    return-object v0
.end method

.method public getTimezoneC2G()Ljava/lang/String;
    .locals 4

    .prologue
    .line 986
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 987
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 988
    check-cast v1, Ljava/lang/String;

    .line 996
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 990
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 992
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 994
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 996
    goto :goto_0
.end method

.method public getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1009
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1010
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1013
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;

    .line 1016
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
    .line 753
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    return-wide v0
.end method

.method public getUrlG2C()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1064
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1065
    check-cast v1, Ljava/lang/String;

    .line 1073
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1067
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1069
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1071
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1073
    goto :goto_0
.end method

.method public getUrlG2CBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1085
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1086
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1087
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1090
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;

    .line 1093
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
    .line 678
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    return v0
.end method

.method public hasApiRequestC2G()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 1255
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

    .prologue
    const/high16 v1, 0x1

    .line 1278
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
    .line 1232
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
    .line 1162
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
    .line 1186
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
    .line 899
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
    .line 876
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
    .line 922
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
    .line 1030
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
    .line 1209
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
    .line 691
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
    .line 1107
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
    .line 717
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
    .line 976
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
    .line 743
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
    .line 1053
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

    .line 668
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
    .line 1514
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 1515
    const-string v0, "com.google.glass.companion.MutableProto$Envelope"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Envelope;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 1517
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Envelope;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1314
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    .line 1315
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 1352
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 1315
    goto :goto_0

    .line 1317
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasVersion()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1318
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1321
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationRequestG2C()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1322
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationRequest;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1323
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1327
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationMessageC2G()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1328
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$LocationMessage;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1329
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1333
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1334
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1335
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1339
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasError()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1340
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getError()Lcom/google/glass/companion/Proto$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Error;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1341
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1345
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->hasCommand()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1346
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getCommand()Lcom/google/glass/companion/Proto$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Command;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1347
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    goto :goto_1

    .line 1351
    :cond_7
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Envelope;->memoizedIsInitialized:B

    move v2, v1

    .line 1352
    goto :goto_1
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1574
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
    .line 1578
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
    .line 1507
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

    .line 1357
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSerializedSize()I

    .line 1358
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1359
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->version_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1361
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 1362
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1364
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 1365
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1367
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 1368
    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1370
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1371
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1373
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    .line 1374
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1376
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 1377
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1379
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 1380
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1382
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 1383
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1385
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 1386
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1388
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 1389
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getUrlG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1391
    :cond_a
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 1392
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1394
    :cond_b
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 1395
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1397
    :cond_c
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 1398
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1400
    :cond_d
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 1401
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1403
    :cond_e
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 1404
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1406
    :cond_f
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 1407
    const/16 v2, 0x11

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1406
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1409
    :cond_10
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_11

    .line 1410
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1412
    :cond_11
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 1413
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1415
    :cond_12
    return-void
.end method

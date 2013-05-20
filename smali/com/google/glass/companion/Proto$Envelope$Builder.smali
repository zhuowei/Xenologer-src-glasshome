.class public final Lcom/google/glass/companion/Proto$Envelope$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$EnvelopeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$Envelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$Envelope;",
        "Lcom/google/glass/companion/Proto$Envelope$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$EnvelopeOrBuilder;"
    }
.end annotation


# instance fields
.field private apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

.field private apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

.field private bitField0_:I

.field private command_:Lcom/google/glass/companion/Proto$Command;

.field private companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

.field private error_:Lcom/google/glass/companion/Proto$Error;

.field private locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

.field private locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1598
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2098
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 2271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 2444
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2528
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2612
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2806
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3084
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3174
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3258
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3342
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3426
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3510
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1599
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->maybeForceBuilderInitialization()V

    .line 1600
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1591
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope$Builder;->create()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1605
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTimelineItemIsMutable()V
    .locals 2

    .prologue
    .line 2101
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2102
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 2103
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2105
    :cond_0
    return-void
.end method

.method private ensureTimelineItemResponseC2GIsMutable()V
    .locals 2

    .prologue
    .line 2274
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 2275
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 2276
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2278
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1603
    return-void
.end method


# virtual methods
.method public addAllTimelineItem(Ljava/lang/Iterable;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;)",
            "Lcom/google/glass/companion/Proto$Envelope$Builder;"
        }
    .end annotation

    .prologue
    .line 2238
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2239
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2242
    return-object p0
.end method

.method public addAllTimelineItemResponseC2G(Ljava/lang/Iterable;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/glass/companion/Proto$TimelineItemResponse;",
            ">;)",
            "Lcom/google/glass/companion/Proto$Envelope$Builder;"
        }
    .end annotation

    .prologue
    .line 2411
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/glass/companion/Proto$TimelineItemResponse;>;"
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2412
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2415
    return-object p0
.end method

.method public addTimelineItem(ILcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2224
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2225
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2227
    return-object p0
.end method

.method public addTimelineItem(ILcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2193
    if-nez p2, :cond_0

    .line 2194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2196
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2197
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2199
    return-object p0
.end method

.method public addTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2210
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2211
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2213
    return-object p0
.end method

.method public addTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2176
    if-nez p1, :cond_0

    .line 2177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2179
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2180
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2182
    return-object p0
.end method

.method public addTimelineItemResponseC2G(ILcom/google/glass/companion/Proto$TimelineItemResponse$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2397
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2398
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->build()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2400
    return-object p0
.end method

.method public addTimelineItemResponseC2G(ILcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2366
    if-nez p2, :cond_0

    .line 2367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2369
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2370
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2372
    return-object p0
.end method

.method public addTimelineItemResponseC2G(Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2383
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2384
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->build()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2386
    return-object p0
.end method

.method public addTimelineItemResponseC2G(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2349
    if-nez p1, :cond_0

    .line 2350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2352
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2353
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2355
    return-object p0
.end method

.method public build()Lcom/google/glass/companion/Proto$Envelope;
    .locals 2

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 1661
    .local v0, result:Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1662
    invoke-static {v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1664
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$Envelope;
    .locals 9

    .prologue
    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 1668
    new-instance v1, Lcom/google/glass/companion/Proto$Envelope;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$Envelope;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 1669
    .local v1, result:Lcom/google/glass/companion/Proto$Envelope;
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1670
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1671
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1672
    or-int/lit8 v2, v2, 0x1

    .line 1674
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->version_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$302(Lcom/google/glass/companion/Proto$Envelope;I)I

    .line 1675
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1676
    or-int/lit8 v2, v2, 0x2

    .line 1678
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$402(Lcom/google/glass/companion/Proto$Envelope;I)I

    .line 1679
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1680
    or-int/lit8 v2, v2, 0x4

    .line 1682
    :cond_2
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Envelope;->access$502(Lcom/google/glass/companion/Proto$Envelope;J)J

    .line 1683
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1684
    or-int/lit8 v2, v2, 0x8

    .line 1686
    :cond_3
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Envelope;->access$602(Lcom/google/glass/companion/Proto$Envelope;J)J

    .line 1687
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1688
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 1689
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1691
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$702(Lcom/google/glass/companion/Proto$Envelope;Ljava/util/List;)Ljava/util/List;

    .line 1692
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1693
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 1694
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1696
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$802(Lcom/google/glass/companion/Proto$Envelope;Ljava/util/List;)Ljava/util/List;

    .line 1697
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1698
    or-int/lit8 v2, v2, 0x10

    .line 1700
    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$902(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1701
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1702
    or-int/lit8 v2, v2, 0x20

    .line 1704
    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1002(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1705
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1706
    or-int/lit8 v2, v2, 0x40

    .line 1708
    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1102(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1710
    or-int/lit16 v2, v2, 0x80

    .line 1712
    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1202(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1714
    or-int/lit16 v2, v2, 0x100

    .line 1716
    :cond_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1302(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1717
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1718
    or-int/lit16 v2, v2, 0x200

    .line 1720
    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1402(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1722
    or-int/lit16 v2, v2, 0x400

    .line 1724
    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1502(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 1726
    or-int/lit16 v2, v2, 0x800

    .line 1728
    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1602(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1729
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 1730
    or-int/lit16 v2, v2, 0x1000

    .line 1732
    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1702(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error;

    .line 1733
    and-int v3, v0, v5

    if-ne v3, v5, :cond_f

    .line 1734
    or-int/lit16 v2, v2, 0x2000

    .line 1736
    :cond_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1802(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1737
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 1738
    or-int/lit16 v2, v2, 0x4000

    .line 1740
    :cond_10
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1902(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command;

    .line 1741
    and-int v3, v0, v7

    if-ne v3, v7, :cond_11

    .line 1742
    or-int/2addr v2, v5

    .line 1744
    :cond_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$2002(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1745
    and-int v3, v0, v8

    if-ne v3, v8, :cond_12

    .line 1746
    or-int/2addr v2, v6

    .line 1748
    :cond_12
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$2102(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1749
    #setter for: Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$Envelope;->access$2202(Lcom/google/glass/companion/Proto$Envelope;I)I

    .line 1750
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1609
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1610
    iput v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    .line 1611
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1612
    iput v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    .line 1613
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1614
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    .line 1615
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1616
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    .line 1617
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1618
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 1619
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1620
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 1621
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1622
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1623
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1624
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1625
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 1627
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1628
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 1629
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1630
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1631
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 1633
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 1635
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1636
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1637
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1638
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 1639
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1640
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1641
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1642
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 1643
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1644
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1645
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1646
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1647
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1648
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clear()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clear()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearApiRequestC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 3504
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3506
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3507
    return-object p0
.end method

.method public clearApiResponseG2C()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 3588
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 3590
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3591
    return-object p0
.end method

.method public clearCommand()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 3420
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3422
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3423
    return-object p0
.end method

.method public clearCompanionInfo()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 3168
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3170
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3171
    return-object p0
.end method

.method public clearError()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 3252
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3254
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3255
    return-object p0
.end method

.method public clearLocationMessageC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2606
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2608
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2609
    return-object p0
.end method

.method public clearLocationRequestG2C()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2522
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2524
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2525
    return-object p0
.end method

.method public clearMessageC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2686
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2687
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2689
    return-object p0
.end method

.method public clearNavigationRequestC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2884
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2886
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2887
    return-object p0
.end method

.method public clearScreenshot()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 3336
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3338
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3339
    return-object p0
.end method

.method public clearSerialNumber()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1984
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1985
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    .line 1987
    return-object p0
.end method

.method public clearSetupWifiC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 3061
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3062
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3064
    return-object p0
.end method

.method public clearTimeMillis()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 2044
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2045
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    .line 2047
    return-object p0
.end method

.method public clearTimelineItem()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 2253
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2255
    return-object p0
.end method

.method public clearTimelineItemResponseC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2425
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 2426
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2428
    return-object p0
.end method

.method public clearTimezoneC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2783
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2784
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2786
    return-object p0
.end method

.method public clearUptimeMillis()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 2092
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2093
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    .line 2095
    return-object p0
.end method

.method public clearUrlG2C()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2964
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2965
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getUrlG2C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2967
    return-object p0
.end method

.method public clearVersion()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1936
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1937
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    .line 1939
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 1652
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope$Builder;->create()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clone()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clone()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clone()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clone()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public getCommand()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 1656
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public getMessageC2G()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2632
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2633
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2635
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2638
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getMessageC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2650
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2651
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2652
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2655
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2658
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
    .line 2825
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 1961
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    return v0
.end method

.method public getSetupWifiC2G()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3007
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3008
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3010
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3013
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3025
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3026
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3027
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3030
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3033
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
    .line 2015
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    return-wide v0
.end method

.method public getTimelineItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getTimelineItemCount()I
    .locals 1

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

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
    .line 2115
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineItemResponseC2G(I)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "index"

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public getTimelineItemResponseC2GCount()I
    .locals 1

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

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
    .line 2288
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimezoneC2G()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2729
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2730
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2732
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2735
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2747
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2748
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2749
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2752
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2755
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
    .line 2069
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    return-wide v0
.end method

.method public getUrlG2C()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2910
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2911
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2913
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2916
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getUrlG2CBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2928
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2929
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2930
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2933
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2936
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
    .line 1913
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    return v0
.end method

.method public hasApiRequestC2G()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 3435
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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
    const/high16 v1, 0x4

    .line 3519
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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
    const/high16 v1, 0x1

    .line 3351
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 3094
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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

.method public hasError()Z
    .locals 2

    .prologue
    .line 3183
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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

.method public hasLocationMessageC2G()Z
    .locals 2

    .prologue
    .line 2537
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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

.method public hasLocationRequestG2C()Z
    .locals 2

    .prologue
    .line 2453
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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

.method public hasMessageC2G()Z
    .locals 2

    .prologue
    .line 2621
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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

.method public hasNavigationRequestC2G()Z
    .locals 2

    .prologue
    .line 2815
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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

.method public hasScreenshot()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 3267
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 1951
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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
    .line 2996
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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

.method public hasTimeMillis()Z
    .locals 2

    .prologue
    .line 2002
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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
    .line 2718
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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

.method public hasUptimeMillis()Z
    .locals 2

    .prologue
    .line 2059
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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
    .line 2899
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1903
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1838
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1872
    :cond_0
    :goto_0
    return v0

    .line 1842
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasLocationRequestG2C()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1843
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$LocationRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1848
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasLocationMessageC2G()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1849
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$LocationMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1854
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasCompanionInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1855
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1860
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasError()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1861
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getError()Lcom/google/glass/companion/Proto$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Error;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1866
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasCommand()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1867
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getCommand()Lcom/google/glass/companion/Proto$Command;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Command;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1872
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 3485
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3487
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->newBuilder(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3493
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3494
    return-object p0

    .line 3490
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    goto :goto_0
.end method

.method public mergeApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 3569
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3571
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilder(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 3577
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3578
    return-object p0

    .line 3574
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    goto :goto_0
.end method

.method public mergeCommand(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 3401
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3403
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Command;->newBuilder(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Command$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3409
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3410
    return-object p0

    .line 3406
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    goto :goto_0
.end method

.method public mergeCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3148
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3150
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3156
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3157
    return-object p0

    .line 3153
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    goto :goto_0
.end method

.method public mergeError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3233
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3235
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Error;->newBuilder(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Error$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3241
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3242
    return-object p0

    .line 3238
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1754
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1834
    :cond_0
    :goto_0
    return-object p0

    .line 1755
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1756
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setVersion(I)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1758
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasSerialNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1759
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getSerialNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setSerialNumber(I)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1761
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasTimeMillis()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1762
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setTimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1764
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasUptimeMillis()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1765
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setUptimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1767
    :cond_5
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$700(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1768
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1769
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$700(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 1770
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1777
    :cond_6
    :goto_1
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$800(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1778
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1779
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$800(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 1780
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1787
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationRequestG2C()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1788
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1790
    :cond_8
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationMessageC2G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1791
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1793
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasMessageC2G()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1794
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1795
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$1100(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 1798
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasTimezoneC2G()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1799
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1800
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$1200(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 1803
    :cond_b
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasNavigationRequestC2G()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1804
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1806
    :cond_c
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasUrlG2C()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1807
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1808
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$1400(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 1811
    :cond_d
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasSetupWifiC2G()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1812
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1813
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$1500(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 1816
    :cond_e
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1817
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1819
    :cond_f
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasError()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1820
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getError()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1822
    :cond_10
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1823
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1825
    :cond_11
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasCommand()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1826
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getCommand()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeCommand(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1828
    :cond_12
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasApiRequestC2G()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1829
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1831
    :cond_13
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasApiResponseG2C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    goto/16 :goto_0

    .line 1772
    :cond_14
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 1773
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$700(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1782
    :cond_15
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 1783
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$800(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1879
    const/4 v2, 0x0

    .line 1881
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$Envelope;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$Envelope;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1886
    if-eqz v2, :cond_0

    .line 1887
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1890
    :cond_0
    return-object p0

    .line 1882
    :catch_0
    move-exception v1

    .line 1883
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    move-object v2, v0

    .line 1884
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1886
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1887
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    :cond_1
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1591
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    check-cast p1, Lcom/google/glass/companion/Proto$Envelope;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1591
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2587
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2595
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2596
    return-object p0

    .line 2592
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    goto :goto_0
.end method

.method public mergeLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2503
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2511
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2512
    return-object p0

    .line 2508
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    goto :goto_0
.end method

.method public mergeNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2865
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2867
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->newBuilder(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2873
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2874
    return-object p0

    .line 2870
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    goto :goto_0
.end method

.method public mergeScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 3317
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3319
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilder(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3325
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3326
    return-object p0

    .line 3322
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    goto :goto_0
.end method

.method public removeTimelineItem(I)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2265
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2266
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2268
    return-object p0
.end method

.method public removeTimelineItemResponseC2G(I)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2438
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2439
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2441
    return-object p0
.end method

.method public setApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3472
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->build()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3474
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3475
    return-object p0
.end method

.method public setApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3455
    if-nez p1, :cond_0

    .line 3456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3458
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3460
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3461
    return-object p0
.end method

.method public setApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3556
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->build()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 3558
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3559
    return-object p0
.end method

.method public setApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3539
    if-nez p1, :cond_0

    .line 3540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3542
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 3544
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3545
    return-object p0
.end method

.method public setCommand(Lcom/google/glass/companion/Proto$Command$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3388
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Command$Builder;->build()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3390
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3391
    return-object p0
.end method

.method public setCommand(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3371
    if-nez p1, :cond_0

    .line 3372
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3374
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3376
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3377
    return-object p0
.end method

.method public setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 3134
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->build()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3136
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3137
    return-object p0
.end method

.method public setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3116
    if-nez p1, :cond_0

    .line 3117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3119
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3121
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3122
    return-object p0
.end method

.method public setError(Lcom/google/glass/companion/Proto$Error$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 3220
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Error$Builder;->build()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3222
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3223
    return-object p0
.end method

.method public setError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3203
    if-nez p1, :cond_0

    .line 3204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3206
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3208
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3209
    return-object p0
.end method

.method public setLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 2574
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->build()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2576
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2577
    return-object p0
.end method

.method public setLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2557
    if-nez p1, :cond_0

    .line 2558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2560
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2562
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2563
    return-object p0
.end method

.method public setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 2490
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->build()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2492
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2493
    return-object p0
.end method

.method public setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2473
    if-nez p1, :cond_0

    .line 2474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2476
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2478
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2479
    return-object p0
.end method

.method public setMessageC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2670
    if-nez p1, :cond_0

    .line 2671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2673
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2674
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2676
    return-object p0
.end method

.method public setMessageC2GBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2700
    if-nez p1, :cond_0

    .line 2701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2703
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2704
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2706
    return-object p0
.end method

.method public setNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 2852
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->build()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2854
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2855
    return-object p0
.end method

.method public setNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2835
    if-nez p1, :cond_0

    .line 2836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2838
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2840
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2841
    return-object p0
.end method

.method public setScreenshot(Lcom/google/glass/companion/Proto$ScreenShot$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3304
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->build()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3306
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3307
    return-object p0
.end method

.method public setScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3287
    if-nez p1, :cond_0

    .line 3288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3290
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3292
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3293
    return-object p0
.end method

.method public setSerialNumber(I)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1971
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1972
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    .line 1974
    return-object p0
.end method

.method public setSetupWifiC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3045
    if-nez p1, :cond_0

    .line 3046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3048
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3049
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3051
    return-object p0
.end method

.method public setSetupWifiC2GBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3075
    if-nez p1, :cond_0

    .line 3076
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3078
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3079
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3081
    return-object p0
.end method

.method public setTimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2028
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2029
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    .line 2031
    return-object p0
.end method

.method public setTimelineItem(ILcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2163
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2164
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2166
    return-object p0
.end method

.method public setTimelineItem(ILcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2146
    if-nez p2, :cond_0

    .line 2147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2149
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2150
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2152
    return-object p0
.end method

.method public setTimelineItemResponseC2G(ILcom/google/glass/companion/Proto$TimelineItemResponse$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2336
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2337
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->build()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2339
    return-object p0
.end method

.method public setTimelineItemResponseC2G(ILcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2319
    if-nez p2, :cond_0

    .line 2320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2322
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2323
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2325
    return-object p0
.end method

.method public setTimezoneC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2767
    if-nez p1, :cond_0

    .line 2768
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2770
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2771
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2773
    return-object p0
.end method

.method public setTimezoneC2GBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2797
    if-nez p1, :cond_0

    .line 2798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2800
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2801
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2803
    return-object p0
.end method

.method public setUptimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2079
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2080
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    .line 2082
    return-object p0
.end method

.method public setUrlG2C(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2948
    if-nez p1, :cond_0

    .line 2949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2951
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2952
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2954
    return-object p0
.end method

.method public setUrlG2CBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2978
    if-nez p1, :cond_0

    .line 2979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2981
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2982
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2984
    return-object p0
.end method

.method public setVersion(I)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1923
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1924
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    .line 1926
    return-object p0
.end method

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
    .line 1613
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 2287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 2460
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2544
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2628
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2725
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2822
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2906
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 3003
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3100
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3190
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3274
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3358
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3442
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3526
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1614
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->maybeForceBuilderInitialization()V

    .line 1615
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1606
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope$Builder;->create()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1620
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTimelineItemIsMutable()V
    .locals 2

    .prologue
    .line 2117
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 2119
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2121
    :cond_0
    return-void
.end method

.method private ensureTimelineItemResponseC2GIsMutable()V
    .locals 2

    .prologue
    .line 2290
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 2291
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 2292
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2294
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1618
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
    .line 2254
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2255
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2258
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
    .line 2427
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/glass/companion/Proto$TimelineItemResponse;>;"
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2428
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2431
    return-object p0
.end method

.method public addTimelineItem(ILcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2240
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2241
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2243
    return-object p0
.end method

.method public addTimelineItem(ILcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2209
    if-nez p2, :cond_0

    .line 2210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2212
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2213
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2215
    return-object p0
.end method

.method public addTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2226
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2227
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2229
    return-object p0
.end method

.method public addTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2192
    if-nez p1, :cond_0

    .line 2193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2195
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2196
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2198
    return-object p0
.end method

.method public addTimelineItemResponseC2G(ILcom/google/glass/companion/Proto$TimelineItemResponse$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2413
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2414
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->build()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2416
    return-object p0
.end method

.method public addTimelineItemResponseC2G(ILcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2382
    if-nez p2, :cond_0

    .line 2383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2385
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2386
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2388
    return-object p0
.end method

.method public addTimelineItemResponseC2G(Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2399
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2400
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->build()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2402
    return-object p0
.end method

.method public addTimelineItemResponseC2G(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2365
    if-nez p1, :cond_0

    .line 2366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2368
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2369
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2371
    return-object p0
.end method

.method public build()Lcom/google/glass/companion/Proto$Envelope;
    .locals 2

    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 1676
    .local v0, result:Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1677
    invoke-static {v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1679
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1606
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

    .line 1683
    new-instance v1, Lcom/google/glass/companion/Proto$Envelope;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$Envelope;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 1684
    .local v1, result:Lcom/google/glass/companion/Proto$Envelope;
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1685
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1686
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1687
    or-int/lit8 v2, v2, 0x1

    .line 1689
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->version_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$302(Lcom/google/glass/companion/Proto$Envelope;I)I

    .line 1690
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1691
    or-int/lit8 v2, v2, 0x2

    .line 1693
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$402(Lcom/google/glass/companion/Proto$Envelope;I)I

    .line 1694
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1695
    or-int/lit8 v2, v2, 0x4

    .line 1697
    :cond_2
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Envelope;->access$502(Lcom/google/glass/companion/Proto$Envelope;J)J

    .line 1698
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1699
    or-int/lit8 v2, v2, 0x8

    .line 1701
    :cond_3
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Envelope;->access$602(Lcom/google/glass/companion/Proto$Envelope;J)J

    .line 1702
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1703
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 1704
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1706
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$702(Lcom/google/glass/companion/Proto$Envelope;Ljava/util/List;)Ljava/util/List;

    .line 1707
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1708
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 1709
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1711
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$802(Lcom/google/glass/companion/Proto$Envelope;Ljava/util/List;)Ljava/util/List;

    .line 1712
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1713
    or-int/lit8 v2, v2, 0x10

    .line 1715
    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$902(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1716
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1717
    or-int/lit8 v2, v2, 0x20

    .line 1719
    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1002(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1720
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1721
    or-int/lit8 v2, v2, 0x40

    .line 1723
    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1102(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1725
    or-int/lit16 v2, v2, 0x80

    .line 1727
    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1202(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1729
    or-int/lit16 v2, v2, 0x100

    .line 1731
    :cond_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1302(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1732
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1733
    or-int/lit16 v2, v2, 0x200

    .line 1735
    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1402(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1737
    or-int/lit16 v2, v2, 0x400

    .line 1739
    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1502(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 1741
    or-int/lit16 v2, v2, 0x800

    .line 1743
    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1602(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1744
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 1745
    or-int/lit16 v2, v2, 0x1000

    .line 1747
    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1702(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error;

    .line 1748
    and-int v3, v0, v5

    if-ne v3, v5, :cond_f

    .line 1749
    or-int/lit16 v2, v2, 0x2000

    .line 1751
    :cond_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1802(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1752
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 1753
    or-int/lit16 v2, v2, 0x4000

    .line 1755
    :cond_10
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$1902(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command;

    .line 1756
    and-int v3, v0, v7

    if-ne v3, v7, :cond_11

    .line 1757
    or-int/2addr v2, v5

    .line 1759
    :cond_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$2002(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1760
    and-int v3, v0, v8

    if-ne v3, v8, :cond_12

    .line 1761
    or-int/2addr v2, v6

    .line 1763
    :cond_12
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    #setter for: Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->access$2102(Lcom/google/glass/companion/Proto$Envelope;Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1764
    #setter for: Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$Envelope;->access$2202(Lcom/google/glass/companion/Proto$Envelope;I)I

    .line 1765
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1624
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1625
    iput v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    .line 1626
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1627
    iput v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    .line 1628
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1629
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    .line 1630
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1631
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    .line 1632
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1633
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 1634
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1635
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 1636
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1637
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1638
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1639
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1640
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 1642
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 1644
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1645
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1646
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 1648
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 1650
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1651
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1652
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1653
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 1654
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1655
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1656
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1657
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 1658
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1659
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1660
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1661
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1662
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1663
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clear()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clear()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearApiRequestC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3520
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3522
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3523
    return-object p0
.end method

.method public clearApiResponseG2C()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3604
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 3606
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3607
    return-object p0
.end method

.method public clearCommand()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 3436
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3438
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3439
    return-object p0
.end method

.method public clearCompanionInfo()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 3184
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3186
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3187
    return-object p0
.end method

.method public clearError()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 3268
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3270
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3271
    return-object p0
.end method

.method public clearLocationMessageC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2622
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2624
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2625
    return-object p0
.end method

.method public clearLocationRequestG2C()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2538
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2540
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2541
    return-object p0
.end method

.method public clearMessageC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2702
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2703
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2705
    return-object p0
.end method

.method public clearNavigationRequestC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2900
    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2902
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2903
    return-object p0
.end method

.method public clearScreenshot()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 3352
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3354
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3355
    return-object p0
.end method

.method public clearSerialNumber()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2000
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2001
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    .line 2003
    return-object p0
.end method

.method public clearSetupWifiC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 3077
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3078
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3080
    return-object p0
.end method

.method public clearTimeMillis()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 2060
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2061
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    .line 2063
    return-object p0
.end method

.method public clearTimelineItem()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 2269
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2271
    return-object p0
.end method

.method public clearTimelineItemResponseC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 2442
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2444
    return-object p0
.end method

.method public clearTimezoneC2G()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2799
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2800
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2802
    return-object p0
.end method

.method public clearUptimeMillis()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 2108
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    .line 2111
    return-object p0
.end method

.method public clearUrlG2C()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 2980
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2981
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getUrlG2C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2983
    return-object p0
.end method

.method public clearVersion()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1

    .prologue
    .line 1952
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1953
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    .line 1955
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2

    .prologue
    .line 1667
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
    .line 1606
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clone()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clone()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1606
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
    .line 1606
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->clone()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3545
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public getCommand()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 1671
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public getMessageC2G()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2648
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2649
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2651
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2654
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
    .line 2666
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2667
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2668
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2671
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2674
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
    .line 2841
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 3293
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 1977
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    return v0
.end method

.method public getSetupWifiC2G()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3023
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3024
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3026
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3029
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
    .line 3041
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3042
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3043
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3046
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3049
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
    .line 2031
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    return-wide v0
.end method

.method public getTimelineItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getTimelineItemCount()I
    .locals 1

    .prologue
    .line 2141
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
    .line 2131
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineItemResponseC2G(I)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "index"

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public getTimelineItemResponseC2GCount()I
    .locals 1

    .prologue
    .line 2314
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
    .line 2304
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimezoneC2G()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2745
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2746
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2748
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2751
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
    .line 2763
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2764
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2765
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2768
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2771
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
    .line 2085
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    return-wide v0
.end method

.method public getUrlG2C()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2926
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2927
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2929
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2932
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
    .line 2944
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2945
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2946
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2949
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2952
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
    .line 1929
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    return v0
.end method

.method public hasApiRequestC2G()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v1, 0x2

    .line 3451
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v1, 0x4

    .line 3535
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

    .line 3367
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
    .line 3110
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
    .line 3199
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
    .line 2553
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
    .line 2469
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
    .line 2637
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
    .line 2831
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

    .line 3283
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
    .line 1967
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
    .line 3012
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
    .line 2018
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
    .line 2734
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
    .line 2075
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
    .line 2915
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

    .line 1919
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

    .line 1854
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1888
    :cond_0
    :goto_0
    return v0

    .line 1858
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasLocationRequestG2C()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1859
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$LocationRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1864
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasLocationMessageC2G()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1865
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$LocationMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1870
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasCompanionInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1871
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasError()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1877
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getError()Lcom/google/glass/companion/Proto$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Error;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1882
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->hasCommand()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1883
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getCommand()Lcom/google/glass/companion/Proto$Command;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Command;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1888
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v2, 0x2

    .line 3501
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3503
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->newBuilder(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3509
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3510
    return-object p0

    .line 3506
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    goto :goto_0
.end method

.method public mergeApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v2, 0x4

    .line 3585
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3587
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilder(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 3593
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3594
    return-object p0

    .line 3590
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    goto :goto_0
.end method

.method public mergeCommand(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 3417
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Command;->newBuilder(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Command$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3425
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3426
    return-object p0

    .line 3422
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    goto :goto_0
.end method

.method public mergeCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3164
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3166
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3172
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3173
    return-object p0

    .line 3169
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    goto :goto_0
.end method

.method public mergeError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3249
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstance()Lcom/google/glass/companion/Proto$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3251
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Error;->newBuilder(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Error$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3257
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3258
    return-object p0

    .line 3254
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1769
    invoke-static {}, Lcom/google/glass/companion/Proto$Envelope;->getDefaultInstance()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1850
    :goto_0
    return-object p0

    .line 1770
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1771
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setVersion(I)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1773
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasSerialNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1774
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getSerialNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setSerialNumber(I)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1776
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasTimeMillis()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1777
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setTimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1779
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasUptimeMillis()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1780
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setUptimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1782
    :cond_4
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$700(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1783
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1784
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$700(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    .line 1785
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1792
    :cond_5
    :goto_1
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$800(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1793
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1794
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$800(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    .line 1795
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1802
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationRequestG2C()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1803
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1805
    :cond_7
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationMessageC2G()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1806
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1808
    :cond_8
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasMessageC2G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1809
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1810
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$1100(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 1813
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasTimezoneC2G()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1814
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1815
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$1200(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 1818
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasNavigationRequestC2G()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1819
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1821
    :cond_b
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasUrlG2C()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1822
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1823
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$1400(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 1826
    :cond_c
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasSetupWifiC2G()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1827
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1828
    #getter for: Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$1500(Lcom/google/glass/companion/Proto$Envelope;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 1831
    :cond_d
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1832
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1834
    :cond_e
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasError()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1835
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getError()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1837
    :cond_f
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1838
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1840
    :cond_10
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasCommand()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1841
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getCommand()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeCommand(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1843
    :cond_11
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasApiRequestC2G()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1844
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1846
    :cond_12
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasApiResponseG2C()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1847
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1849
    :cond_13
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$Envelope;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$2300(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0

    .line 1787
    :cond_14
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 1788
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    #getter for: Lcom/google/glass/companion/Proto$Envelope;->timelineItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Envelope;->access$700(Lcom/google/glass/companion/Proto$Envelope;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1797
    :cond_15
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 1798
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
    .line 1895
    const/4 v2, 0x0

    .line 1897
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

    .line 1902
    if-eqz v2, :cond_0

    .line 1903
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Envelope;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    .line 1906
    :cond_0
    return-object p0

    .line 1898
    :catch_0
    move-exception v1

    .line 1899
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    move-object v2, v0

    .line 1900
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1902
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1903
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
    .line 1606
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1606
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
    .line 1606
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2603
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2605
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2611
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2612
    return-object p0

    .line 2608
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    goto :goto_0
.end method

.method public mergeLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2519
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2527
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2528
    return-object p0

    .line 2524
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    goto :goto_0
.end method

.method public mergeNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2881
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-static {}, Lcom/google/glass/companion/Proto$NavigationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->newBuilder(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2889
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2890
    return-object p0

    .line 2886
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    goto :goto_0
.end method

.method public mergeScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 3333
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilder(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3341
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3342
    return-object p0

    .line 3338
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    goto :goto_0
.end method

.method public removeTimelineItem(I)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2281
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2282
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2284
    return-object p0
.end method

.method public removeTimelineItemResponseC2G(I)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2454
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2455
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2457
    return-object p0
.end method

.method public setApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3488
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->build()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3490
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3491
    return-object p0
.end method

.method public setApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3471
    if-nez p1, :cond_0

    .line 3472
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3474
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 3476
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3477
    return-object p0
.end method

.method public setApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3572
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->build()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 3574
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3575
    return-object p0
.end method

.method public setApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3555
    if-nez p1, :cond_0

    .line 3556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3558
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 3560
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3561
    return-object p0
.end method

.method public setCommand(Lcom/google/glass/companion/Proto$Command$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3404
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Command$Builder;->build()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3406
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3407
    return-object p0
.end method

.method public setCommand(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3387
    if-nez p1, :cond_0

    .line 3388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3390
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 3392
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3393
    return-object p0
.end method

.method public setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 3150
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->build()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3152
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3153
    return-object p0
.end method

.method public setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3132
    if-nez p1, :cond_0

    .line 3133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3135
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3137
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3138
    return-object p0
.end method

.method public setError(Lcom/google/glass/companion/Proto$Error$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 3236
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Error$Builder;->build()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3238
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3239
    return-object p0
.end method

.method public setError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3219
    if-nez p1, :cond_0

    .line 3220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3222
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 3224
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3225
    return-object p0
.end method

.method public setLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 2590
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->build()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2592
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2593
    return-object p0
.end method

.method public setLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2573
    if-nez p1, :cond_0

    .line 2574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2576
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2578
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2579
    return-object p0
.end method

.method public setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 2506
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->build()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2508
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2509
    return-object p0
.end method

.method public setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2489
    if-nez p1, :cond_0

    .line 2490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2492
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2494
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2495
    return-object p0
.end method

.method public setMessageC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2686
    if-nez p1, :cond_0

    .line 2687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2689
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2690
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2692
    return-object p0
.end method

.method public setMessageC2GBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2716
    if-nez p1, :cond_0

    .line 2717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2719
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2720
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->messageC2G_:Ljava/lang/Object;

    .line 2722
    return-object p0
.end method

.method public setNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 2868
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$NavigationRequest$Builder;->build()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2870
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2871
    return-object p0
.end method

.method public setNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2851
    if-nez p1, :cond_0

    .line 2852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2854
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 2856
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2857
    return-object p0
.end method

.method public setScreenshot(Lcom/google/glass/companion/Proto$ScreenShot$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3320
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->build()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3322
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3323
    return-object p0
.end method

.method public setScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3303
    if-nez p1, :cond_0

    .line 3304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3306
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 3308
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3309
    return-object p0
.end method

.method public setSerialNumber(I)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1987
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1988
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->serialNumber_:I

    .line 1990
    return-object p0
.end method

.method public setSetupWifiC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3061
    if-nez p1, :cond_0

    .line 3062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3064
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3065
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3067
    return-object p0
.end method

.method public setSetupWifiC2GBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3091
    if-nez p1, :cond_0

    .line 3092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3094
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 3095
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->setupWifiC2G_:Ljava/lang/Object;

    .line 3097
    return-object p0
.end method

.method public setTimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2044
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2045
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timeMillis_:J

    .line 2047
    return-object p0
.end method

.method public setTimelineItem(ILcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2179
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2180
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2182
    return-object p0
.end method

.method public setTimelineItem(ILcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2162
    if-nez p2, :cond_0

    .line 2163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2165
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemIsMutable()V

    .line 2166
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2168
    return-object p0
.end method

.method public setTimelineItemResponseC2G(ILcom/google/glass/companion/Proto$TimelineItemResponse$Builder;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2352
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2353
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->build()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2355
    return-object p0
.end method

.method public setTimelineItemResponseC2G(ILcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2335
    if-nez p2, :cond_0

    .line 2336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2338
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->ensureTimelineItemResponseC2GIsMutable()V

    .line 2339
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timelineItemResponseC2G_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2341
    return-object p0
.end method

.method public setTimezoneC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2783
    if-nez p1, :cond_0

    .line 2784
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2786
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2787
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2789
    return-object p0
.end method

.method public setTimezoneC2GBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2813
    if-nez p1, :cond_0

    .line 2814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2816
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2817
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->timezoneC2G_:Ljava/lang/Object;

    .line 2819
    return-object p0
.end method

.method public setUptimeMillis(J)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2095
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2096
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->uptimeMillis_:J

    .line 2098
    return-object p0
.end method

.method public setUrlG2C(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2964
    if-nez p1, :cond_0

    .line 2965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2967
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2968
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 2970
    return-object p0
.end method

.method public setUrlG2CBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2994
    if-nez p1, :cond_0

    .line 2995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2997
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 2998
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->urlG2C_:Ljava/lang/Object;

    .line 3000
    return-object p0
.end method

.method public setVersion(I)Lcom/google/glass/companion/Proto$Envelope$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1939
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->bitField0_:I

    .line 1940
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope$Builder;->version_:I

    .line 1942
    return-object p0
.end method

.class public Lcom/google/glass/home/search/VoiceSearchResultsActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "VoiceSearchResultsActivity.java"


# static fields
.field private static SAVE_MAJEL_RESPONSE_PROTO:Z = false

.field private static final SEARCH_URL:Ljava/lang/String; = "http://www.google.com/search?q="

.field private static final TAG:Ljava/lang/String; = null

.field public static final WEB_BROWSER_EXTRA_USER_EVENT_CONTEXT_DATA:Ljava/lang/String; = "userEventContextData"


# instance fields
.field private activityCreatedTime:Ljava/lang/Long;

.field private lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

.field private majelResponseBytes:[B

.field private recognitionResult:Ljava/lang/String;

.field private results:Lcom/google/glass/home/search/results/ResultsContainer;

.field private resultsContainerView:Landroid/widget/FrameLayout;

.field private resultsSliderView:Lcom/google/glass/widget/SliderView;

.field private resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

.field private swipeLogged:Z

.field private timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private timelineItemId:Lcom/google/glass/timeline/TimelineItemId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->SAVE_MAJEL_RESPONSE_PROTO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->swipeLogged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/timeline/TimelineItemId;)Lcom/google/glass/timeline/TimelineItemId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object p1
.end method

.method private addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 10
    .parameter "builder"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 502
    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v6}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v6

    if-gt v6, v8, :cond_0

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v6}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v6

    if-ne v6, v8, :cond_1

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v6, v9}, Lcom/google/glass/home/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/google/glass/home/search/results/TextResponseAnswerView;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SEARCH:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->addValueBuilder()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$string;->timeline_menu_expand_search:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->web_results:I

    invoke-static {p0, v7}, Lcom/google/glass/util/IconProvider;->buildDrawableUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    .line 514
    :cond_1
    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v6, v9}, Lcom/google/glass/home/search/results/ResultsContainer;->getOptionMenuAt(I)Lcom/google/glass/widget/OptionMenu;

    move-result-object v5

    .line 515
    .local v5, optionMenu:Lcom/google/glass/widget/OptionMenu;
    if-eqz v5, :cond_7

    .line 516
    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v6, v9}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 517
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v5}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 518
    invoke-virtual {v5, v2}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v3

    .line 519
    .local v3, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    const-string v6, "PHONE_NUMBER_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v6}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 522
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    const-string v7, "PHONE_NUMBER_KEY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 524
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {p1, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 525
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 517
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    :cond_3
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_4

    const-string v6, "LOCATION_COORDINATES_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v6}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 529
    invoke-static {v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getLocation(Landroid/os/Bundle;)Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v4

    .line 530
    .local v4, location:Lcom/google/googlex/glass/common/proto/Location;
    if-eqz v4, :cond_2

    .line 531
    invoke-virtual {p1, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 532
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 534
    .end local v4           #location:Lcom/google/googlex/glass/common/proto/Location;
    :cond_4
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    .line 536
    if-eqz v0, :cond_5

    const-string v6, "URL_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 537
    const-string v6, "URL_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 539
    :cond_5
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 540
    :cond_6
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    .line 541
    invoke-direct {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 542
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VIEW_WEB_SITE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 548
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #i:I
    .end local v3           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_7
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 549
    return-void
.end method

.method private buildBrowsingUserEventContextData(IZ)Ljava/lang/String;
    .locals 9
    .parameter "resultIndex"
    .parameter "isNavigationalResult"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->activityCreatedTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 561
    .local v0, timeSinceResultsActivity:J
    const-string v4, "ri"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "tsra"

    aput-object v7, v6, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    const-string v8, "nr"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static getLocation(Landroid/os/Bundle;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 5
    .parameter "bundle"

    .prologue
    .line 325
    const-string v2, "LOCATION_COORDINATES_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 326
    .local v1, coordinates:[D
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 327
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    .line 328
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLatitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLongitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 329
    const-string v2, "LOCATION_NAME_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const-string v2, "LOCATION_NAME_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 332
    :cond_0
    const-string v2, "LOCATION_ADDRESS_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    const-string v2, "LOCATION_ADDRESS_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 335
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v2

    .line 337
    .end local v0           #builder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 346
    if-eqz p1, :cond_0

    const-string v1, "URL_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v1, "URL_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    .line 350
    .local v0, terms:Ljava/lang/String;
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private insertSearchInTimeline()V
    .locals 1

    .prologue
    .line 456
    new-instance v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;-><init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method

.method private invokeBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "userEventContextData"

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v0, browserIntent:Landroid/content/Intent;
    const-string v1, "userEventContextData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method private removeMenuItemsWithAction(Ljava/util/List;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)V
    .locals 4
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/OptionMenu$Item;",
            ">;",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Action;",
            ")V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/OptionMenu$Item;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 391
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 392
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->getNumber()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 393
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 390
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 396
    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_1
    return-void
.end method


# virtual methods
.method public getLastSavedTimelineItemId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "icicle"

    .prologue
    .line 117
    invoke-super/range {p0 .. p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->activityCreatedTime:Ljava/lang/Long;

    .line 121
    new-instance v19, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct/range {v19 .. v19}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 125
    .local v8, intent:Landroid/content/Intent;
    const-string v19, "startTime"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 127
    .local v11, startTime:J
    const-string v19, "recognitionResult"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    .line 128
    const-string v19, "majelResponse"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 131
    sget-object v19, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v20, "Null majel proto!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v19, "timelineItemId"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    check-cast v19, Lcom/google/glass/timeline/TimelineItemId;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 139
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 143
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->parseFrom([B)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 150
    .local v10, majelResponse:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    sget-boolean v19, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->SAVE_MAJEL_RESPONSE_PROTO:Z

    if-eqz v19, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->saveMajelResponseProto([BLjava/lang/String;)V

    .line 155
    :cond_2
    new-instance v9, Lcom/google/glass/home/search/results/MajelProcessor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Lcom/google/glass/home/search/results/MajelProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    .local v9, majelProcessor:Lcom/google/glass/home/search/results/MajelProcessor;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v10, v0}, Lcom/google/glass/home/search/results/MajelProcessor;->process(Lcom/google/majel/proto/MajelProtos$MajelResponse;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 159
    new-instance v19, Lcom/google/glass/app/GlassError;

    invoke-direct/range {v19 .. v19}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v20, Lcom/google/glass/home/R$string;->voice_search_no_answer:I

    invoke-virtual/range {v19 .. v20}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v19

    sget v20, Lcom/google/glass/home/R$drawable;->ic_exclamation_big:I

    invoke-virtual/range {v19 .. v20}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 164
    sget-object v19, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto/16 :goto_0

    .line 144
    .end local v9           #majelProcessor:Lcom/google/glass/home/search/results/MajelProcessor;
    .end local v10           #majelResponse:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :catch_0
    move-exception v4

    .line 145
    .local v4, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    sget-object v19, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 168
    .end local v4           #e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v9       #majelProcessor:Lcom/google/glass/home/search/results/MajelProcessor;
    .restart local v10       #majelResponse:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :cond_3
    sget v19, Lcom/google/glass/home/R$id;->results_container:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/FrameLayout;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    sget v20, Lcom/google/glass/home/R$id;->results:I

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPages()Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->setResultPages(Ljava/util/List;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    sget v20, Lcom/google/glass/home/R$id;->results_slider:I

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/google/glass/widget/SliderView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsSliderView:Lcom/google/glass/widget/SliderView;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsSliderView:Lcom/google/glass/widget/SliderView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsSliderView:Lcom/google/glass/widget/SliderView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 180
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/glass/home/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    .line 181
    .local v18, viewNameForLogging:Ljava/lang/String;
    const-wide/16 v19, -0x1

    cmp-long v19, v11, v19

    if-eqz v19, :cond_6

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "endofSpeech"

    const-wide/16 v21, -0x1

    invoke-virtual/range {v19 .. v22}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 188
    .local v5, endOfSpeechTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v13, v19, v11

    .line 189
    .local v13, timeToMajelResult:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v15, v19, v5

    .line 190
    .local v15, timeToMajelResultFromEndOfSpeech:J
    const-string v19, "id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "view"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v18, v21, v22

    const/16 v22, 0x2

    const-string v23, "time_total"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-string v23, "time_from_eos"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x6

    const-string v23, "results"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x8

    const-string v23, "type"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, eventTuple:Ljava/lang/String;
    sget-object v19, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_MAJEL_RESULT:Lcom/google/glass/logging/UserEventAction;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 206
    .end local v5           #endOfSpeechTime:J
    .end local v13           #timeToMajelResult:J
    .end local v15           #timeToMajelResultFromEndOfSpeech:J
    :goto_1
    sget-object v19, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->insertSearchInTimeline()V

    .line 214
    sget-object v19, Lcom/google/glass/util/Labs$Feature;->WEB_BROWSING:Lcom/google/glass/util/Labs$Feature;

    invoke-static/range {v19 .. v19}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ".com"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ".org"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ".edu"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ".net"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ".gov"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 218
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v3

    .line 219
    .local v3, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v17

    .line 220
    .local v17, url:Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->buildBrowsingUserEventContextData(IZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->invokeBrowser(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v7           #eventTuple:Ljava/lang/String;
    .end local v17           #url:Ljava/lang/String;
    :cond_6
    const-string v19, "view"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "results"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 203
    .restart local v7       #eventTuple:Ljava/lang/String;
    sget-object v19, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/logging/UserEventAction;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 401
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 403
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 405
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    .line 408
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->onFingerCountChanged(IZ)Z

    move-result v0

    .line 447
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 11
    .parameter "selectedItem"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 276
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v5

    .line 278
    .local v5, selectedItemId:I
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v9}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedItemPosition()I

    move-result v4

    .line 279
    .local v4, resultIndex:I
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v9, v4}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 281
    .local v0, bundle:Landroid/os/Bundle;
    const/16 v9, 0x8

    if-ne v5, v9, :cond_1

    .line 282
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 284
    .local v3, phoneNumber:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v3}, Lcom/google/glass/bluetooth/BluetoothHeadset;->attemptDial(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z

    .line 317
    .end local v3           #phoneNumber:Ljava/lang/String;
    :goto_1
    return v7

    .line 282
    :cond_0
    const-string v8, "PHONE_NUMBER_KEY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 286
    :cond_1
    const/16 v9, 0x9

    if-ne v5, v9, :cond_4

    .line 287
    if-eqz v0, :cond_2

    .line 288
    invoke-static {v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getLocation(Landroid/os/Bundle;)Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v1

    .line 289
    .local v1, location:Lcom/google/googlex/glass/common/proto/Location;
    if-eqz v1, :cond_2

    .line 290
    invoke-static {v1, p0}, Lcom/google/glass/maps/NavigationLauncher;->navigate(Lcom/google/googlex/glass/common/proto/Location;Landroid/content/Context;)Z

    .line 291
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->finish()V

    goto :goto_1

    .line 296
    .end local v1           #location:Lcom/google/googlex/glass/common/proto/Location;
    :cond_2
    sget-object v7, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v9, "Navigation request did not include bundle with lat/lon"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v7, v8

    .line 317
    goto :goto_1

    .line 297
    :cond_4
    const/4 v9, 0x5

    if-ne v5, v9, :cond_5

    .line 298
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v9}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/google/glass/home/search/results/TranslationAnswerView;

    if-eqz v9, :cond_3

    .line 299
    sget-object v8, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "speaking translation for item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v8, "URL_KEY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, networkUri:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;

    invoke-direct {v9, p0, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;-><init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 310
    .end local v2           #networkUri:Ljava/lang/String;
    :cond_5
    const/16 v9, 0xd

    if-ne v5, v9, :cond_3

    .line 311
    invoke-direct {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, url:Ljava/lang/String;
    invoke-direct {p0, v4, v8}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->buildBrowsingUserEventContextData(IZ)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->invokeBrowser(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->deactivate()V

    .line 260
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 261
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 358
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 360
    iget-object v3, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-nez v3, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v2

    .line 364
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v3}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedItemPosition()I

    move-result v1

    .line 365
    .local v1, resultViewIndex:I
    iget-object v3, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v3, v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getOptionMenuAt(I)Lcom/google/glass/widget/OptionMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v3, v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getOptionMenuAt(I)Lcom/google/glass/widget/OptionMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v2, v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getOptionMenuAt(I)Lcom/google/glass/widget/OptionMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 376
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/OptionMenu$Item;>;"
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 377
    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->removeMenuItemsWithAction(Ljava/util/List;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)V

    .line 380
    :cond_2
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->isNavigationAllowed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 381
    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->removeMenuItemsWithAction(Ljava/util/List;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)V

    .line 384
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->addAllItems(Ljava/util/List;)V

    .line 386
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->activate()V

    .line 245
    :cond_0
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 425
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    :goto_0
    return v0

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 430
    iget-object v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)V

    .line 433
    iget-boolean v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->swipeLogged:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-virtual {p2, v1}, Lcom/google/glass/input/SwipeDirection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 435
    iput-boolean v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->swipeLogged:Z

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 265
    sget v0, Lcom/google/glass/home/R$layout;->voice_search_results_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

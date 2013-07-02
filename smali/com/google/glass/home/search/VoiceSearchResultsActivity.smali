.class public Lcom/google/glass/home/search/VoiceSearchResultsActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;
.source "VoiceSearchResultsActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static SAVE_RESPONSE:Z = false

.field private static final SEARCH_URL:Ljava/lang/String; = "https://www.google.com/search?q="

.field private static final TAG:Ljava/lang/String; = null

.field private static final WEB_BROWSER_EXTRA_USER_EVENT_CONTEXT_DATA:Ljava/lang/String; = "userEventContextData"

.field protected static final WEB_BROWSER_PRELOAD_ACTION:Ljava/lang/String; = "com.google.glass.browser.ACTION_PRELOAD"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private activityCreatedTime:Ljava/lang/Long;

.field private answerCardResponse:Ljava/lang/String;

.field private volatile lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

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
    .line 75
    const-class v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->SAVE_RESPONSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->swipeLogged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/timeline/TimelineItemId;)Lcom/google/glass/timeline/TimelineItemId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    return-object v0
.end method

.method private addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V
    .locals 10
    .parameter "builder"
    .parameter "results"
    .parameter "cardsFromMajel"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 713
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v6

    if-gt v6, v8, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v6

    if-ne v6, v8, :cond_2

    invoke-virtual {p2, v9}, Lcom/google/glass/home/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/google/glass/home/search/results/TextResponseAnswerView;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 717
    :cond_1
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

    .line 726
    :cond_2
    invoke-virtual {p2, v9}, Lcom/google/glass/home/search/results/ResultsContainer;->getOptionMenuAt(I)Lcom/google/glass/widget/OptionMenu;

    move-result-object v5

    .line 727
    .local v5, optionMenu:Lcom/google/glass/widget/OptionMenu;
    if-eqz v5, :cond_c

    .line 728
    invoke-virtual {p2, v9}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 729
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v5}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 730
    invoke-virtual {v5, v2}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v3

    .line 731
    .local v3, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    const-string v6, "PHONE_NUMBER_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v6

    if-eq v6, v8, :cond_3

    if-nez p3, :cond_5

    .line 735
    :cond_3
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    const-string v7, "PHONE_NUMBER_KEY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 737
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {p1, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 738
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 729
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 739
    :cond_5
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_7

    const-string v6, "LOCATION_COORDINATES_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v6

    if-eq v6, v8, :cond_6

    if-nez p3, :cond_7

    .line 743
    :cond_6
    invoke-static {v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getLocation(Landroid/os/Bundle;)Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v4

    .line 744
    .local v4, location:Lcom/google/googlex/glass/common/proto/Location;
    if-eqz v4, :cond_4

    .line 745
    invoke-virtual {p1, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 746
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 748
    .end local v4           #location:Lcom/google/googlex/glass/common/proto/Location;
    :cond_7
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_9

    .line 750
    if-eqz v0, :cond_8

    const-string v6, "URL_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 751
    const-string v6, "URL_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 753
    :cond_8
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 754
    :cond_9
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_a

    .line 755
    invoke-direct {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 756
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VIEW_WEB_SITE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 757
    :cond_a
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    .line 759
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SHARE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto/16 :goto_1

    .line 760
    :cond_b
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    .line 761
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SEARCH:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto/16 :goto_1

    .line 767
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #i:I
    .end local v3           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_c
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 768
    return-void
.end method

.method private buildBrowsingUserEventContextData(IZ)Ljava/lang/String;
    .locals 9
    .parameter "resultIndex"
    .parameter "isNavigationalResult"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->activityCreatedTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 780
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
    .line 465
    const-string v2, "LOCATION_COORDINATES_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 466
    .local v1, coordinates:[D
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 467
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    .line 468
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLatitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLongitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 469
    const-string v2, "LOCATION_NAME_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    const-string v2, "LOCATION_NAME_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 472
    :cond_0
    const-string v2, "LOCATION_ADDRESS_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    const-string v2, "LOCATION_ADDRESS_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 475
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v2

    .line 477
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
    .line 486
    if-eqz p1, :cond_0

    const-string v1, "URL_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    const-string v1, "URL_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    :goto_0
    return-object v1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    .line 490
    .local v0, terms:Ljava/lang/String;
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.google.com/search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private insertAnswerCardSearchInTimeline()V
    .locals 5

    .prologue
    .line 643
    new-instance v0, Lcom/google/glass/home/search/results/AnswerCardProcessor;

    iget-object v2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/home/search/results/AnswerCardProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 645
    .local v0, cardProcessor:Lcom/google/glass/home/search/results/AnswerCardProcessor;
    iget-object v2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/glass/home/search/results/AnswerCardProcessor;->process(Ljava/lang/String;ZZ)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v1

    .line 647
    .local v1, timelineResults:Lcom/google/glass/home/search/results/ResultsContainer;
    invoke-virtual {v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 702
    :goto_0
    return-void

    .line 651
    :cond_0
    new-instance v2, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;-><init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/home/search/results/ResultsContainer;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private insertMajelSearchInTimeline()V
    .locals 1

    .prologue
    .line 596
    new-instance v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;-><init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 634
    return-void
.end method

.method private invokeBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "userEventContextData"

    .prologue
    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    sget-object v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url didn\'t have protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 343
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 344
    .local v0, browserIntent:Landroid/content/Intent;
    const-string v1, "userEventContextData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method private logUserEventFromResults(JZ)V
    .locals 14
    .parameter "startTime"
    .parameter "useMajelResponse"

    .prologue
    .line 278
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/glass/home/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, viewNameForLogging:Ljava/lang/String;
    const-wide/16 v9, -0x1

    cmp-long v9, p1, v9

    if-eqz v9, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "endofSpeech"

    const-wide/16 v11, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 286
    .local v0, endOfSpeechTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, p1

    .line 287
    .local v3, timeToResult:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v0

    .line 288
    .local v5, timeToResultFromEndOfSpeech:J
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "trigger_method"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 290
    .local v7, triggerMethod:I
    const-string v10, "id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v9, 0xe

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v13, "view"

    aput-object v13, v12, v9

    const/4 v9, 0x1

    aput-object v8, v12, v9

    const/4 v9, 0x2

    const-string v13, "time_total"

    aput-object v13, v12, v9

    const/4 v9, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v9

    const/4 v9, 0x4

    const-string v13, "time_from_eos"

    aput-object v13, v12, v9

    const/4 v9, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v9

    const/4 v9, 0x6

    const-string v13, "results"

    aput-object v13, v12, v9

    const/4 v9, 0x7

    iget-object v13, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v13}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    const/16 v9, 0x8

    const-string v13, "type"

    aput-object v13, v12, v9

    const/16 v9, 0x9

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    const/16 v9, 0xa

    const-string v13, "trigger"

    aput-object v13, v12, v9

    const/16 v9, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    const/16 v9, 0xc

    const-string v13, "source"

    aput-object v13, v12, v9

    const/16 v13, 0xd

    if-eqz p3, :cond_0

    const-string v9, "majel"

    :goto_0
    aput-object v9, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, eventTuple:Ljava/lang/String;
    sget-object v9, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_RESULT:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v9, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 307
    .end local v0           #endOfSpeechTime:J
    .end local v3           #timeToResult:J
    .end local v5           #timeToResultFromEndOfSpeech:J
    .end local v7           #triggerMethod:I
    :goto_1
    return-void

    .line 290
    .end local v2           #eventTuple:Ljava/lang/String;
    .restart local v0       #endOfSpeechTime:J
    .restart local v3       #timeToResult:J
    .restart local v5       #timeToResultFromEndOfSpeech:J
    .restart local v7       #triggerMethod:I
    :cond_0
    const-string v9, "gws"

    goto :goto_0

    .line 302
    .end local v0           #endOfSpeechTime:J
    .end local v3           #timeToResult:J
    .end local v5           #timeToResultFromEndOfSpeech:J
    .end local v7           #triggerMethod:I
    :cond_1
    const-string v9, "view"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "results"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v12}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v8, v10}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2       #eventTuple:Ljava/lang/String;
    sget-object v9, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v9, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto :goto_1
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
    .line 530
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/OptionMenu$Item;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 531
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 532
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->getNumber()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 533
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 530
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 536
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
    .line 788
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "icicle"

    .prologue
    .line 144
    invoke-super/range {p0 .. p1}, Lcom/google/glass/app/GlassVoiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->activityCreatedTime:Ljava/lang/Long;

    .line 148
    new-instance v12, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v12}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 151
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 152
    .local v3, intent:Landroid/content/Intent;
    const-string v12, "startTime"

    const-wide/16 v13, -0x1

    invoke-virtual {v3, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 154
    .local v8, startTime:J
    const-string v12, "recognitionResult"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    .line 155
    const-string v12, "majelResponse"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    .line 157
    const-string v12, "cardResult"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    .line 159
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 160
    sget-object v12, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v13, "Null majel proto and no answer card response!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    if-nez v12, :cond_4

    const/4 v11, 0x1

    .line 166
    .local v11, useMajelResponse:Z
    :goto_1
    const-string v12, "timelineItemId"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Lcom/google/glass/timeline/TimelineItemId;

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 168
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-nez v12, :cond_5

    const/4 v4, 0x1

    .line 171
    .local v4, isInitialResult:Z
    :goto_2
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 173
    if-eqz v11, :cond_6

    .line 176
    :try_start_0
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    invoke-static {v12}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->parseFrom([B)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 187
    .local v6, majelResponse:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    sget-boolean v12, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->SAVE_RESPONSE:Z

    if-eqz v12, :cond_2

    .line 188
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    iget-object v13, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->saveMajelResponseProto([BLjava/lang/String;)V

    .line 193
    :cond_2
    new-instance v5, Lcom/google/glass/home/search/results/MajelProcessor;

    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    invoke-direct {v5, p0, v12}, Lcom/google/glass/home/search/results/MajelProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    .local v5, majelProcessor:Lcom/google/glass/home/search/results/MajelProcessor;
    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12}, Lcom/google/glass/home/search/results/MajelProcessor;->process(Lcom/google/majel/proto/MajelProtos$MajelResponse;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v12

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    .line 211
    .end local v5           #majelProcessor:Lcom/google/glass/home/search/results/MajelProcessor;
    .end local v6           #majelResponse:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :cond_3
    :goto_3
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    if-nez v12, :cond_9

    .line 212
    new-instance v12, Lcom/google/glass/app/GlassError;

    invoke-direct {v12}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v13, Lcom/google/glass/home/R$string;->voice_search_no_answer:I

    invoke-virtual {v12, v13}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v12

    invoke-virtual {v12, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 216
    sget-object v12, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v12}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    goto :goto_0

    .line 164
    .end local v4           #isInitialResult:Z
    .end local v11           #useMajelResponse:Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 168
    .restart local v11       #useMajelResponse:Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 181
    .restart local v4       #isInitialResult:Z
    :catch_0
    move-exception v2

    .line 182
    .local v2, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    sget-object v12, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    .end local v2           #e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_6
    sget-object v12, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v13, "Parsing result as answer card"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v1, Lcom/google/glass/home/search/results/AnswerCardProcessor;

    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    invoke-direct {v1, p0, v12}, Lcom/google/glass/home/search/results/AnswerCardProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    .local v1, cardProcessor:Lcom/google/glass/home/search/results/AnswerCardProcessor;
    iget-object v14, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    if-nez v4, :cond_7

    const/4 v12, 0x1

    move v13, v12

    :goto_4
    if-nez v4, :cond_8

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v1, v14, v13, v12}, Lcom/google/glass/home/search/results/AnswerCardProcessor;->process(Ljava/lang/String;ZZ)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v12

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    .line 205
    sget-boolean v12, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->SAVE_RESPONSE:Z

    if-eqz v12, :cond_3

    .line 206
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    iget-object v13, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->saveHtmlResponseProto(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_7
    const/4 v12, 0x0

    move v13, v12

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 220
    .end local v1           #cardProcessor:Lcom/google/glass/home/search/results/AnswerCardProcessor;
    :cond_9
    sget-object v12, Lcom/google/glass/util/Labs$Feature;->SOUND_SEARCH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v12}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v12}, Lcom/google/glass/home/search/results/ResultsContainer;->isStartSoundSearchResult()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 221
    new-instance v7, Landroid/content/Intent;

    const-class v12, Lcom/google/glass/home/search/SoundSearchActivity;

    invoke-direct {v7, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v7, soundSearchIntent:Landroid/content/Intent;
    const-string v12, "trigger_method"

    const/4 v13, 0x5

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v7}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->finish()V

    goto/16 :goto_0

    .line 229
    .end local v7           #soundSearchIntent:Landroid/content/Intent;
    :cond_a
    if-eqz v4, :cond_b

    .line 232
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v12

    sget-object v13, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v12, v13}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 235
    :cond_b
    sget v12, Lcom/google/glass/home/R$id;->results_container:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/FrameLayout;

    .line 236
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/FrameLayout;

    sget v13, Lcom/google/glass/home/R$id;->results:I

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    .line 238
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    iget-object v13, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v13}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPages()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->setResultPages(Ljava/util/List;)V

    .line 241
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v12}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_c

    .line 242
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/FrameLayout;

    sget v13, Lcom/google/glass/home/R$id;->results_slider:I

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/glass/widget/SliderView;

    iput-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsSliderView:Lcom/google/glass/widget/SliderView;

    .line 243
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsSliderView:Lcom/google/glass/widget/SliderView;

    iget-object v13, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v12, v13}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 244
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsSliderView:Lcom/google/glass/widget/SliderView;

    iget-object v13, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v13}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 247
    :cond_c
    invoke-direct {p0, v8, v9, v11}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEventFromResults(JZ)V

    .line 249
    sget-object v12, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v12}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 251
    if-eqz v4, :cond_d

    .line 252
    if-eqz v11, :cond_e

    .line 253
    invoke-direct {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->insertMajelSearchInTimeline()V

    .line 259
    :cond_d
    :goto_6
    sget-object v12, Lcom/google/glass/util/Labs$Feature;->WEB_BROWSING:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v12}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 264
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 265
    .local v0, bundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, url:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 271
    invoke-virtual {p0, v10}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->preloadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v10           #url:Ljava/lang/String;
    :cond_e
    invoke-direct {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->insertAnswerCardSearchInTimeline()V

    goto :goto_6
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 541
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 543
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 545
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    .line 548
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->onFingerCountChanged(IZ)Z

    move-result v0

    .line 587
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 14
    .parameter "selectedItem"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 404
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    .line 406
    .local v6, selectedItemId:I
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v12}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedItemPosition()I

    move-result v5

    .line 407
    .local v5, resultIndex:I
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v12, v5}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 409
    .local v0, bundle:Landroid/os/Bundle;
    const/16 v12, 0x8

    if-ne v6, v12, :cond_1

    .line 410
    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 412
    .local v4, phoneNumber:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v4}, Lcom/google/glass/bluetooth/BluetoothHeadset;->attemptDial(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z

    .line 457
    .end local v4           #phoneNumber:Ljava/lang/String;
    :goto_1
    return v10

    .line 410
    :cond_0
    const-string v11, "PHONE_NUMBER_KEY"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 414
    :cond_1
    const/16 v12, 0x9

    if-ne v6, v12, :cond_5

    .line 415
    if-eqz v0, :cond_3

    .line 416
    invoke-static {v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getLocation(Landroid/os/Bundle;)Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v1

    .line 417
    .local v1, location:Lcom/google/googlex/glass/common/proto/Location;
    if-eqz v1, :cond_3

    .line 418
    sget-object v12, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    invoke-static {v1, v12}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Lcom/google/googlex/glass/common/proto/Location;Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;)Landroid/content/Intent;

    move-result-object v2

    .line 420
    .local v2, navigationIntent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 421
    invoke-virtual {p0, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 422
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->finish()V

    goto :goto_1

    :cond_2
    move v10, v11

    .line 425
    goto :goto_1

    .line 430
    .end local v1           #location:Lcom/google/googlex/glass/common/proto/Location;
    .end local v2           #navigationIntent:Landroid/content/Intent;
    :cond_3
    sget-object v10, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v12, "Navigation request did not include bundle with lat/lon"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v10, v11

    .line 457
    goto :goto_1

    .line 431
    :cond_5
    const/4 v12, 0x5

    if-ne v6, v12, :cond_7

    .line 432
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v12}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lcom/google/glass/home/search/results/TranslationAnswerView;

    if-eqz v12, :cond_6

    .line 433
    sget-object v11, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "speaking translation for item "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v11, "URL_KEY"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, networkUri:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    new-instance v12, Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;

    invoke-direct {v12, p0, v3}, Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;-><init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 443
    .end local v3           #networkUri:Ljava/lang/String;
    :cond_6
    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v12}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lcom/google/glass/home/search/results/WebAnswerView;

    if-eqz v12, :cond_4

    .line 444
    sget-object v11, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Speaking TTS for item "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v11, "TTS_FORMAT_STRING_KEY"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 446
    .local v7, ttsFormatString:Ljava/lang/String;
    const-string v11, "TTS_LANGUAGE_KEY"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 447
    .local v8, ttsLang:Ljava/lang/String;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v7, v8, v11}, Lcom/google/glass/timeline/TimelineHelper;->formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto/16 :goto_1

    .line 450
    .end local v7           #ttsFormatString:Ljava/lang/String;
    .end local v8           #ttsLang:Ljava/lang/String;
    :cond_7
    const/16 v12, 0xd

    if-ne v6, v12, :cond_4

    .line 451
    invoke-direct {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    .line 452
    .local v9, url:Ljava/lang/String;
    invoke-direct {p0, v5, v11}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->buildBrowsingUserEventContextData(IZ)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->invokeBrowser(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->deactivate()V

    .line 388
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    .line 389
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 500
    iget-object v3, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-nez v3, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v2

    .line 504
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v3}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedItemPosition()I

    move-result v1

    .line 505
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

    .line 513
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v2, v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getOptionMenuAt(I)Lcom/google/glass/widget/OptionMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 516
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/OptionMenu$Item;>;"
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->removeMenuItemsWithAction(Ljava/util/List;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)V

    .line 520
    :cond_2
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->isNavigationAllowed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 521
    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->removeMenuItemsWithAction(Ljava/util/List;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)V

    .line 524
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->addAllItems(Ljava/util/List;)V

    .line 526
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
    .line 555
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 556
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

    .line 560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    .line 356
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->activate()V

    .line 359
    :cond_0
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 565
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    :goto_0
    return v0

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 570
    iget-object v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 573
    iget-boolean v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->swipeLogged:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-virtual {p2, v1}, Lcom/google/glass/input/SwipeDirection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 575
    iput-boolean v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->swipeLogged:Z

    .line 579
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preloadUrl(Ljava/lang/String;)V
    .locals 7
    .parameter "url"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.glass.browser.ACTION_PRELOAD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, preloadAction:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 321
    const-string v2, "com.google.glass.browser"

    const-string v3, "com.google.glass.browser.WebBrowserPreloadService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    sget-object v2, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v3, "Preloading search result website with intent: [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 327
    .local v1, service:Landroid/content/ComponentName;
    sget-object v2, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v3, "Service component name: [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 393
    sget v0, Lcom/google/glass/home/R$layout;->voice_search_results_activity:I

    return v0
.end method

.method protected shouldAllowLongPress()Z
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "trigger_method"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, triggerMethod:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dismiss from long-press should turn screen off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x1

    .line 376
    :cond_0
    return v1
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

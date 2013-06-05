.class public Lcom/google/glass/home/search/VoiceSearchResultsActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;
.source "VoiceSearchResultsActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static SAVE_RESPONSE:Z = false

.field private static final SEARCH_URL:Ljava/lang/String; = "https://www.google.com/search?q="

.field private static final TAG:Ljava/lang/String; = null

.field public static final WEB_BROWSER_EXTRA_USER_EVENT_CONTEXT_DATA:Ljava/lang/String; = "userEventContextData"


# instance fields
.field private activityCreatedTime:Ljava/lang/Long;

.field private answerCardResponse:Ljava/lang/String;

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
    .line 72
    const-class v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->SAVE_RESPONSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->swipeLogged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
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
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/timeline/TimelineItemId;)Lcom/google/glass/timeline/TimelineItemId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
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

    .line 632
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

    .line 636
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

    .line 645
    :cond_2
    invoke-virtual {p2, v9}, Lcom/google/glass/home/search/results/ResultsContainer;->getOptionMenuAt(I)Lcom/google/glass/widget/OptionMenu;

    move-result-object v5

    .line 646
    .local v5, optionMenu:Lcom/google/glass/widget/OptionMenu;
    if-eqz v5, :cond_c

    .line 647
    invoke-virtual {p2, v9}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 648
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v5}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 649
    invoke-virtual {v5, v2}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v3

    .line 650
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

    .line 654
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

    .line 656
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {p1, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 657
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 648
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 658
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

    .line 662
    :cond_6
    invoke-static {v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getLocation(Landroid/os/Bundle;)Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v4

    .line 663
    .local v4, location:Lcom/google/googlex/glass/common/proto/Location;
    if-eqz v4, :cond_4

    .line 664
    invoke-virtual {p1, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 665
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 667
    .end local v4           #location:Lcom/google/googlex/glass/common/proto/Location;
    :cond_7
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_9

    .line 669
    if-eqz v0, :cond_8

    const-string v6, "URL_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 670
    const-string v6, "URL_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 672
    :cond_8
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 673
    :cond_9
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_a

    .line 674
    invoke-direct {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 675
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VIEW_WEB_SITE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 676
    :cond_a
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    .line 678
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SHARE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto/16 :goto_1

    .line 679
    :cond_b
    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    .line 680
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SEARCH:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto/16 :goto_1

    .line 686
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

    .line 687
    return-void
.end method

.method private buildBrowsingUserEventContextData(IZ)Ljava/lang/String;
    .locals 9
    .parameter "resultIndex"
    .parameter "isNavigationalResult"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->activityCreatedTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 699
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
    .line 387
    const-string v2, "LOCATION_COORDINATES_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 388
    .local v1, coordinates:[D
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 389
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    .line 390
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLatitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLongitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 391
    const-string v2, "LOCATION_NAME_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    const-string v2, "LOCATION_NAME_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 394
    :cond_0
    const-string v2, "LOCATION_ADDRESS_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const-string v2, "LOCATION_ADDRESS_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 397
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v2

    .line 399
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
    .line 408
    if-eqz p1, :cond_0

    const-string v1, "URL_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "URL_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    :goto_0
    return-object v1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    .line 412
    .local v0, terms:Ljava/lang/String;
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
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
    .line 565
    new-instance v0, Lcom/google/glass/home/search/results/AnswerCardProcessor;

    iget-object v2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/home/search/results/AnswerCardProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 567
    .local v0, cardProcessor:Lcom/google/glass/home/search/results/AnswerCardProcessor;
    iget-object v2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/glass/home/search/results/AnswerCardProcessor;->process(Ljava/lang/String;ZZ)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v1

    .line 569
    .local v1, timelineResults:Lcom/google/glass/home/search/results/ResultsContainer;
    invoke-virtual {v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 621
    :goto_0
    return-void

    .line 573
    :cond_0
    new-instance v2, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;-><init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/home/search/results/ResultsContainer;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private insertMajelSearchInTimeline()V
    .locals 1

    .prologue
    .line 518
    new-instance v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;-><init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 556
    return-void
.end method

.method private invokeBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "userEventContextData"

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    .local v0, browserIntent:Landroid/content/Intent;
    const-string v1, "userEventContextData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 291
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
    .line 452
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/OptionMenu$Item;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 453
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 454
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->getNumber()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 455
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 452
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 458
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
    .line 707
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 29
    .parameter "icicle"

    .prologue
    .line 126
    invoke-super/range {p0 .. p1}, Lcom/google/glass/app/GlassVoiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->activityCreatedTime:Ljava/lang/Long;

    .line 130
    new-instance v24, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct/range {v24 .. v24}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 134
    .local v9, intent:Landroid/content/Intent;
    const-string v24, "startTime"

    const-wide/16 v25, -0x1

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 136
    .local v14, startTime:J
    const-string v24, "recognitionResult"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    .line 137
    const-string v24, "majelResponse"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    .line 139
    const-string v24, "cardResult"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 142
    sget-object v24, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v25, "Null majel proto and no answer card response!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    const/16 v22, 0x1

    .line 148
    .local v22, useMajelResponse:Z
    :goto_1
    const-string v24, "timelineItemId"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    check-cast v24, Lcom/google/glass/timeline/TimelineItemId;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    const/4 v10, 0x1

    .line 153
    .local v10, isInitialResult:Z
    :goto_2
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 155
    if-eqz v22, :cond_6

    .line 158
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->parseFrom([B)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 169
    .local v12, majelResponse:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    sget-boolean v24, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->SAVE_RESPONSE:Z

    if-eqz v24, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->saveMajelResponseProto([BLjava/lang/String;)V

    .line 175
    :cond_2
    new-instance v11, Lcom/google/glass/home/search/results/MajelProcessor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Lcom/google/glass/home/search/results/MajelProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    .local v11, majelProcessor:Lcom/google/glass/home/search/results/MajelProcessor;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v12, v0}, Lcom/google/glass/home/search/results/MajelProcessor;->process(Lcom/google/majel/proto/MajelProtos$MajelResponse;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    .line 193
    .end local v11           #majelProcessor:Lcom/google/glass/home/search/results/MajelProcessor;
    .end local v12           #majelResponse:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v24, v0

    if-nez v24, :cond_9

    .line 194
    new-instance v24, Lcom/google/glass/app/GlassError;

    invoke-direct/range {v24 .. v24}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v25, Lcom/google/glass/home/R$string;->voice_search_no_answer:I

    invoke-virtual/range {v24 .. v25}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 198
    sget-object v24, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    goto/16 :goto_0

    .line 146
    .end local v10           #isInitialResult:Z
    .end local v22           #useMajelResponse:Z
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 150
    .restart local v22       #useMajelResponse:Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 163
    .restart local v10       #isInitialResult:Z
    :catch_0
    move-exception v5

    .line 164
    .local v5, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    sget-object v24, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 178
    .end local v5           #e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_6
    sget-object v24, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v25, "Parsing result as answer card"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v4, Lcom/google/glass/home/search/results/AnswerCardProcessor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Lcom/google/glass/home/search/results/AnswerCardProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    .local v4, cardProcessor:Lcom/google/glass/home/search/results/AnswerCardProcessor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v10, :cond_7

    const/16 v24, 0x1

    move/from16 v25, v24

    :goto_4
    if-nez v10, :cond_8

    const/16 v24, 0x1

    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/glass/home/search/results/AnswerCardProcessor;->process(Ljava/lang/String;ZZ)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    .line 187
    sget-boolean v24, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->SAVE_RESPONSE:Z

    if-eqz v24, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->saveHtmlResponseProto(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 183
    :cond_7
    const/16 v24, 0x0

    move/from16 v25, v24

    goto :goto_4

    :cond_8
    const/16 v24, 0x0

    goto :goto_5

    .line 202
    .end local v4           #cardProcessor:Lcom/google/glass/home/search/results/AnswerCardProcessor;
    :cond_9
    sget-object v24, Lcom/google/glass/util/Labs$Feature;->SOUND_SEARCH:Lcom/google/glass/util/Labs$Feature;

    invoke-static/range {v24 .. v24}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/glass/home/search/results/ResultsContainer;->isStartSoundSearchResult()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 203
    new-instance v13, Landroid/content/Intent;

    const-class v24, Lcom/google/glass/home/search/SoundSearchActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v13, soundSearchIntent:Landroid/content/Intent;
    const-string v24, "trigger_method"

    const/16 v25, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->finish()V

    goto/16 :goto_0

    .line 211
    .end local v13           #soundSearchIntent:Landroid/content/Intent;
    :cond_a
    if-eqz v10, :cond_b

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v24

    sget-object v25, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual/range {v24 .. v25}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 217
    :cond_b
    sget v24, Lcom/google/glass/home/R$id;->results_container:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/FrameLayout;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    sget v25, Lcom/google/glass/home/R$id;->results:I

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPages()Ljava/util/List;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->setResultPages(Ljava/util/List;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    sget v25, Lcom/google/glass/home/R$id;->results_slider:I

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/google/glass/widget/SliderView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsSliderView:Lcom/google/glass/widget/SliderView;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsSliderView:Lcom/google/glass/widget/SliderView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsSliderView:Lcom/google/glass/widget/SliderView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 229
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/google/glass/home/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    .line 230
    .local v23, viewNameForLogging:Ljava/lang/String;
    const-wide/16 v24, -0x1

    cmp-long v24, v14, v24

    if-eqz v24, :cond_f

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "endofSpeech"

    const-wide/16 v26, -0x1

    invoke-virtual/range {v24 .. v27}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 237
    .local v6, endOfSpeechTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v16, v24, v14

    .line 238
    .local v16, timeToResult:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v18, v24, v6

    .line 239
    .local v18, timeToResultFromEndOfSpeech:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "trigger_method"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 241
    .local v20, triggerMethod:I
    const-string v25, "id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v24, 0xe

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v24, 0x0

    const-string v28, "view"

    aput-object v28, v27, v24

    const/16 v24, 0x1

    aput-object v23, v27, v24

    const/16 v24, 0x2

    const-string v28, "time_total"

    aput-object v28, v27, v24

    const/16 v24, 0x3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v27, v24

    const/16 v24, 0x4

    const-string v28, "time_from_eos"

    aput-object v28, v27, v24

    const/16 v24, 0x5

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v27, v24

    const/16 v24, 0x6

    const-string v28, "results"

    aput-object v28, v27, v24

    const/16 v24, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v27, v24

    const/16 v24, 0x8

    const-string v28, "type"

    aput-object v28, v27, v24

    const/16 v24, 0x9

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v27, v24

    const/16 v24, 0xa

    const-string v28, "trigger"

    aput-object v28, v27, v24

    const/16 v24, 0xb

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v27, v24

    const/16 v24, 0xc

    const-string v28, "source"

    aput-object v28, v27, v24

    const/16 v28, 0xd

    if-eqz v22, :cond_e

    const-string v24, "majel"

    :goto_6
    aput-object v24, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, eventTuple:Ljava/lang/String;
    sget-object v24, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_RESULT:Lcom/google/glass/logging/UserEventAction;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 259
    .end local v6           #endOfSpeechTime:J
    .end local v16           #timeToResult:J
    .end local v18           #timeToResultFromEndOfSpeech:J
    .end local v20           #triggerMethod:I
    :goto_7
    sget-object v24, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 261
    if-eqz v10, :cond_0

    .line 262
    if-eqz v22, :cond_10

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->insertMajelSearchInTimeline()V

    .line 270
    :goto_8
    sget-object v24, Lcom/google/glass/util/Labs$Feature;->WEB_BROWSING:Lcom/google/glass/util/Labs$Feature;

    invoke-static/range {v24 .. v24}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, ".com"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, ".org"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, ".edu"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, ".net"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, ".gov"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 274
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v3

    .line 275
    .local v3, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v21

    .line 276
    .local v21, url:Ljava/lang/String;
    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->buildBrowsingUserEventContextData(IZ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->invokeBrowser(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v8           #eventTuple:Ljava/lang/String;
    .end local v21           #url:Ljava/lang/String;
    .restart local v6       #endOfSpeechTime:J
    .restart local v16       #timeToResult:J
    .restart local v18       #timeToResultFromEndOfSpeech:J
    .restart local v20       #triggerMethod:I
    :cond_e
    const-string v24, "gws"

    goto/16 :goto_6

    .line 253
    .end local v6           #endOfSpeechTime:J
    .end local v16           #timeToResult:J
    .end local v18           #timeToResultFromEndOfSpeech:J
    .end local v20           #triggerMethod:I
    :cond_f
    const-string v24, "view"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "results"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 256
    .restart local v8       #eventTuple:Ljava/lang/String;
    sget-object v24, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/logging/UserEventAction;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 265
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->insertAnswerCardSearchInTimeline()V

    goto/16 :goto_8
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 463
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 465
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 467
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    .line 470
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
    .line 506
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->onFingerCountChanged(IZ)Z

    move-result v0

    .line 509
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 13
    .parameter "selectedItem"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 332
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v5

    .line 334
    .local v5, selectedItemId:I
    iget-object v11, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v11}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedItemPosition()I

    move-result v4

    .line 335
    .local v4, resultIndex:I
    iget-object v11, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v11, v4}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 337
    .local v0, bundle:Landroid/os/Bundle;
    const/16 v11, 0x8

    if-ne v5, v11, :cond_1

    .line 338
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 340
    .local v3, phoneNumber:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v3}, Lcom/google/glass/bluetooth/BluetoothHeadset;->attemptDial(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z

    .line 379
    .end local v3           #phoneNumber:Ljava/lang/String;
    :goto_1
    return v9

    .line 338
    :cond_0
    const-string v10, "PHONE_NUMBER_KEY"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 342
    :cond_1
    const/16 v11, 0x9

    if-ne v5, v11, :cond_4

    .line 343
    if-eqz v0, :cond_2

    .line 344
    invoke-static {v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getLocation(Landroid/os/Bundle;)Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v1

    .line 345
    .local v1, location:Lcom/google/googlex/glass/common/proto/Location;
    if-eqz v1, :cond_2

    .line 346
    invoke-static {v1, p0}, Lcom/google/glass/maps/NavigationLauncher;->navigate(Lcom/google/googlex/glass/common/proto/Location;Landroid/content/Context;)Z

    .line 347
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->finish()V

    goto :goto_1

    .line 352
    .end local v1           #location:Lcom/google/googlex/glass/common/proto/Location;
    :cond_2
    sget-object v9, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    const-string v11, "Navigation request did not include bundle with lat/lon"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v9, v10

    .line 379
    goto :goto_1

    .line 353
    :cond_4
    const/4 v11, 0x5

    if-ne v5, v11, :cond_6

    .line 354
    iget-object v11, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v11}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/google/glass/home/search/results/TranslationAnswerView;

    if-eqz v11, :cond_5

    .line 355
    sget-object v10, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "speaking translation for item "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v10, "URL_KEY"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, networkUri:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-instance v11, Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;

    invoke-direct {v11, p0, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;-><init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 365
    .end local v2           #networkUri:Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v11}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/google/glass/home/search/results/WebAnswerView;

    if-eqz v11, :cond_3

    .line 366
    sget-object v10, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Speaking TTS for item "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v10, "TTS_FORMAT_STRING_KEY"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, ttsFormatString:Ljava/lang/String;
    const-string v10, "TTS_LANGUAGE_KEY"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, ttsLang:Ljava/lang/String;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v6, v7, v10}, Lcom/google/glass/timeline/TimelineHelper;->formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto/16 :goto_1

    .line 372
    .end local v6           #ttsFormatString:Ljava/lang/String;
    .end local v7           #ttsLang:Ljava/lang/String;
    :cond_6
    const/16 v11, 0xd

    if-ne v5, v11, :cond_3

    .line 373
    invoke-direct {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getViewWebsiteUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, url:Ljava/lang/String;
    invoke-direct {p0, v4, v10}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->buildBrowsingUserEventContextData(IZ)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->invokeBrowser(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->deactivate()V

    .line 316
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    .line 317
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 422
    iget-object v3, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-nez v3, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v2

    .line 426
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v3}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getSelectedItemPosition()I

    move-result v1

    .line 427
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

    .line 435
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v2, v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getOptionMenuAt(I)Lcom/google/glass/widget/OptionMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 438
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/OptionMenu$Item;>;"
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 439
    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->removeMenuItemsWithAction(Ljava/util/List;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)V

    .line 442
    :cond_2
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->isNavigationAllowed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 443
    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->removeMenuItemsWithAction(Ljava/util/List;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)V

    .line 446
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->addAllItems(Ljava/util/List;)V

    .line 448
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
    .line 477
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 478
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

    .line 482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    .line 298
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->activate()V

    .line 301
    :cond_0
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 487
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    :goto_0
    return v0

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v1}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 492
    iget-object v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 495
    iget-boolean v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->swipeLogged:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-virtual {p2, v1}, Lcom/google/glass/input/SwipeDirection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 497
    iput-boolean v0, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->swipeLogged:Z

    .line 501
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 321
    sget v0, Lcom/google/glass/home/R$layout;->voice_search_results_activity:I

    return v0
.end method

.method protected shouldAllowLongPress()Z
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

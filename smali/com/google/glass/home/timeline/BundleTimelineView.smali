.class public Lcom/google/glass/home/timeline/BundleTimelineView;
.super Lcom/google/glass/home/timeline/TimelineView;
.source "BundleTimelineView.java"


# static fields
.field private static final MAX_BUNDLE_ITEMS:I = 0x64

.field private static final NUM_VIEWS_FOR_READ_MORE:I = 0x20

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isReadMore:Z

.field private parentItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private viewedPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/BundleTimelineView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    .line 75
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->isCursorEmpty(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/home/timeline/BundleTimelineView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/BundleTimelineView;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->loadItems(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/home/timeline/BundleTimelineView;->applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/BundleTimelineView;Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/home/timeline/BundleTimelineView;->appendRemainingText(Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/home/timeline/BundleTimelineView;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    return-object v0
.end method

.method private appendRemainingText(Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V
    .locals 6
    .parameter
    .parameter "loader"
    .parameter "adapter"
    .parameter
    .parameter "sliderView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;",
            "Lcom/google/glass/home/timeline/TimelineItemLoader;",
            "Lcom/google/glass/home/timeline/TimelineItemAdapter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;",
            "Lcom/google/glass/widget/SliderView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .local p4, parentItemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 358
    new-instance v0, Lcom/google/glass/home/timeline/BundleTimelineView$4;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/BundleTimelineView$4;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;Ljava/util/Map;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/List;Lcom/google/glass/widget/SliderView;)V

    invoke-virtual {p3, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->setRemainingTextListener(Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;)V

    .line 391
    return-void
.end method

.method private applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V
    .locals 4
    .parameter "adapter"
    .parameter "loader"
    .parameter
    .parameter "sliderView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/home/timeline/TimelineItemAdapter;",
            "Lcom/google/glass/home/timeline/TimelineItemLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;",
            "Lcom/google/glass/widget/SliderView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, parentItemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v3, 0x1

    .line 321
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 324
    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->parentItemMap:Ljava/util/Map;

    .line 327
    invoke-interface {p2}, Lcom/google/glass/home/timeline/TimelineItemLoader;->getCount()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 330
    new-array v0, v3, [Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/glass/home/timeline/BundleTimelineView$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/glass/home/timeline/BundleTimelineView$3;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;->setAdapters([Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    .line 350
    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/BundleTimelineView;->updateViews(Z)V

    .line 351
    return-void
.end method

.method private isCursorEmpty(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 230
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadItems(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x64

    .line 235
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 238
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 239
    .local v0, count:I
    if-le v0, v6, :cond_0

    .line 240
    sget-object v3, Lcom/google/glass/home/timeline/BundleTimelineView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items in this bundle; truncating to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v0, 0x64

    .line 244
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 246
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 247
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    return-object v2
.end method

.method private markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 6
    .parameter "itemId"

    .prologue
    .line 395
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 396
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getChildCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 397
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getCard(I)Landroid/view/View;

    move-result-object v3

    .line 398
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 399
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    sget v4, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 404
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void

    .line 396
    .restart local v1       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getHomePosition()I
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method protected getNumViewsToLoad()I
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->isReadMore:Z

    if-eqz v0, :cond_0

    .line 444
    const/16 v0, 0x20

    .line 446
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineView;->getNumViewsToLoad()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedItemParent()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 3

    .prologue
    .line 412
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineView;->getSelectedItemParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 416
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->parentItemMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->parentItemMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 419
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getSelectedItemParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getSelectedItemParent()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public getViewedPositions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    return-object v0
.end method

.method public init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Z)Landroid/content/CursorLoader;
    .locals 15
    .parameter "activity"
    .parameter "sliderView"
    .parameter "bitmapFactory"
    .parameter "id"
    .parameter "isReadMore"

    .prologue
    .line 102
    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v6, 0x1

    .line 105
    .local v6, descDisplayTime:Z
    :goto_0
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->isReadMore:Z

    .line 108
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 111
    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->getMaxItemTimestamp(Z)J

    move-result-wide v4

    .line 114
    .local v4, maxItemTimestamp:J
    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->getBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForBundleTimeline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/content/CursorLoader;

    move-result-object v14

    .line 118
    .local v14, cursorLoader:Landroid/content/CursorLoader;
    new-instance v7, Lcom/google/glass/home/timeline/BundleTimelineView$1;

    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v13}, Lcom/google/glass/home/timeline/BundleTimelineView$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/app/GlassActivity;ZLcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/SliderView;)V

    .line 225
    .local v7, listener:Landroid/content/Loader$OnLoadCompleteListener;,"Landroid/content/Loader$OnLoadCompleteListener<Landroid/database/Cursor;>;"
    sget-object v1, Lcom/google/glass/home/timeline/BundleTimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v14, v1, v7}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 226
    return-object v14

    .line 102
    .end local v4           #maxItemTimestamp:J
    .end local v6           #descDisplayTime:Z
    .end local v7           #listener:Landroid/content/Loader$OnLoadCompleteListener;,"Landroid/content/Loader$OnLoadCompleteListener<Landroid/database/Cursor;>;"
    .end local v14           #cursorLoader:Landroid/content/CursorLoader;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onFocused(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 432
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineView;->onFocused(I)V

    .line 433
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method splitItems(Ljava/util/List;Ljava/util/Map;Z)Landroid/util/Pair;
    .locals 9
    .parameter
    .parameter
    .parameter "isReadMore"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;",
            "Lcom/google/glass/home/timeline/TimelineItemLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .local p2, parentItemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, allSplit:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 271
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 274
    .local v4, parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v5, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-static {v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v7

    .line 276
    .local v7, viewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    invoke-static {v7, p3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBinder(Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Z)Lcom/google/glass/home/timeline/database/ItemViewBinder;

    move-result-object v8

    invoke-interface {v8, v4, v5}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->splitBundle(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)V

    .line 279
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 280
    .local v6, subItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 284
    .end local v6           #subItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v5           #split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .end local v7           #viewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    :cond_1
    new-instance v3, Lcom/google/glass/home/timeline/BundleTimelineView$2;

    invoke-direct {v3, p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineView$2;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;Ljava/util/List;)V

    .line 314
    .local v3, loader:Lcom/google/glass/home/timeline/TimelineItemLoader;
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    return-object v8
.end method

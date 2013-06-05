.class public Lcom/google/glass/home/timeline/BundleTimelineView;
.super Lcom/google/glass/home/timeline/TimelineView;
.source "BundleTimelineView.java"


# static fields
.field private static final MAX_BUNDLE_ITEMS:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
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
    .line 36
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
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->isCursorEmpty(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/home/timeline/BundleTimelineView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->loadItems(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/BundleTimelineView;->applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/widget/SliderView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/BundleTimelineView;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    return-object v0
.end method

.method private applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/widget/SliderView;)V
    .locals 4
    .parameter "adapter"
    .parameter "loader"
    .parameter "sliderView"

    .prologue
    const/4 v3, 0x1

    .line 229
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 232
    invoke-interface {p2}, Lcom/google/glass/home/timeline/TimelineItemLoader;->getCount()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 235
    new-array v0, v3, [Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/glass/home/timeline/BundleTimelineView$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/glass/home/timeline/BundleTimelineView$3;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;->setAdapters([Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    .line 255
    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/BundleTimelineView;->updateViews(Z)V

    .line 256
    return-void
.end method

.method private isCursorEmpty(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 169
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

    .line 174
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 178
    .local v0, count:I
    if-le v0, v6, :cond_0

    .line 179
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

    .line 180
    const/16 v0, 0x64

    .line 183
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 185
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 186
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    return-object v2
.end method

.method private markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 6
    .parameter "itemId"

    .prologue
    .line 260
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getChildCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 262
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getCard(I)Landroid/view/View;

    move-result-object v3

    .line 263
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 264
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    sget v4, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 269
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void

    .line 261
    .restart local v1       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method createLoader(Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineItemLoader;
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;)",
            "Lcom/google/glass/home/timeline/TimelineItemLoader;"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    new-instance v0, Lcom/google/glass/home/timeline/BundleTimelineView$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView$2;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;Ljava/util/List;)V

    return-object v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
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
    .line 287
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    return-object v0
.end method

.method public init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
    .locals 13
    .parameter "activity"
    .parameter "sliderView"
    .parameter "bitmapFactory"
    .parameter "id"

    .prologue
    .line 72
    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 75
    .local v5, descDisplayTime:Z
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 78
    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getMaxItemTimestamp(Z)J

    move-result-wide v3

    .line 81
    .local v3, maxItemTimestamp:J
    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForBundleTimeline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/content/CursorLoader;

    move-result-object v12

    .line 85
    .local v12, cursorLoader:Landroid/content/CursorLoader;
    new-instance v6, Lcom/google/glass/home/timeline/BundleTimelineView$1;

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object v10, p2

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/google/glass/home/timeline/BundleTimelineView$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/SliderView;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 164
    .local v6, listener:Landroid/content/Loader$OnLoadCompleteListener;,"Landroid/content/Loader$OnLoadCompleteListener<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/google/glass/home/timeline/BundleTimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {v12, v0, v6}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 165
    return-object v12

    .line 72
    .end local v3           #maxItemTimestamp:J
    .end local v5           #descDisplayTime:Z
    .end local v6           #listener:Landroid/content/Loader$OnLoadCompleteListener;,"Landroid/content/Loader$OnLoadCompleteListener<Landroid/database/Cursor;>;"
    .end local v12           #cursorLoader:Landroid/content/CursorLoader;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected onFocused(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineView;->onFocused(I)V

    .line 282
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

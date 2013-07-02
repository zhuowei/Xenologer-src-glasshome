.class public Lcom/google/glass/home/timeline/BundleTimelineView;
.super Lcom/google/glass/home/timeline/TimelineView;
.source "BundleTimelineView.java"


# static fields
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
    .line 32
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
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/home/timeline/BundleTimelineView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/BundleTimelineView;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->clearReadMoreMark(Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method private clearReadMoreMark(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->viewForItem(Lcom/google/glass/timeline/TimelineItemId;)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 172
    sget v1, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 174
    :cond_0
    return-void
.end method

.method private markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->viewForItem(Lcom/google/glass/timeline/TimelineItemId;)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 164
    sget v1, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 166
    :cond_0
    return-void
.end method

.method private viewForItem(Lcom/google/glass/timeline/TimelineItemId;)Landroid/view/View;
    .locals 6
    .parameter "itemId"

    .prologue
    .line 178
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getChildCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getCard(I)Landroid/view/View;

    move-result-object v3

    .line 181
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 182
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #view:Landroid/view/View;
    :goto_1
    return-object v3

    .line 179
    .restart local v1       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getHomePosition()I
    .locals 1

    .prologue
    .line 194
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
    .line 206
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    return-object v0
.end method

.method public init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/home/timeline/NotificationState;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
    .locals 21
    .parameter "activity"
    .parameter "sliderView"
    .parameter "notificationState"
    .parameter "bitmapFactory"
    .parameter "id"

    .prologue
    .line 63
    invoke-virtual/range {p5 .. p5}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v6, 0x1

    .line 66
    .local v6, descDisplayTime:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 69
    invoke-virtual/range {p5 .. p5}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->getMaxItemTimestamp(Z)J

    move-result-wide v4

    .line 72
    .local v4, maxItemTimestamp:J
    invoke-virtual/range {p5 .. p5}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/google/glass/timeline/TimelineItemId;->getBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForBundleTimeline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/content/CursorLoader;

    move-result-object v20

    .line 76
    .local v20, cursorLoader:Landroid/content/CursorLoader;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v12, onLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v7, Lcom/google/glass/home/timeline/BundleTimelineView$1;

    move-object/from16 v8, p0

    move v9, v6

    move-object/from16 v10, p5

    move-object/from16 v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/google/glass/home/timeline/BundleTimelineView$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;ZLcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/widget/SliderView;Ljava/util/List;)V

    .line 114
    .local v7, cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;
    sget-object v1, Lcom/google/glass/home/timeline/BundleTimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v7}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 117
    new-instance v13, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-object/from16 v16, v7

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v19}, Lcom/google/glass/home/timeline/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZLcom/google/glass/home/timeline/NotificationState;)V

    .line 122
    .local v13, adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    new-instance v1, Lcom/google/glass/home/timeline/BundleTimelineView$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/glass/home/timeline/BundleTimelineView$2;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;)V

    invoke-virtual {v13, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->setContentSizedListener(Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)V

    .line 134
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/glass/home/timeline/BundleTimelineView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13, v7, v12}, Lcom/google/glass/home/timeline/BundleTimelineView$3;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/database/TimelineCursorManager;Ljava/util/List;)V

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->setAdapters([Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    .line 157
    return-object v20

    .line 63
    .end local v4           #maxItemTimestamp:J
    .end local v6           #descDisplayTime:Z
    .end local v7           #cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;
    .end local v12           #onLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v13           #adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    .end local v20           #cursorLoader:Landroid/content/CursorLoader;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onFocused(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineView;->onFocused(I)V

    .line 201
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.class public Lcom/google/glass/home/timeline/ReadMoreTimelineView;
.super Lcom/google/glass/home/timeline/TimelineView;
.source "ReadMoreTimelineView.java"


# static fields
.field private static final NUM_VIEWS_FOR_READ_MORE:I = 0x20


# instance fields
.field private parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/ReadMoreTimelineView;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/widget/SliderView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->appendRemainingText(Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/widget/SliderView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/ReadMoreTimelineView;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method private appendRemainingText(Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/widget/SliderView;)V
    .locals 1
    .parameter
    .parameter "loader"
    .parameter "adapter"
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
            "Lcom/google/glass/widget/SliderView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 202
    new-instance v0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/List;Lcom/google/glass/widget/SliderView;)V

    invoke-virtual {p3, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->setRemainingTextListener(Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;)V

    .line 234
    return-void
.end method

.method private applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/widget/SliderView;)V
    .locals 4
    .parameter "adapter"
    .parameter "loader"
    .parameter "parentItem"
    .parameter "sliderView"

    .prologue
    const/4 v3, 0x1

    .line 166
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 169
    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 172
    invoke-interface {p2}, Lcom/google/glass/home/timeline/TimelineItemLoader;->getCount()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 175
    new-array v0, v3, [Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/glass/home/timeline/ReadMoreTimelineView$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$3;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->setAdapters([Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    .line 195
    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->updateViews(Z)V

    .line 196
    return-void
.end method


# virtual methods
.method public getHomePosition()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method protected getNumViewsToLoad()I
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0x20

    return v0
.end method

.method public getSelectedItemParent()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public bridge synthetic getSelectedItemParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->getSelectedItemParent()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 7
    .parameter "activity"
    .parameter "sliderView"
    .parameter "bitmapFactory"
    .parameter "id"

    .prologue
    .line 71
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/app/GlassActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/SliderView;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method splitItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/util/Pair;
    .locals 4
    .parameter "parentItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ")",
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
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v2

    .line 131
    .local v2, viewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBinder(Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Z)Lcom/google/glass/home/timeline/database/ItemViewBinder;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->splitBundle(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)V

    .line 134
    new-instance v0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Ljava/util/List;)V

    .line 160
    .local v0, loader:Lcom/google/glass/home/timeline/TimelineItemLoader;
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

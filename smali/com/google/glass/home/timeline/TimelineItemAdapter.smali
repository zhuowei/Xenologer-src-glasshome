.class public Lcom/google/glass/home/timeline/TimelineItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimelineItemAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineItemAdapter$3;,
        Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;,
        Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;
    }
.end annotation


# static fields
.field private static final CONTAINER_CACHE_CAPACITY:I = 0xa

.field private static final TAG:Ljava/lang/String; = null

.field private static final VIEW_CACHE_CAPACITY:I = 0xa


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final bundleCornerDrawable:Landroid/graphics/drawable/Drawable;

.field private final bundleSheenDrawable:Landroid/graphics/drawable/Drawable;

.field private final containerCache:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/glass/home/timeline/TimelineItemContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final inBundle:Z

.field private final isReadMore:Z

.field private remainingTextListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;

.field private final timelineItemLoader:Lcom/google/glass/home/timeline/TimelineItemLoader;

.field private final viewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "timelineItemLoader"
    .parameter "inBundle"
    .parameter "isReadMore"

    .prologue
    const/16 v8, 0xa

    .line 128
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 85
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->containerCache:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 93
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    .line 129
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 131
    iput-object p3, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    .line 132
    iput-boolean p4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->inBundle:Z

    .line 133
    iput-boolean p5, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z

    .line 137
    if-nez p4, :cond_0

    .line 138
    invoke-static {}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->values()[Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 139
    .local v5, type:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 140
    .local v2, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    invoke-static {v5, p5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBinder(Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Z)Lcom/google/glass/home/timeline/database/ItemViewBinder;

    move-result-object v1

    .line 141
    .local v1, binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    iget-object v6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    invoke-interface {v1}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->getLayout()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;

    invoke-direct {v7, p0, p1, v2, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;-><init>(Lcom/google/glass/home/timeline/TimelineItemAdapter;Landroid/content/Context;Ljava/util/concurrent/LinkedBlockingQueue;Lcom/google/glass/home/timeline/database/ItemViewBinder;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v0           #arr$:[Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v1           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .end local v2           #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #type:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->bundle_corner:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->bundle_sheen:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleSheenDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBoundViewType(Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearDataFromContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBundleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleSheenDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->destroyContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->addViewToContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->remainingTextListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->inBundle:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleCornerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private addViewToContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;
    .locals 5
    .parameter "container"
    .parameter "viewType"
    .parameter "binder"

    .prologue
    .line 421
    invoke-interface {p3}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->getLayout()I

    move-result v2

    .line 424
    .local v2, layout:I
    const/4 v3, 0x0

    .line 425
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 426
    .local v0, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #view:Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 429
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    if-nez v3, :cond_1

    .line 430
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 431
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 435
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p1, v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->addView(Landroid/view/View;)V

    .line 438
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_type:I

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 441
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v3, v4, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 444
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4, v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 446
    return-object v3
.end method

.method private bind(ILcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 2
    .parameter "position"
    .parameter "container"

    .prologue
    .line 255
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 258
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;-><init>(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 380
    .local v0, readCallback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;
    sget v1, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_read_callback:I

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    invoke-interface {v1, p1, v0}, Lcom/google/glass/home/timeline/TimelineItemLoader;->asyncRead(ILcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;)V

    .line 386
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v1, p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 387
    return-void
.end method

.method private cancelReadCallback(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 3
    .parameter "container"

    .prologue
    const/4 v2, 0x0

    .line 548
    sget v1, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_read_callback:I

    invoke-virtual {p1, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;

    .line 551
    .local v0, readCallback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;
    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;->cancel()V

    .line 553
    sget v1, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_read_callback:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 554
    sget v1, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 555
    return-void
.end method

.method private clearDataFromContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V
    .locals 5
    .parameter "container"
    .parameter "willBindSameItem"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 475
    invoke-virtual {p1, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setBundleEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 476
    invoke-virtual {p1, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setReadMoreEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 479
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 480
    .local v1, boundView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 483
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/database/ItemViewBinder;

    .line 487
    .local v0, binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    invoke-interface {v0, v1, p2}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->clear(Landroid/view/View;Z)V

    .line 490
    invoke-virtual {p1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v1, v4, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 491
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 492
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->removeViewsInLayout(II)V

    goto :goto_0

    .line 497
    .end local v0           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearItemTags(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 498
    return-void
.end method

.method private clearItemTags(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 2
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    .line 540
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 541
    sget v0, Lcom/google/glass/home/R$id;->tag_item_crc32:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 542
    sget v0, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 543
    sget v0, Lcom/google/glass/home/R$id;->tag_item_time_label_text:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 544
    return-void
.end method

.method private destroyContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 6
    .parameter "container"

    .prologue
    const/4 v5, 0x0

    .line 504
    invoke-virtual {p1, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setBundleEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 505
    invoke-virtual {p1, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setReadMoreEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 508
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 509
    .local v1, boundView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 510
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 513
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/database/ItemViewBinder;

    .line 515
    .local v0, binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 518
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->clear(Landroid/view/View;Z)V

    .line 521
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->removeAllViews()V

    .line 522
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->removeContainedCard()V

    .line 525
    invoke-interface {v0}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->getLayout()I

    move-result v3

    .line 526
    .local v3, layout:I
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 527
    .local v2, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    if-nez v2, :cond_0

    .line 528
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v2           #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    const/16 v4, 0xa

    invoke-direct {v2, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 529
    .restart local v2       #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 531
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 535
    .end local v0           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .end local v2           #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    .end local v3           #layout:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearItemTags(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 536
    return-void
.end method

.method static getBinder(Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Z)Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .locals 2
    .parameter "type"
    .parameter "isReadMore"

    .prologue
    .line 559
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$3;->$SwitchMap$com$google$glass$home$timeline$TimelineItemAdapter$ViewType:[I

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 580
    new-instance v0, Lcom/google/glass/home/timeline/database/TextItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/TextItemViewBinder;-><init>()V

    :goto_0
    return-object v0

    .line 561
    :pswitch_0
    new-instance v0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;-><init>()V

    goto :goto_0

    .line 563
    :pswitch_1
    if-eqz p1, :cond_0

    .line 564
    new-instance v0, Lcom/google/glass/home/timeline/database/ReadMoreMessageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/ReadMoreMessageItemViewBinder;-><init>()V

    goto :goto_0

    .line 566
    :cond_0
    new-instance v0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;-><init>()V

    goto :goto_0

    .line 569
    :pswitch_2
    new-instance v0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder;-><init>()V

    goto :goto_0

    .line 571
    :pswitch_3
    new-instance v0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder;-><init>()V

    goto :goto_0

    .line 573
    :pswitch_4
    new-instance v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;-><init>()V

    goto :goto_0

    .line 575
    :pswitch_5
    new-instance v0, Lcom/google/glass/home/timeline/database/CallItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/CallItemViewBinder;-><init>()V

    goto :goto_0

    .line 577
    :pswitch_6
    new-instance v0, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;-><init>()V

    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getBoundViewType(Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .locals 2
    .parameter "container"

    .prologue
    .line 406
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 407
    .local v0, boundView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 408
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 410
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBundleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 605
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 607
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 608
    return-object v0
.end method

.method public static getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":cont"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->TEXT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 220
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasHtml()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HTML:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 180
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "proto/search"

    aput-object v1, v0, v2

    const-string v1, "application/glass+html"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->SEARCH:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 187
    :cond_2
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->VIDEO:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 192
    :cond_3
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->IMAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 198
    :cond_4
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    :cond_5
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->MESSAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 203
    :cond_6
    new-array v0, v3, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->HANGOUT:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HANGOUT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 208
    :cond_7
    new-array v0, v3, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->CALL:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 214
    :cond_8
    new-array v0, v4, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 216
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->MESSAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 220
    :cond_9
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->TEXT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0
.end method

.method static isSameItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Long;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Long;)Z
    .locals 1
    .parameter "first"
    .parameter "firstCrc32"
    .parameter "second"
    .parameter "secondCrc32"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 398
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 399
    invoke-virtual {p1, p3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 401
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    invoke-interface {v0}, Lcom/google/glass/home/timeline/TimelineItemLoader;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 596
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 601
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 227
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->containerCache:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    .line 229
    .local v0, cached:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    if-eqz v0, :cond_0

    .line 230
    move-object v1, v0

    .line 236
    .local v1, container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bind(ILcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 239
    return-object v1

    .line 232
    .end local v1           #container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    :cond_0
    new-instance v1, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;-><init>(Landroid/content/Context;)V

    .restart local v1       #container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x1

    return v0
.end method

.method public rebind(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "view"

    .prologue
    .line 244
    move-object v0, p2

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    .line 247
    .local v0, container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->cancelReadCallback(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 250
    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bind(ILcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 251
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 2
    .parameter "recycle"

    .prologue
    .line 451
    move-object v0, p1

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    .line 454
    .local v0, container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->cancelReadCallback(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 457
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->destroyContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 460
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->containerCache:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 461
    return-void
.end method

.method public setRemainingTextListener(Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;)V
    .locals 0
    .parameter "remainingTextListener"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->remainingTextListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;

    .line 164
    return-void
.end method

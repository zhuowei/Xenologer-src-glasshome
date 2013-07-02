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
        Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;,
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

.field private contentSizedListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;

.field private final context:Landroid/content/Context;

.field private final inBundle:Z

.field private final isReadMore:Z

.field private notificationState:Lcom/google/glass/home/timeline/NotificationState;

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
    .line 52
    const-class v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZLcom/google/glass/home/timeline/NotificationState;)V
    .locals 9
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "timelineItemLoader"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "notificationState"

    .prologue
    const/16 v8, 0xa

    .line 148
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 99
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->containerCache:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 107
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    .line 149
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 151
    iput-object p3, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    .line 152
    iput-boolean p4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->inBundle:Z

    .line 153
    iput-boolean p5, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z

    .line 154
    iput-object p6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->notificationState:Lcom/google/glass/home/timeline/NotificationState;

    .line 158
    if-nez p4, :cond_0

    .line 159
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

    .line 160
    .local v5, type:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 161
    .local v2, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    invoke-static {v5, p5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBinder(Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Z)Lcom/google/glass/home/timeline/database/ItemViewBinder;

    move-result-object v1

    .line 162
    .local v1, binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    iget-object v6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    invoke-interface {v1}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->getLayout()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;

    invoke-direct {v7, p0, p1, v2, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;-><init>(Lcom/google/glass/home/timeline/TimelineItemAdapter;Landroid/content/Context;Ljava/util/concurrent/LinkedBlockingQueue;Lcom/google/glass/home/timeline/database/ItemViewBinder;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
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

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->bundle_sheen:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleSheenDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
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
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearDataFromContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleCornerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBundleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleSheenDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->destroyContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
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
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->addViewToContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/home/timeline/NotificationState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->notificationState:Lcom/google/glass/home/timeline/NotificationState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->remainingTextListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->contentSizedListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->inBundle:Z

    return v0
.end method

.method private addViewToContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;
    .locals 5
    .parameter "container"
    .parameter "viewType"
    .parameter "binder"

    .prologue
    .line 476
    invoke-interface {p3}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->getLayout()I

    move-result v2

    .line 479
    .local v2, layout:I
    const/4 v3, 0x0

    .line 480
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 481
    .local v0, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #view:Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 484
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    if-nez v3, :cond_1

    .line 485
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 486
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 490
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p1, v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->addView(Landroid/view/View;)V

    .line 493
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_type:I

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 496
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v3, v4, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 499
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4, v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 501
    return-object v3
.end method

.method private bind(ILcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 2
    .parameter "position"
    .parameter "container"

    .prologue
    .line 284
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 287
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;-><init>(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 435
    .local v0, readCallback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;
    sget v1, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_read_callback:I

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 438
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    invoke-interface {v1, p1, v0}, Lcom/google/glass/home/timeline/TimelineItemLoader;->asyncRead(ILcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;)V

    .line 441
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v1, p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 442
    return-void
.end method

.method private cancelReadCallback(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 3
    .parameter "container"

    .prologue
    const/4 v2, 0x0

    .line 639
    sget v1, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_read_callback:I

    invoke-virtual {p1, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;

    .line 642
    .local v0, readCallback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;
    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;->cancel()V

    .line 644
    sget v1, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_read_callback:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 645
    sget v1, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 646
    return-void
.end method

.method private clearContainerViews(Lcom/google/glass/home/timeline/TimelineItemContainerView;Landroid/view/View;)V
    .locals 6
    .parameter "container"
    .parameter "boundView"

    .prologue
    .line 599
    sget v5, Lcom/google/glass/home/R$id;->tag_owned_views:I

    invoke-virtual {p1, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 603
    .local v3, ownedViews:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getChildCount()I

    move-result v0

    .line 604
    .local v0, count:I
    const/4 v1, 0x0

    .line 605
    .local v1, foundBoundView:Z
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 606
    invoke-virtual {p1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 608
    .local v4, view:Landroid/view/View;
    if-eq v4, p2, :cond_1

    .line 610
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 611
    invoke-virtual {p1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->removeViewAt(I)V

    .line 605
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 616
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 620
    .end local v4           #view:Landroid/view/View;
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 621
    return-void

    .line 620
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private clearDataFromContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V
    .locals 3
    .parameter "container"
    .parameter "willBindSameItem"

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-virtual {p1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setBundleEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 530
    invoke-virtual {p1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setReadMoreEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 533
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 534
    .local v1, boundView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 536
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/database/ItemViewBinder;

    .line 540
    .local v0, binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    invoke-interface {v0, v1, p2}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->clear(Landroid/view/View;Z)V

    .line 544
    invoke-direct {p0, p1, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearContainerViews(Lcom/google/glass/home/timeline/TimelineItemContainerView;Landroid/view/View;)V

    .line 548
    .end local v0           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearItemTags(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 549
    return-void
.end method

.method private clearItemTags(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 3
    .parameter "container"

    .prologue
    const/4 v2, 0x0

    .line 625
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 626
    sget v1, Lcom/google/glass/home/R$id;->tag_item_crc32:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 627
    sget v1, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 628
    sget v1, Lcom/google/glass/home/R$id;->tag_item_time_label_text:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 631
    sget v1, Lcom/google/glass/home/R$id;->tag_notification_state_listener:I

    invoke-virtual {p1, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/NotificationState$Listener;

    .line 633
    .local v0, notificationStateListener:Lcom/google/glass/home/timeline/NotificationState$Listener;
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->notificationState:Lcom/google/glass/home/timeline/NotificationState;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/timeline/NotificationState;->removeListener(Lcom/google/glass/home/timeline/NotificationState$Listener;)V

    .line 634
    sget v1, Lcom/google/glass/home/R$id;->tag_notification_state_listener:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 635
    return-void
.end method

.method private destroyContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 6
    .parameter "container"

    .prologue
    const/4 v5, 0x0

    .line 554
    invoke-virtual {p1, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setBundleEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 555
    invoke-virtual {p1, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setReadMoreEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 558
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 559
    .local v1, boundView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 560
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 563
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/database/ItemViewBinder;

    .line 565
    .local v0, binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 568
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->clear(Landroid/view/View;Z)V

    .line 571
    invoke-direct {p0, p1, v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearContainerViews(Lcom/google/glass/home/timeline/TimelineItemContainerView;Landroid/view/View;)V

    .line 572
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->removeContainedView()V

    .line 573
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 576
    invoke-interface {v0}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->getLayout()I

    move-result v3

    .line 577
    .local v3, layout:I
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 578
    .local v2, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    if-nez v2, :cond_0

    .line 579
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v2           #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    const/16 v4, 0xa

    invoke-direct {v2, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 580
    .restart local v2       #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 586
    .end local v0           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .end local v2           #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    .end local v3           #layout:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearItemTags(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 587
    return-void
.end method

.method static getBinder(Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Z)Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .locals 2
    .parameter "type"
    .parameter "isReadMore"

    .prologue
    .line 650
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$3;->$SwitchMap$com$google$glass$home$timeline$TimelineItemAdapter$ViewType:[I

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 671
    new-instance v0, Lcom/google/glass/home/timeline/database/TextItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/TextItemViewBinder;-><init>()V

    :goto_0
    return-object v0

    .line 652
    :pswitch_0
    new-instance v0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;-><init>()V

    goto :goto_0

    .line 654
    :pswitch_1
    if-eqz p1, :cond_0

    .line 655
    new-instance v0, Lcom/google/glass/home/timeline/database/ReadMoreMessageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/ReadMoreMessageItemViewBinder;-><init>()V

    goto :goto_0

    .line 657
    :cond_0
    new-instance v0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;-><init>()V

    goto :goto_0

    .line 660
    :pswitch_2
    new-instance v0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder;-><init>()V

    goto :goto_0

    .line 662
    :pswitch_3
    new-instance v0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder;-><init>()V

    goto :goto_0

    .line 664
    :pswitch_4
    new-instance v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;-><init>()V

    goto :goto_0

    .line 666
    :pswitch_5
    new-instance v0, Lcom/google/glass/home/timeline/database/CallItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/CallItemViewBinder;-><init>()V

    goto :goto_0

    .line 668
    :pswitch_6
    new-instance v0, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;-><init>()V

    goto :goto_0

    .line 650
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
    .line 461
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 462
    .local v0, boundView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 463
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 465
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

    .line 696
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 698
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 699
    return-object v0
.end method

.method public static getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":cont"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->TEXT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 250
    :goto_0
    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasHtml()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HTML:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 206
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "proto/search"

    aput-object v1, v0, v2

    const-string v1, "application/glass+html"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->SEARCH:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 212
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "application/vnd.google-glass.phone-call-proto"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->CALL:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 217
    :cond_3
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->VIDEO:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 222
    :cond_4
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->IMAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 228
    :cond_5
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    :cond_6
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->MESSAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 233
    :cond_7
    new-array v0, v3, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->HANGOUT:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HANGOUT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 238
    :cond_8
    new-array v0, v3, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 239
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->CALL:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto :goto_0

    .line 244
    :cond_9
    new-array v0, v4, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 246
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->MESSAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto/16 :goto_0

    .line 250
    :cond_a
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->TEXT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    goto/16 :goto_0
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
    .line 453
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 454
    invoke-virtual {p1, p3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 456
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
    .line 682
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    invoke-interface {v0}, Lcom/google/glass/home/timeline/TimelineItemLoader;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 687
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 692
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 256
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->containerCache:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    .line 258
    .local v0, cached:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    if-eqz v0, :cond_0

    .line 259
    move-object v1, v0

    .line 265
    .local v1, container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bind(ILcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 268
    return-object v1

    .line 261
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
    .line 677
    const/4 v0, 0x1

    return v0
.end method

.method public rebind(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "view"

    .prologue
    .line 273
    move-object v0, p2

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    .line 276
    .local v0, container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->cancelReadCallback(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->bind(ILcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 280
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 2
    .parameter "recycle"

    .prologue
    .line 506
    move-object v0, p1

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    .line 509
    .local v0, container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->cancelReadCallback(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 512
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->destroyContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 515
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->containerCache:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 516
    return-void
.end method

.method public setContentSizedListener(Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)V
    .locals 0
    .parameter "contentSizedListener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->contentSizedListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;

    .line 190
    return-void
.end method

.method public setRemainingTextListener(Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;)V
    .locals 0
    .parameter "remainingTextListener"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter;->remainingTextListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;

    .line 185
    return-void
.end method

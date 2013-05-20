.class public Lcom/google/glass/util/DeferredContentLoader;
.super Ljava/lang/Object;
.source "DeferredContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXECUTOR:Ljava/util/concurrent/Executor; = null

.field private static final MAX_DELAY_BASE:J = 0x96L

.field private static final MAX_DELAY_INCREMENT_PER_ACTIVE_TASK:J = 0x32L

.field private static final MAX_PENDING_TIME_BEFORE_FORCED_CANCEL:J = 0xbb8L

.field private static final MIN_ESTIMATED_TIME_TO_CANCEL:J = 0xfaL

.field static final SCROLL_WINDOW_SIZE:I = 0x5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = null

.field private static final TARGET_CONCURRENCY:I = 0x1

.field static final THREAD_COUNT:I = 0xa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final executePendingRunnable:Ljava/lang/Runnable;

.field private static final mainThreadHandler:Landroid/os/Handler;

.field private static numActiveTasks:I

.field private static pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static spareTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/util/DeferredContentLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->TAG:Ljava/lang/String;

    .line 44
    const/16 v0, 0xa

    new-instance v1, Lcom/google/glass/util/PriorityThreadFactory;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/util/DeferredContentLoader;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    .line 95
    new-instance v0, Lcom/google/glass/util/DeferredContentLoader$1;

    invoke-direct {v0}, Lcom/google/glass/util/DeferredContentLoader$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->executePendingTasks()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    return v0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 28
    sget v0, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    return v0
.end method

.method static synthetic access$310()I
    .locals 2

    .prologue
    .line 28
    sget v0, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    return v0
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static calculateTimeToCancel(IFFI)F
    .locals 6
    .parameter "anticipatedSettlePosition"
    .parameter "scrollPosition"
    .parameter "scrollVelocity"
    .parameter "scrollItemPosition"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v1, 0x7f80

    const/high16 v5, 0x447a

    const/high16 v4, 0x4020

    const/4 v2, 0x0

    .line 486
    if-ltz p3, :cond_0

    .line 487
    sub-int v3, p3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 489
    .local v0, distanceToAnticipatedCenter:I
    const/4 v3, 0x2

    if-gt v0, v3, :cond_1

    .line 513
    .end local v0           #distanceToAnticipatedCenter:I
    :cond_0
    :goto_0
    return v1

    .line 496
    .restart local v0       #distanceToAnticipatedCenter:I
    :cond_1
    cmpl-float v1, p2, v2

    if-lez v1, :cond_2

    .line 497
    int-to-float v1, p3

    add-float/2addr v1, v4

    sub-float/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v5

    div-float/2addr v1, p2

    goto :goto_0

    .line 500
    :cond_2
    cmpg-float v1, p2, v2

    if-gez v1, :cond_3

    .line 501
    int-to-float v1, p3

    sub-float/2addr v1, v4

    sub-float v1, p1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v5

    neg-float v2, p2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 507
    goto :goto_0
.end method

.method public static cancel(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 580
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->cancel(Z)V

    .line 581
    return-void
.end method

.method public static cancel(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 590
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 591
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->cancel(Z)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_0
    return-void
.end method

.method private static executePendingTasks()V
    .locals 25

    .prologue
    .line 335
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_1

    .line 429
    .local v6, i:I
    .local v18, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    :cond_0
    :goto_0
    return-void

    .line 340
    .end local v6           #i:I
    .end local v18           #tmp:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    :cond_1
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 341
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_1
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 342
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 343
    .local v15, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-virtual {v15}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v19

    if-nez v19, :cond_2

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;
    invoke-static {v15}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$700(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 344
    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->prepareForScrollPrioritization()V
    invoke-static {v15}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$800(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 346
    :cond_2
    invoke-virtual {v15}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v19

    if-nez v19, :cond_3

    .line 347
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 350
    .end local v15           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_4
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    .line 351
    .restart local v18       #tmp:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    sput-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    .line 352
    sput-object v18, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    .line 353
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-eqz v19, :cond_0

    .line 358
    const/4 v14, 0x0

    .line 359
    .local v14, scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<**>;"
    const/4 v6, 0x0

    :goto_2
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_5

    .line 360
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 361
    .restart local v15       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    invoke-static {v15}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$900(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 362
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    invoke-static {v15}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$900(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v14

    .line 367
    .end local v15           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_5
    const/4 v3, -0x1

    .line 368
    .local v3, anticipatedSettlePosition:I
    const/4 v12, 0x0

    .line 369
    .local v12, scrollPosition:F
    const/4 v13, 0x0

    .line 370
    .local v13, scrollVelocity:F
    if-eqz v14, :cond_7

    .line 372
    invoke-virtual {v14}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getScrollPosition()F

    move-result v12

    .line 373
    invoke-virtual {v14}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getScrollVelocity()F

    move-result v13

    .line 374
    invoke-virtual {v14}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getAnticipatedSettlePosition()I

    move-result v3

    .line 375
    const/4 v6, 0x0

    :goto_3
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    .line 376
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 377
    .restart local v15       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    iget v0, v15, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v3, v12, v13, v0}, Lcom/google/glass/util/DeferredContentLoader;->calculateTimeToCancel(IFFI)F

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->estimatedTimeToCancel:F

    .line 375
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 359
    .end local v3           #anticipatedSettlePosition:I
    .end local v12           #scrollPosition:F
    .end local v13           #scrollVelocity:F
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 384
    .end local v15           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    .restart local v3       #anticipatedSettlePosition:I
    .restart local v12       #scrollPosition:F
    .restart local v13       #scrollVelocity:F
    :cond_7
    sget v19, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 385
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-static {v0, v3, v12, v13}, Lcom/google/glass/util/DeferredContentLoader;->startBestTask(Ljava/util/List;IFF)Z

    move-result v19

    if-nez v19, :cond_7

    .line 393
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 394
    .local v4, currentTime:J
    const/4 v6, 0x0

    :goto_4
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_a

    .line 395
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 396
    .restart local v15       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J
    invoke-static {v15}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1000(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)J

    move-result-wide v19

    sub-long v16, v4, v19

    .line 397
    .local v16, timePending:J
    iget v0, v15, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->estimatedTimeToCancel:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_9

    const-wide/16 v19, 0xbb8

    cmp-long v19, v16, v19

    if-lez v19, :cond_9

    .line 399
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cancelling LEAKED task "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " pending for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->cancel(Z)V

    .line 401
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    add-int/lit8 v7, v6, -0x1

    .end local v6           #i:I
    .local v7, i:I
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v6, v7

    .line 394
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 407
    .end local v15           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    .end local v16           #timePending:J
    :cond_a
    const-wide/16 v19, 0x96

    sget v21, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x32

    mul-long v21, v21, v23

    add-long v8, v19, v21

    .line 408
    .local v8, maxAdjustedDelay:J
    move-wide v10, v4

    .line 409
    .local v10, nextPendingTaskAddTime:J
    const/4 v6, 0x0

    :goto_5
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_d

    .line 410
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 411
    .restart local v15       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J
    invoke-static {v15}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1000(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)J

    move-result-wide v19

    sub-long v19, v4, v19

    cmp-long v19, v19, v8

    if-gez v19, :cond_c

    .line 412
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J
    invoke-static {v15}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1000(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 409
    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 415
    :cond_c
    iget v0, v15, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->estimatedTimeToCancel:F

    move/from16 v19, v0

    const/high16 v20, 0x437a

    cmpg-float v19, v19, v20

    if-ltz v19, :cond_b

    .line 418
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v19

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->start(Ljava/util/concurrent/Executor;)V
    invoke-static {v15, v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Ljava/util/concurrent/Executor;)V

    .line 419
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    add-int/lit8 v7, v6, -0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 420
    const-wide/16 v19, 0x32

    add-long v8, v8, v19

    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_6

    .line 425
    .end local v15           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_d
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 426
    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    sget-object v20, Lcom/google/glass/util/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    const-wide/16 v21, 0x0

    add-long v23, v10, v8

    sub-long v23, v23, v4

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public static load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 526
    invoke-virtual {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->prepareContent()V

    .line 537
    invoke-virtual {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    #setter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J
    invoke-static {p0, v0, v1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1002(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;J)J

    .line 544
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    sget-object v1, Lcom/google/glass/util/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 0
    .parameter "itemSubview"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 555
    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->enableScrollPrioritization(Landroid/view/View;)V
    invoke-static {p1, p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1200(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Landroid/view/View;)V

    .line 556
    invoke-static {p1}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 557
    return-void
.end method

.method public static loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .parameter "itemSubview"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 567
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 568
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 569
    .local v2, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {p0, v2}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    .end local v2           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_0
    return-void
.end method

.method static startBestTask(Ljava/util/List;IFF)Z
    .locals 7
    .parameter
    .parameter "anticipatedSettlePosition"
    .parameter "scrollPosition"
    .parameter "scrollVelocity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;IFF)Z"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, pendingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    const/4 v1, -0x1

    .line 436
    .local v1, bestTaskIndex:I
    const v0, 0x7fffffff

    .line 437
    .local v0, bestTaskDistanceToAnticipatedCenter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 438
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 439
    .local v4, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    iget v5, v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->estimatedTimeToCancel:F

    const/high16 v6, 0x437a

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 437
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    :cond_1
    const v2, 0x7fffffff

    .line 451
    .local v2, distanceToAnticipatedCenter:I
    iget v5, v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemPosition:I

    if-ltz v5, :cond_2

    .line 452
    iget v5, v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemPosition:I

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 455
    :cond_2
    if-ltz v1, :cond_3

    if-ge v2, v0, :cond_0

    .line 457
    :cond_3
    move v0, v2

    .line 458
    move v1, v3

    goto :goto_1

    .line 461
    .end local v2           #distanceToAnticipatedCenter:I
    .end local v4           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_4
    if-ltz v1, :cond_5

    .line 462
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 463
    .restart local v4       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    sget-object v5, Lcom/google/glass/util/DeferredContentLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->start(Ljava/util/concurrent/Executor;)V
    invoke-static {v4, v5}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Ljava/util/concurrent/Executor;)V

    .line 464
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 474
    const/4 v5, 0x1

    .line 476
    .end local v4           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :goto_2
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

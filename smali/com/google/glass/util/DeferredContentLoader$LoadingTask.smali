.class public abstract Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.super Ljava/lang/Object;
.source "DeferredContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/DeferredContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private active:Z

.field estimatedTimeToCancel:F
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field scrollItemPosition:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private scrollItemSubview:Landroid/view/View;

.field private scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
            "<**>;"
        }
    .end annotation
.end field

.field private final task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "TResult;>;"
        }
    .end annotation
.end field

.field private timeAddedToPendingList:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;-><init>(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    iput-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->task:Landroid/os/AsyncTask;

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 146
    iput-object v1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemPosition:I

    .line 153
    iput-object v1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    .line 156
    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->estimatedTimeToCancel:F

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->active:Z

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->stop()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->start(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->enableScrollPrioritization(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->prepareForScrollPrioritization()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    return-object v0
.end method

.method private enableScrollPrioritization(Landroid/view/View;)V
    .locals 0
    .parameter "itemSubview"

    .prologue
    .line 167
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    iput-object p1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;

    .line 168
    return-void
.end method

.method private getStatus()Landroid/os/AsyncTask$Status;
    .locals 1

    .prologue
    .line 323
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->task:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    return-object v0
.end method

.method private prepareForScrollPrioritization()V
    .locals 7

    .prologue
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    const/4 v6, 0x0

    .line 178
    iget-object v3, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v3, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 181
    .local v0, itemView:Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 182
    :goto_0
    if-eqz v0, :cond_4

    const-class v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, positionTag:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 185
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 188
    .end local v1           #positionTag:Ljava/lang/Object;
    :goto_1
    if-nez v3, :cond_1

    .line 189
    iput-object v6, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;

    .line 210
    :goto_2
    return-void

    .line 195
    :cond_1
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemPosition:I

    .line 196
    iget v3, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemPosition:I

    if-gez v3, :cond_2

    .line 197
    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deferred task scheduled for unloaded view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-object v6, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;

    goto :goto_2

    .line 203
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 204
    .local v2, scrollView:Landroid/view/ViewParent;
    :goto_3
    if-eqz v2, :cond_3

    const-class v3, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 205
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_3

    .line 207
    :cond_3
    invoke-static {v2}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    check-cast v2, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    .end local v2           #scrollView:Landroid/view/ViewParent;
    iput-object v2, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    .line 209
    iput-object v6, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;

    goto :goto_2

    :cond_4
    move-object v3, v1

    goto :goto_1
.end method

.method private start(Ljava/util/concurrent/Executor;)V
    .locals 2
    .parameter "executor"

    .prologue
    .line 214
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 215
    iget-boolean v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->active:Z

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->active:Z

    .line 217
    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->access$308()I

    .line 221
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    const/4 v0, 0x0

    .line 227
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 228
    iget-boolean v1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->active:Z

    if-eqz v1, :cond_1

    .line 229
    iput-boolean v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->active:Z

    .line 230
    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->access$310()I

    .line 234
    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->access$300()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 235
    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->access$400()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 236
    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->access$600()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->access$500()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract bindContent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public cancel(Z)V
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 243
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 244
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->task:Landroid/os/AsyncTask;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 245
    return-void
.end method

.method protected hideView(Landroid/view/View;ZZ)V
    .locals 4
    .parameter "view"
    .parameter "shouldFade"
    .parameter "shouldPreserveLayout"

    .prologue
    .line 300
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    if-eqz p2, :cond_0

    .line 301
    const/high16 v1, 0x3f80

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 302
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->horizontal_scroll_deferred_load_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 305
    .local v0, duration:I
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;

    invoke-direct {v2, p0, p1, p3}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;-><init>(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 319
    .end local v0           #duration:I
    :goto_0
    return-void

    .line 317
    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method protected final isCancelled()Z
    .locals 1

    .prologue
    .line 249
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected abstract loadContent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected abstract prepareContent()V
.end method

.method protected showView(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "shouldFade"

    .prologue
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<TResult;>;"
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    .line 277
    if-eqz p2, :cond_0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 279
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->horizontal_scroll_deferred_load_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 282
    .local v0, duration:I
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 289
    .end local v0           #duration:I
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 287
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

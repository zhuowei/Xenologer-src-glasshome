.class Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;
.super Ljava/lang/Object;
.source "WebAnswerView.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/WebAnswerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StaticCssLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;
    }
.end annotation


# static fields
.field private static context:Landroid/content/Context;

.field public static glassCss:Ljava/lang/String;

.field static loadingTask:Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static onLoadObservers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/glass/home/search/results/WebAnswerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 301
    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    .line 303
    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->context:Landroid/content/Context;

    .line 307
    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->onLoadObservers:Ljava/util/Queue;

    return-object v0
.end method

.method public static refreshAfterLoad(Landroid/content/Context;Lcom/google/glass/home/search/results/WebAnswerView;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 314
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 315
    sput-object p0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->context:Landroid/content/Context;

    .line 318
    :cond_0
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->onLoadObservers:Ljava/util/Queue;

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->onLoadObservers:Ljava/util/Queue;

    .line 322
    :cond_1
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    if-nez v0, :cond_2

    .line 323
    new-instance v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    invoke-direct {v0}, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;-><init>()V

    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    .line 324
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    :cond_2
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    iget-boolean v0, v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->loadComplete:Z

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {p1}, Lcom/google/glass/home/search/results/WebAnswerView;->reloadData()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_3
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->onLoadObservers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

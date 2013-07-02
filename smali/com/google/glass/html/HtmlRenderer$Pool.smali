.class Lcom/google/glass/html/HtmlRenderer$Pool;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/html/HtmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pool"
.end annotation


# instance fields
.field private final availableRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/html/HtmlRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 3
    .parameter "context"
    .parameter "bitmapFactory"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    .line 91
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 97
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/html/HtmlRenderer$Pool$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer$Pool$1;-><init>(Lcom/google/glass/html/HtmlRenderer$Pool;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized obtainRenderer()Lcom/google/glass/html/HtmlRenderer;
    .locals 4

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/HtmlRenderer;

    .line 113
    .local v0, renderer:Lcom/google/glass/html/HtmlRenderer;
    :goto_0
    const/4 v1, 0x1

    #calls: Lcom/google/glass/html/HtmlRenderer;->setIsAllocated(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/html/HtmlRenderer;->access$100(Lcom/google/glass/html/HtmlRenderer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-object v0

    .line 111
    .end local v0           #renderer:Lcom/google/glass/html/HtmlRenderer;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/glass/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderer$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #renderer:Lcom/google/glass/html/HtmlRenderer;
    goto :goto_0

    .line 108
    .end local v0           #renderer:Lcom/google/glass/html/HtmlRenderer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized releaseRenderer(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    #calls: Lcom/google/glass/html/HtmlRenderer;->setIsAllocated(Z)V
    invoke-static {p1, v0}, Lcom/google/glass/html/HtmlRenderer;->access$100(Lcom/google/glass/html/HtmlRenderer;Z)V

    .line 119
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    #calls: Lcom/google/glass/html/HtmlRenderer;->destroy()V
    invoke-static {p1}, Lcom/google/glass/html/HtmlRenderer;->access$200(Lcom/google/glass/html/HtmlRenderer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/html/HtmlRenderer;
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
            "Lcom/google/glass/home/timeline/html/HtmlRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 4
    .parameter "context"
    .parameter "bitmapFactory"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->context:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/glass/home/timeline/html/HtmlRenderer;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/glass/home/timeline/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/html/HtmlRenderer$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized obtainRenderer()Lcom/google/glass/home/timeline/html/HtmlRenderer;
    .locals 4

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/html/HtmlRenderer;

    .line 95
    .local v0, renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;
    :goto_0
    const/4 v1, 0x1

    #calls: Lcom/google/glass/home/timeline/html/HtmlRenderer;->setIsAllocated(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->access$100(Lcom/google/glass/home/timeline/html/HtmlRenderer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-object v0

    .line 93
    .end local v0           #renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/glass/home/timeline/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/home/timeline/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/html/HtmlRenderer$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;
    goto :goto_0

    .line 90
    .end local v0           #renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized releaseRenderer(Lcom/google/glass/home/timeline/html/HtmlRenderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 100
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    #calls: Lcom/google/glass/home/timeline/html/HtmlRenderer;->setIsAllocated(Z)V
    invoke-static {p1, v0}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->access$100(Lcom/google/glass/home/timeline/html/HtmlRenderer;Z)V

    .line 101
    iget-object v0, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_1
    #calls: Lcom/google/glass/home/timeline/html/HtmlRenderer;->destroy()V
    invoke-static {p1}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->access$200(Lcom/google/glass/home/timeline/html/HtmlRenderer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

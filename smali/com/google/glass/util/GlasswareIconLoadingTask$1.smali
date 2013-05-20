.class Lcom/google/glass/util/GlasswareIconLoadingTask$1;
.super Ljava/lang/Object;
.source "GlasswareIconLoadingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/GlasswareIconLoadingTask;->loadContent()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/GlasswareIconLoadingTask;


# direct methods
.method constructor <init>(Lcom/google/glass/util/GlasswareIconLoadingTask;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$1;->this$0:Lcom/google/glass/util/GlasswareIconLoadingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$1;->this$0:Lcom/google/glass/util/GlasswareIconLoadingTask;

    #calls: Lcom/google/glass/util/GlasswareIconLoadingTask;->downloadIconAndUpdateValidationTime()V
    invoke-static {v0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->access$300(Lcom/google/glass/util/GlasswareIconLoadingTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$1;->this$0:Lcom/google/glass/util/GlasswareIconLoadingTask;

    #getter for: Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;
    invoke-static {v0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->access$400(Lcom/google/glass/util/GlasswareIconLoadingTask;)Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    move-result-object v0

    #getter for: Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->access$200(Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$1;->this$0:Lcom/google/glass/util/GlasswareIconLoadingTask;

    #calls: Lcom/google/glass/util/GlasswareIconLoadingTask;->loadFromDiskCache()Z
    invoke-static {v0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->access$500(Lcom/google/glass/util/GlasswareIconLoadingTask;)Z

    .line 218
    return-void

    .line 215
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$1;->this$0:Lcom/google/glass/util/GlasswareIconLoadingTask;

    #getter for: Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;
    invoke-static {v1}, Lcom/google/glass/util/GlasswareIconLoadingTask;->access$400(Lcom/google/glass/util/GlasswareIconLoadingTask;)Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    move-result-object v1

    #getter for: Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->access$200(Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

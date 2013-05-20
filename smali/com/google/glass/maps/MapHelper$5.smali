.class Lcom/google/glass/maps/MapHelper$5;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$5;->this$0:Lcom/google/glass/maps/MapHelper;

    iput-object p2, p0, Lcom/google/glass/maps/MapHelper$5;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    iput-object p3, p0, Lcom/google/glass/maps/MapHelper$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper$5;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;->onMapRendered(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/maps/MapHelper;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 265
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$5;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    invoke-interface {v1}, Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;->onMapFailed()V

    goto :goto_0

    .line 266
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 267
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/google/glass/maps/MapHelper;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExecutionException"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$5;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    invoke-interface {v1}, Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;->onMapFailed()V

    goto :goto_0
.end method

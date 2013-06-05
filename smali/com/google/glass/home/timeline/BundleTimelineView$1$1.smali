.class Lcom/google/glass/home/timeline/BundleTimelineView$1$1;
.super Ljava/lang/Object;
.source "BundleTimelineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView$1;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iput-object p2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->val$cursor:Landroid/database/Cursor;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->isCursorEmpty(Landroid/database/Cursor;)Z
    invoke-static {v1, v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$000(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bundle cursor is closed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->val$cursor:Landroid/database/Cursor;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->loadItems(Landroid/database/Cursor;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$200(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 120
    .local v7, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v1, v7}, Lcom/google/glass/home/timeline/BundleTimelineView;->createLoader(Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineItemLoader;

    move-result-object v3

    .line 123
    .local v3, loader:Lcom/google/glass/home/timeline/TimelineItemLoader;
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZ)V

    .line 127
    .local v0, adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;

    invoke-direct {v2, p0, v0, v3}, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView$1$1;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 114
    .end local v0           #adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    .end local v3           #loader:Lcom/google/glass/home/timeline/TimelineItemLoader;
    .end local v7           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    :catch_0
    move-exception v6

    .line 115
    .local v6, e:Ljava/lang/IllegalStateException;
    invoke-static {}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bundle cursor closed while loading items."

    invoke-static {v1, v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

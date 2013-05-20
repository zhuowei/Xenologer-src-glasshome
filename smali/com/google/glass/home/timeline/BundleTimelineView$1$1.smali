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
    .line 146
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iput-object p2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->val$cursor:Landroid/database/Cursor;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->isCursorEmpty(Landroid/database/Cursor;)Z
    invoke-static {v1, v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$000(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bundle cursor is closed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v10, 0x0

    .line 158
    .local v10, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-boolean v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$isReadMore:Z

    if-eqz v1, :cond_1

    .line 161
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .restart local v10       #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    #getter for: Lcom/google/glass/home/timeline/BundleTimelineView;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$200(Lcom/google/glass/home/timeline/BundleTimelineView;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v4, v4, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v4}, Lcom/google/glass/app/GlassActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v5, v5, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v5}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    iput-object v2, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->readMoreItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 164
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->readMoreItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v8, parentItemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-boolean v2, v2, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$isReadMore:Z

    invoke-virtual {v1, v10, v8, v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->splitItems(Ljava/util/List;Ljava/util/Map;Z)Landroid/util/Pair;

    move-result-object v11

    .line 173
    .local v11, splitResult:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;Lcom/google/glass/home/timeline/TimelineItemLoader;>;"
    iget-object v9, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    .line 174
    .local v9, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/glass/home/timeline/TimelineItemLoader;

    .line 177
    .local v3, loader:Lcom/google/glass/home/timeline/TimelineItemLoader;
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-boolean v5, v5, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$isReadMore:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZ)V

    .line 181
    .local v0, adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v4, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;

    move-object v5, p0

    move-object v6, v0

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView$1$1;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 166
    .end local v0           #adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    .end local v3           #loader:Lcom/google/glass/home/timeline/TimelineItemLoader;
    .end local v8           #parentItemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .end local v9           #split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .end local v11           #splitResult:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;Lcom/google/glass/home/timeline/TimelineItemLoader;>;"
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->val$cursor:Landroid/database/Cursor;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->loadItems(Landroid/database/Cursor;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$300(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10

    goto :goto_1
.end method

.class Lcom/google/glass/home/timeline/EntityFilteredTimelineView$2;
.super Lcom/google/glass/home/timeline/database/TimelineCursorManager;
.source "EntityFilteredTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->createHistoricalTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/NotificationState;Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

.field final synthetic val$onLoadRunnables:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;ZLjava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$2;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$2;->val$onLoadRunnables:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 78
    iget-object v2, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$2;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 79
    .local v1, runnable:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 81
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$2;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 82
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$2;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

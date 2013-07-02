.class Lcom/google/glass/home/timeline/BundleTimelineView$1;
.super Lcom/google/glass/home/timeline/database/TimelineCursorManager;
.source "BundleTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/home/timeline/NotificationState;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFirstCursor:Z

.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

.field final synthetic val$id:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$onLoadRunnables:Ljava/util/List;

.field final synthetic val$sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;ZLcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/widget/SliderView;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    iput-object p5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$onLoadRunnables:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;-><init>(Z)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 88
    invoke-static {}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "New timeline database content loaded; updating views."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/BundleTimelineView;->updateViews(Z)V

    .line 93
    iget-boolean v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/BundleTimelineView;->findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v2

    .line 95
    .local v2, startPosition:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 96
    const/4 v2, 0x0

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v3, v2, v5}, Lcom/google/glass/home/timeline/BundleTimelineView;->setSelection(IZ)V

    .line 99
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    #getter for: Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$100(Lcom/google/glass/home/timeline/BundleTimelineView;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/BundleTimelineView;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 103
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(F)V

    .line 105
    .end local v2           #startPosition:I
    :cond_1
    iput-boolean v5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    .line 108
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 109
    .local v1, runnable:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 111
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_2
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 112
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/BundleTimelineView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

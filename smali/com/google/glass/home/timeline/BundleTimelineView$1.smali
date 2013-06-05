.class Lcom/google/glass/home/timeline/BundleTimelineView$1;
.super Ljava/lang/Object;
.source "BundleTimelineView.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field isFirstCursor:Z

.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;

.field final synthetic val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field final synthetic val$id:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/SliderView;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iput-object p4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    iput-object p5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 90
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 93
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->isCursorEmpty(Landroid/database/Cursor;)Z
    invoke-static {v0, p2}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$000(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bundle is empty; dismissing self."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 162
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView$1;Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/BundleTimelineView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

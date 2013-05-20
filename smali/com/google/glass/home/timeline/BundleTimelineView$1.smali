.class Lcom/google/glass/home/timeline/BundleTimelineView$1;
.super Ljava/lang/Object;
.source "BundleTimelineView.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Z)Landroid/content/CursorLoader;
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

.field readMoreItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;

.field final synthetic val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field final synthetic val$id:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$isReadMore:Z

.field final synthetic val$sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/app/GlassActivity;ZLcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/SliderView;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iput-boolean p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$isReadMore:Z

    iput-object p4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iput-object p6, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

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
    .line 124
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 127
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->isCursorEmpty(Landroid/database/Cursor;)Z
    invoke-static {v1, p2}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$000(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-static {}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bundle is empty; dismissing self."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    sget-object v2, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$isReadMore:Z

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->readMoreItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, p2, v2}, Lcom/google/glass/timeline/TimelineHelper;->linearSearch(Ljava/lang/String;Landroid/database/Cursor;I)I

    move-result v0

    .line 138
    .local v0, position:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Item we are looking at has been deleted; dismissing self."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    sget-object v2, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    goto :goto_0

    .line 146
    .end local v0           #position:I
    :cond_2
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    invoke-direct {v2, p0, p2}, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView$1;Landroid/database/Cursor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/BundleTimelineView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

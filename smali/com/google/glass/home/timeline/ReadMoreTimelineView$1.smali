.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;
.super Ljava/lang/Object;
.source "ReadMoreTimelineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/home/timeline/NotificationState;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;

.field final synthetic val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field final synthetic val$id:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$notificationState:Lcom/google/glass/home/timeline/NotificationState;

.field final synthetic val$sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/app/GlassActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/NotificationState;Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p4, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iput-object p5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$notificationState:Lcom/google/glass/home/timeline/NotificationState;

    iput-object p6, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    .line 75
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    #getter for: Lcom/google/glass/home/timeline/ReadMoreTimelineView;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$000(Lcom/google/glass/home/timeline/ReadMoreTimelineView;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v2}, Lcom/google/glass/app/GlassActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v5}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v9

    .line 79
    .local v9, parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-virtual {v1, v9}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->splitItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/util/Pair;

    move-result-object v11

    .line 80
    .local v11, splitResult:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;Lcom/google/glass/home/timeline/TimelineItemLoader;>;"
    iget-object v10, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .line 81
    .local v10, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/glass/home/timeline/TimelineItemLoader;

    .line 84
    .local v3, loader:Lcom/google/glass/home/timeline/TimelineItemLoader;
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v6, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$notificationState:Lcom/google/glass/home/timeline/NotificationState;

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/home/timeline/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZLcom/google/glass/home/timeline/NotificationState;)V

    .line 88
    .local v0, adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v4, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;

    move-object v5, p0

    move-object v6, v10

    move-object v7, v3

    move-object v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

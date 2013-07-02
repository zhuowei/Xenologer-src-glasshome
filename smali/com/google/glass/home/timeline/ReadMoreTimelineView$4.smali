.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;
.super Ljava/lang/Object;
.source "ReadMoreTimelineView.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView;->appendRemainingText(Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/widget/SliderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

.field final synthetic val$sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/List;Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$items:Ljava/util/List;

    iput-object p4, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$sliderView:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/String;)V
    .locals 2
    .parameter "itemId"
    .parameter "remaining"

    .prologue
    .line 207
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

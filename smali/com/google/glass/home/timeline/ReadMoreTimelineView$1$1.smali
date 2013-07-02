.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;
.super Ljava/lang/Object;
.source "ReadMoreTimelineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

.field final synthetic val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

.field final synthetic val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

.field final synthetic val$parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic val$split:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$split:Ljava/util/List;

    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iput-object p4, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iput-object p5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$split:Ljava/util/List;

    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iget-object v4, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v5, v5, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    #calls: Lcom/google/glass/home/timeline/ReadMoreTimelineView;->appendRemainingText(Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/widget/SliderView;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$100(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/widget/SliderView;)V

    .line 97
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iget-object v4, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v5, v5, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    #calls: Lcom/google/glass/home/timeline/ReadMoreTimelineView;->applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/widget/SliderView;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$200(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/widget/SliderView;)V

    .line 101
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 102
    .local v0, startPosition:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->setSelection(IZ)V

    .line 108
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(F)V

    .line 109
    return-void
.end method

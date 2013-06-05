.class Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;
.super Ljava/lang/Object;
.source "BundleTimelineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

.field final synthetic val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

.field final synthetic val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView$1$1;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iput-object p2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 132
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v4, v4, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v4, v4, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/widget/SliderView;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$300(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/widget/SliderView;)V

    .line 136
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    new-instance v2, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->setRemainingTextListener(Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;)V

    .line 145
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-boolean v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 147
    .local v0, startPosition:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v1, v0, v5}, Lcom/google/glass/home/timeline/BundleTimelineView;->setSelection(IZ)V

    .line 151
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    #getter for: Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;
    invoke-static {v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$500(Lcom/google/glass/home/timeline/BundleTimelineView;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(F)V

    .line 157
    .end local v0           #startPosition:I
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iput-boolean v5, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    .line 158
    return-void
.end method

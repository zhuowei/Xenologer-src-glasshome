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

.field final synthetic val$parentItemMap:Ljava/util/Map;

.field final synthetic val$split:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView$1$1;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iput-object p2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iput-object p4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$parentItemMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$split:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 186
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$parentItemMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v4, v4, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v4, v4, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$400(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V

    .line 190
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-boolean v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$isReadMore:Z

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$split:Ljava/util/List;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$parentItemMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v5, v5, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v5, v5, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->appendRemainingText(Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$500(Lcom/google/glass/home/timeline/BundleTimelineView;Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-boolean v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v6

    .line 208
    .local v6, startPosition:I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 209
    const/4 v6, 0x0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v0, v6, v7}, Lcom/google/glass/home/timeline/BundleTimelineView;->setSelection(IZ)V

    .line 212
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    #getter for: Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$700(Lcom/google/glass/home/timeline/BundleTimelineView;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$sliderView:Lcom/google/glass/widget/SliderView;

    int-to-float v1, v6

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(F)V

    .line 218
    .end local v6           #startPosition:I
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iput-boolean v7, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    .line 219
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->val$adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    new-instance v1, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->setRemainingTextListener(Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;)V

    goto :goto_0
.end method

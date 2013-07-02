.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;
.super Ljava/lang/Object;
.source "ReadMoreTimelineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

.field final synthetic val$itemId:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$remaining:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$remaining:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":cont"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, id:Ljava/lang/String;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 216
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 217
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$remaining:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 218
    sget-object v5, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 219
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v5, v5, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    #getter for: Lcom/google/glass/home/timeline/ReadMoreTimelineView;->parentItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v5}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$300(Lcom/google/glass/home/timeline/ReadMoreTimelineView;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 220
    .local v4, item:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0

    .line 224
    .end local v4           #item:Lcom/google/googlex/glass/common/proto/MenuItem;
    :cond_0
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v5, v5, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iget-object v6, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-interface {v5, v6}, Lcom/google/glass/home/timeline/TimelineItemLoader;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 225
    .local v3, insertionPoint:I
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v5, v5, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$items:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 228
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v5, v5, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v6, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v6, v6, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 231
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v5, v5, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->updateViews(Z)V

    .line 232
    return-void
.end method

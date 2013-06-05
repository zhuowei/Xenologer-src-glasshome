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
.field exist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

.field final synthetic val$sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/List;Lcom/google/glass/widget/SliderView;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$items:Ljava/util/List;

    iput-object p4, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$sliderView:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->exist:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/String;)V
    .locals 7
    .parameter "itemId"
    .parameter "remaining"

    .prologue
    .line 207
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":cont"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, id:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->exist:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 214
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 215
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 216
    invoke-virtual {v0, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 217
    sget-object v5, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 218
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

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

    .line 219
    .local v4, item:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0

    .line 223
    .end local v4           #item:Lcom/google/googlex/glass/common/proto/MenuItem;
    :cond_0
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    invoke-interface {v5, p1}, Lcom/google/glass/home/timeline/TimelineItemLoader;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 224
    .local v3, insertionPoint:I
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$items:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 227
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v6, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 230
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->updateViews(Z)V

    .line 232
    .end local v0           #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #insertionPoint:I
    :cond_1
    return-void
.end method

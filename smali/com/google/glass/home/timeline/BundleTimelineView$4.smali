.class Lcom/google/glass/home/timeline/BundleTimelineView$4;
.super Ljava/lang/Object;
.source "BundleTimelineView.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->appendRemainingText(Ljava/util/List;Lcom/google/glass/home/timeline/TimelineItemLoader;Lcom/google/glass/home/timeline/TimelineItemAdapter;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

.field final synthetic val$parentItemMap:Ljava/util/Map;

.field final synthetic val$sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;Ljava/util/Map;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/List;Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$parentItemMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    iput-object p4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$items:Ljava/util/List;

    iput-object p5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$sliderView:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/String;)V
    .locals 10
    .parameter "itemId"
    .parameter "remaining"

    .prologue
    const/4 v7, 0x1

    .line 361
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 362
    iget-object v8, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$parentItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 365
    .local v6, parent:Lcom/google/googlex/glass/common/proto/TimelineItem;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":cont"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, id:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$parentItemMap:Ljava/util/Map;

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    move v1, v7

    .line 370
    .local v1, exists:Z
    :goto_0
    if-nez v1, :cond_2

    .line 371
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 372
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 373
    invoke-virtual {v0, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 374
    sget-object v8, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v0, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 375
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 376
    .local v5, item:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1

    .line 369
    .end local v0           #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v1           #exists:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/google/googlex/glass/common/proto/MenuItem;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 380
    .restart local v0       #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .restart local v1       #exists:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    invoke-interface {v8, p1}, Lcom/google/glass/home/timeline/TimelineItemLoader;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 381
    .local v4, insertionPoint:I
    iget-object v8, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$items:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v9

    invoke-interface {v8, v4, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 384
    iget-object v8, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v9, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->val$items:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 387
    iget-object v8, p0, Lcom/google/glass/home/timeline/BundleTimelineView$4;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v8, v7}, Lcom/google/glass/home/timeline/BundleTimelineView;->updateViews(Z)V

    .line 389
    .end local v0           #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #insertionPoint:I
    :cond_2
    return-void
.end method

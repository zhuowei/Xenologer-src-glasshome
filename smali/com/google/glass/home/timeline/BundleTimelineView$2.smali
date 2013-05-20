.class Lcom/google/glass/home/timeline/BundleTimelineView$2;
.super Ljava/lang/Object;
.source "BundleTimelineView.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->splitItems(Ljava/util/List;Ljava/util/Map;Z)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

.field final synthetic val$allSplit:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->val$allSplit:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncRead(ILcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;)V
    .locals 4
    .parameter "position"
    .parameter "callback"

    .prologue
    .line 310
    new-instance v1, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;

    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->val$allSplit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;ILjava/lang/Long;)V

    invoke-virtual {p2, v1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;->onItemRead(Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V

    .line 312
    return-void
.end method

.method public find(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 4
    .parameter "id"

    .prologue
    .line 296
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, target:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->val$allSplit:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 298
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->val$allSplit:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    .end local v0           #i:I
    :goto_1
    return v0

    .line 297
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->val$allSplit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

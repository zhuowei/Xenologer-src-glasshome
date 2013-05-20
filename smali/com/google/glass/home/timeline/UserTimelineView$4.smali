.class Lcom/google/glass/home/timeline/UserTimelineView$4;
.super Ljava/lang/Object;
.source "UserTimelineView.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/UserTimelineView;->createTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/UserTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/UserTimelineView;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/glass/home/timeline/UserTimelineView$4;->this$0:Lcom/google/glass/home/timeline/UserTimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/String;)V
    .locals 6
    .parameter "itemId"
    .parameter "remaining"

    .prologue
    .line 134
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/google/glass/home/timeline/UserTimelineView$4;->this$0:Lcom/google/glass/home/timeline/UserTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/UserTimelineView;->getChildCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 139
    iget-object v4, p0, Lcom/google/glass/home/timeline/UserTimelineView$4;->this$0:Lcom/google/glass/home/timeline/UserTimelineView;

    #calls: Lcom/google/glass/home/timeline/UserTimelineView;->getCard(I)Landroid/view/View;
    invoke-static {v4, v0}, Lcom/google/glass/home/timeline/UserTimelineView;->access$000(Lcom/google/glass/home/timeline/UserTimelineView;I)Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 141
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    sget v4, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 146
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void

    .line 138
    .restart local v1       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.class Lcom/google/glass/home/timeline/TimelineView$1;
.super Ljava/lang/Object;
.source "TimelineView.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineView;->createRemainingContentListener(Lcom/google/glass/home/timeline/TimelineItemAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineView;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineView$1;->this$0:Lcom/google/glass/home/timeline/TimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 6
    .parameter "itemId"
    .parameter "clipped"

    .prologue
    .line 304
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineView$1;->this$0:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/TimelineView;->getChildCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 309
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineView$1;->this$0:Lcom/google/glass/home/timeline/TimelineView;

    #calls: Lcom/google/glass/home/timeline/TimelineView;->getCard(I)Landroid/view/View;
    invoke-static {v4, v0}, Lcom/google/glass/home/timeline/TimelineView;->access$000(Lcom/google/glass/home/timeline/TimelineView;I)Landroid/view/View;

    move-result-object v3

    .line 310
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 311
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 312
    if-eqz p2, :cond_1

    .line 313
    sget v4, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 320
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 315
    .restart local v1       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    sget v4, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 308
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.class Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;
.super Ljava/lang/Object;
.source "TimelineItemAdapter.java"

# interfaces
.implements Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->onItemRead(Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineItemAdapter$2;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->this$1:Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextClipped(Ljava/lang/String;)V
    .locals 3
    .parameter "clipped"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->this$1:Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->remainingTextListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;
    invoke-static {v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$500(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->this$1:Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->remainingTextListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;
    invoke-static {v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$500(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v1, v2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-interface {v0, v1, p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;->onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

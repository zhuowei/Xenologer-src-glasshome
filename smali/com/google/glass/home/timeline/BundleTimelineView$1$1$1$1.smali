.class Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1$1;
.super Ljava/lang/Object;
.source "BundleTimelineView.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemAdapter$RemainingTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1$1;->this$3:Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/String;)V
    .locals 1
    .parameter "itemId"
    .parameter "remaining"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1$1;->this$3:Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1$1;->this$2:Lcom/google/glass/home/timeline/BundleTimelineView$1$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/BundleTimelineView$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V
    invoke-static {v0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$600(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 200
    return-void
.end method

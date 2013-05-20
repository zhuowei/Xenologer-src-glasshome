.class Lcom/google/glass/home/timeline/TimelineOverlayView$1;
.super Ljava/lang/Object;
.source "TimelineOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineOverlayView;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineOverlayView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView$1;->this$0:Lcom/google/glass/home/timeline/TimelineOverlayView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 313
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView$1;->this$0:Lcom/google/glass/home/timeline/TimelineOverlayView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView$1;->val$itemView:Landroid/view/View;

    #calls: Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabelForItemView(Landroid/view/View;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->access$000(Lcom/google/glass/home/timeline/TimelineOverlayView;Landroid/view/View;J)V

    .line 314
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView$1;->this$0:Lcom/google/glass/home/timeline/TimelineOverlayView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView$1;->val$itemView:Landroid/view/View;

    #calls: Lcom/google/glass/home/timeline/TimelineOverlayView;->adjustTimestampAlphaForItemView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/google/glass/home/timeline/TimelineOverlayView;->access$100(Lcom/google/glass/home/timeline/TimelineOverlayView;Landroid/view/View;)V

    .line 315
    return-void
.end method

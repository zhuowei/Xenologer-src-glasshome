.class Lcom/google/glass/home/timeline/MainTimelineActivity$3;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;->initTimelineView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final navigated:Ljava/util/BitSet;

.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->navigated:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public onFocused(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->navigated:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 218
    return-void
.end method

.method public onScaleChanged(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->onScaleChanged(F)V

    .line 270
    :cond_0
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 1
    .parameter "scrollPosition"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->onScrollPositionChanged(F)V

    .line 263
    :cond_0
    return-void
.end method

.method public onSettled(I)V
    .locals 10
    .parameter "selectedPosition"

    .prologue
    const/4 v9, 0x0

    .line 223
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v5}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isNotification()Z

    move-result v5

    if-nez v5, :cond_0

    .line 224
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v6}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/home/timeline/MainTimelineView;->getCurrentVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 229
    :cond_0
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;
    invoke-static {v5}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/UiPerformanceLog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/home/timeline/UiPerformanceLog;->stopPerformanceMeasure()V

    .line 232
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->navigated:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    .line 233
    .local v3, numNavigated:I
    if-lez v3, :cond_1

    .line 234
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->navigated:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 235
    .local v1, firstNavigated:I
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->navigated:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 236
    .local v2, lastNavigated:I
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v5}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v6}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 238
    .local v0, distFromClock:I
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->navigated:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 239
    const-string v5, "n"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "d"

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, tuple:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    invoke-static {v5}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$300(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/UserEventHelper;

    move-result-object v5

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_NAVIGATION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v5, v6, v4}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 244
    .end local v0           #distFromClock:I
    .end local v1           #firstNavigated:I
    .end local v2           #lastNavigated:I
    .end local v4           #tuple:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onUnsettled(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 252
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/UiPerformanceLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->startPerformanceMeasure()V

    .line 255
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->navigated:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 256
    return-void
.end method

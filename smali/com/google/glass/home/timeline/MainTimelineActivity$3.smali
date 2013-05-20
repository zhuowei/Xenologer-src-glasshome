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
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocused(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 213
    return-void
.end method

.method public onScaleChanged(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$600(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$600(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->onScaleChanged(F)V

    .line 255
    :cond_0
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 1
    .parameter "scrollPosition"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$600(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$600(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->onScrollPositionChanged(F)V

    .line 248
    :cond_0
    return-void
.end method

.method public onSettled(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 217
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->OK_GLASS_EVERYWHERE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 231
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromScreenOffNotification()Z
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineView;->getCurrentVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$500(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/UiPerformanceLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->stopPerformanceMeasure()V

    goto :goto_0
.end method

.method public onUnsettled(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 240
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$500(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/UiPerformanceLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->startPerformanceMeasure()V

    .line 241
    return-void
.end method

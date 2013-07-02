.class Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;
.super Ljava/lang/Object;
.source "EntityFilteredTimelineActivity.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->initTimelineView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field loggedMovedAwayFromHome:Z

.field final synthetic this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;->loggedMovedAwayFromHome:Z

    return-void
.end method


# virtual methods
.method public onFocused(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 152
    return-void
.end method

.method public onScaleChanged(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 174
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 0
    .parameter "scrollPosition"

    .prologue
    .line 171
    return-void
.end method

.method public onSettled(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->access$100(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;)Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->getHomePosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;

    iget-object v1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->heyVoiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;
    invoke-static {v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->access$200(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;)Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;->loggedMovedAwayFromHome:Z

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;->loggedMovedAwayFromHome:Z

    .line 160
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->PEOPLE_GRID_FILTERED_TIMELINE:Lcom/google/glass/logging/UserEventAction;

    #calls: Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V
    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->access$300(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;Lcom/google/glass/logging/UserEventAction;)V

    goto :goto_0
.end method

.method public onUnsettled(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;

    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 168
    return-void
.end method

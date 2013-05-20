.class Lcom/google/glass/timeline/TimelineOptionsHelper$6;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "TimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

.field final synthetic val$userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/googlex/glass/common/proto/UserAction$Builder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->val$userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 877
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getIsPinned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 879
    .local v5, clearPin:Z
    :goto_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$200(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->val$userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    .line 881
    .local v6, result:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 885
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, v6}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 886
    return-object v6

    .end local v5           #clearPin:Z
    .end local v6           #result:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_0
    move v5, v4

    .line 877
    goto :goto_0
.end method

.class Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$3;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "HomeTimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

.field final synthetic val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$3;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$3;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$3;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #calls: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$200(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$3;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v1}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$3;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

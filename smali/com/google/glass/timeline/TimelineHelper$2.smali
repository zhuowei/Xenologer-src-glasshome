.class Lcom/google/glass/timeline/TimelineHelper$2;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "TimelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineHelper;->deleteTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tombstone:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper$2;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineHelper$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineHelper$2;->val$tombstone:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 422
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/UserAction$Type;->DELETE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v3

    .line 423
    .local v3, action:Lcom/google/googlex/glass/common/proto/UserAction;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineHelper$2;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineHelper$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineHelper$2;->val$tombstone:Lcom/google/googlex/glass/common/proto/TimelineItem;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

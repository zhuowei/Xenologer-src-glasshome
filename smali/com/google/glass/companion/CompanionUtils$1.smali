.class final Lcom/google/glass/companion/CompanionUtils$1;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "CompanionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/companion/CompanionUtils;->updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Lcom/google/glass/timeline/TimelineHelper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$syncStatus:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

.field final synthetic val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iput-object p2, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$itemId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$syncStatus:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-object v0, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    .line 176
    .local v6, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v0, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$syncStatus:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/google/glass/logging/FeedbackBuilder$1;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "FeedbackBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/FeedbackBuilder;->build(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$Screenshot;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/glass/logging/FeedbackBuilder$1;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iput-object p2, p0, Lcom/google/glass/logging/FeedbackBuilder$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/logging/FeedbackBuilder$1;->val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackBuilder$1;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/logging/FeedbackBuilder$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/logging/FeedbackBuilder$1;->val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 183
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Item updated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackBuilder$1;->val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.class Lcom/google/glass/timeline/TimelineHelper$3;
.super Ljava/lang/Object;
.source "TimelineHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineHelper;->deleteTimelineItemAsync(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper$3;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineHelper$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineHelper$3;->val$itemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 497
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineHelper$3;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineHelper$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineHelper$3;->val$itemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 498
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v0, :cond_0

    .line 499
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineHelper$3;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineHelper$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/timeline/TimelineHelper;->deleteTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-static {}, Lcom/google/glass/timeline/TimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineHelper$3;->val$itemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for deletion."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

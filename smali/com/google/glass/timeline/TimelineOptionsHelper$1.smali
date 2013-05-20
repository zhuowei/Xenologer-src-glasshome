.class Lcom/google/glass/timeline/TimelineOptionsHelper$1;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onSearch(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 539
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    .line 540
    .local v1, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    new-instance v2, Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    .line 541
    .local v2, helper:Lcom/google/glass/timeline/AttachmentHelper;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/glass/util/CachedFilesManager$Type;->PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v2, v4, v5, v1}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;Lcom/google/googlex/glass/common/proto/Attachment;)[B

    move-result-object v3

    .line 543
    .local v3, proto:[B
    if-nez v3, :cond_0

    .line 544
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Attachment proto not on file system and could not be downloaded."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_0
    return-void

    .line 546
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, answer:Landroid/content/Intent;
    const-string v4, "recognitionResult"

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v4, "timelineItemId"

    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v5, v6}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 551
    const-string v4, "majelResponse"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 552
    const-string v4, "startTime"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 554
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

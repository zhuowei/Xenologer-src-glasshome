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

.field final synthetic val$isAnswerCard:Z

.field final synthetic val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-boolean p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$isAnswerCard:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 543
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    .line 544
    .local v1, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    new-instance v4, Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    .line 545
    .local v4, helper:Lcom/google/glass/timeline/AttachmentHelper;
    iget-boolean v5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$isAnswerCard:Z

    if-eqz v5, :cond_0

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 548
    .local v2, attachmentType:Lcom/google/glass/util/CachedFilesManager$Type;
    :goto_0
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v1}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;Lcom/google/googlex/glass/common/proto/Attachment;)[B

    move-result-object v3

    .line 549
    .local v3, data:[B
    if-nez v3, :cond_1

    .line 550
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Attachment proto or HTML string not on file system and could not be downloaded."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_1
    return-void

    .line 545
    .end local v2           #attachmentType:Lcom/google/glass/util/CachedFilesManager$Type;
    .end local v3           #data:[B
    :cond_0
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

    goto :goto_0

    .line 553
    .restart local v2       #attachmentType:Lcom/google/glass/util/CachedFilesManager$Type;
    .restart local v3       #data:[B
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, answer:Landroid/content/Intent;
    const-string v5, "recognitionResult"

    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v5, "timelineItemId"

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v7, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v6, v7}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 558
    iget-boolean v5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$isAnswerCard:Z

    if-eqz v5, :cond_2

    .line 559
    const-string v5, "cardResult"

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    :goto_2
    const-string v5, "startTime"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 565
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 561
    :cond_2
    const-string v5, "majelResponse"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_2
.end method

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
    .line 602
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-boolean p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$isAnswerCard:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 606
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    .line 607
    .local v1, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    new-instance v5, Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    .line 608
    .local v5, helper:Lcom/google/glass/timeline/AttachmentHelper;
    iget-boolean v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$isAnswerCard:Z

    if-eqz v6, :cond_0

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 611
    .local v2, attachmentType:Lcom/google/glass/util/CachedFilesManager$Type;
    :goto_0
    const/4 v3, 0x0

    .line 614
    .local v3, data:[B
    :try_start_0
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v1}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;Lcom/google/googlex/glass/common/proto/Attachment;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 620
    if-nez v3, :cond_1

    .line 621
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Attachment proto or HTML string not on file system and could not be downloaded."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_1
    return-void

    .line 608
    .end local v2           #attachmentType:Lcom/google/glass/util/CachedFilesManager$Type;
    .end local v3           #data:[B
    :cond_0
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

    goto :goto_0

    .line 615
    .restart local v2       #attachmentType:Lcom/google/glass/util/CachedFilesManager$Type;
    .restart local v3       #data:[B
    :catch_0
    move-exception v4

    .line 616
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AsyncTask interrupted in the middle of an attachment fetch!"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 624
    .end local v4           #e:Ljava/lang/InterruptedException;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, answer:Landroid/content/Intent;
    const-string v6, "recognitionResult"

    iget-object v7, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v6, "timelineItemId"

    new-instance v7, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v8, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v7, v8}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 629
    iget-boolean v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$isAnswerCard:Z

    if-eqz v6, :cond_2

    .line 630
    const-string v6, "cardResult"

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    :goto_2
    const-string v6, "startTime"

    const-wide/16 v7, -0x1

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 636
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 632
    :cond_2
    const-string v6, "majelResponse"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_2
.end method

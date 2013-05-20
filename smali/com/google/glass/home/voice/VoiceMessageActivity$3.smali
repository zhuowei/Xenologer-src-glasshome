.class Lcom/google/glass/home/voice/VoiceMessageActivity$3;
.super Ljava/lang/Object;
.source "VoiceMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/VoiceMessageActivity;->onMessageCommitted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

.field final synthetic val$currentIsReplyingAll:Z

.field final synthetic val$currentMessageType:I

.field final synthetic val$currentReplyToId:Ljava/lang/String;

.field final synthetic val$currentToId:Ljava/lang/String;

.field final synthetic val$currentToName:Ljava/lang/String;

.field final synthetic val$recognitionResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    iput-object p2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentReplyToId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentToId:Ljava/lang/String;

    iput p4, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentMessageType:I

    iput-object p5, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentToName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$recognitionResult:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentIsReplyingAll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, sourceItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentReplyToId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    #getter for: Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$300(Lcom/google/glass/home/voice/VoiceMessageActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    invoke-virtual {v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentReplyToId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentToId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 334
    iget v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentMessageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 335
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentToId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentToName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$recognitionResult:Ljava/lang/String;

    #calls: Lcom/google/glass/home/voice/VoiceMessageActivity;->sendViaGmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$400(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 336
    :cond_1
    iget v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentMessageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 337
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentToId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$recognitionResult:Ljava/lang/String;

    #calls: Lcom/google/glass/home/voice/VoiceMessageActivity;->sendViaSms(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$500(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    #calls: Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$600(Lcom/google/glass/home/voice/VoiceMessageActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentMessageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentReplyToId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 342
    if-nez v0, :cond_4

    .line 343
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    #calls: Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$700(Lcom/google/glass/home/voice/VoiceMessageActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No timeline item found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentReplyToId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->COMPANIONWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    if-ne v1, v2, :cond_5

    .line 346
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$recognitionResult:Ljava/lang/String;

    #calls: Lcom/google/glass/home/voice/VoiceMessageActivity;->replyCompanionTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$800(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_5
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    iget-boolean v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$currentIsReplyingAll:Z

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->val$recognitionResult:Ljava/lang/String;

    #calls: Lcom/google/glass/home/voice/VoiceMessageActivity;->replyCloudTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;ZLjava/lang/String;)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$900(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;ZLjava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_6
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;->this$0:Lcom/google/glass/home/voice/VoiceMessageActivity;

    #calls: Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->access$1000(Lcom/google/glass/home/voice/VoiceMessageActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toId and replyToId were both null, not creating timeline item for message"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

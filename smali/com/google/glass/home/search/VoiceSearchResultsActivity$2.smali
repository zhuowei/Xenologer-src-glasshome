.class Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;
.super Ljava/lang/Object;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/search/VoiceSearchResultsActivity;->insertSearchInTimeline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 460
    iget-object v5, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v5}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    new-instance v7, Lcom/google/glass/util/SettingsSecure;

    iget-object v8, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    invoke-virtual {v8}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    .line 466
    .local v1, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, fileName:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/CachedFilesManager$Type;->PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v7, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->majelResponseBytes:[B
    invoke-static {v7}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$100(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 470
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/CachedFilesManager$Type;->PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v5, v6, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, filePath:Ljava/lang/String;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v5

    const-string v6, "proto/search"

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 477
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 480
    iget-object v5, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #calls: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    invoke-static {v5, v1}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$200(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    .line 483
    iget-object v5, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$300(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 485
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    .line 486
    .local v4, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v5, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v5}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    sget-object v7, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VOICE_SEARCH:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 490
    iget-object v5, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v6, v4}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    #setter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {v5, v6}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$402(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/timeline/TimelineItemId;)Lcom/google/glass/timeline/TimelineItemId;

    .line 492
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_0
    return-void
.end method

.class Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;
.super Ljava/lang/Object;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/search/VoiceSearchResultsActivity;->insertMajelSearchInTimeline()V
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
    .line 596
    iput-object p1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 600
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

    .line 606
    .local v1, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v2

    .line 608
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

    .line 610
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/CachedFilesManager$Type;->PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v5, v6, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 612
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

    .line 617
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 620
    iget-object v5, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/home/search/results/ResultsContainer;
    invoke-static {v6}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$200(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v6

    const/4 v7, 0x1

    #calls: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V
    invoke-static {v5, v1, v6, v7}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$300(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V

    .line 623
    iget-object v5, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$400(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 625
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    .line 626
    .local v4, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v5, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v5}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    sget-object v7, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VOICE_SEARCH:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 630
    iget-object v5, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v6, v4}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    #setter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {v5, v6}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$502(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/timeline/TimelineItemId;)Lcom/google/glass/timeline/TimelineItemId;

    .line 632
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_0
    return-void
.end method

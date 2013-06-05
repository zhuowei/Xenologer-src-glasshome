.class Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;
.super Ljava/lang/Object;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/search/VoiceSearchResultsActivity;->insertAnswerCardSearchInTimeline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

.field final synthetic val$timelineResults:Lcom/google/glass/home/search/results/ResultsContainer;


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/home/search/results/ResultsContainer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    iput-object p2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->val$timelineResults:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 576
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v9}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v9

    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    new-instance v11, Lcom/google/glass/util/SettingsSecure;

    iget-object v12, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    invoke-virtual {v12}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v10, v11}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    .line 582
    .local v1, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, fileName:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$600(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 585
    .local v6, responseBytes:Lcom/google/protobuf/ByteString;
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v9

    sget-object v10, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v6}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v11

    invoke-virtual {v9, v10, v3, v11}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 587
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v9

    sget-object v10, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v9, v10, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, filePath:Ljava/lang/String;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v9

    const-string v10, "application/glass+html"

    invoke-virtual {v9, v10}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 594
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 597
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->val$timelineResults:Lcom/google/glass/home/search/results/ResultsContainer;

    #calls: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V
    invoke-static {v9, v1, v10, v13}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$300(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V

    .line 600
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$400(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 602
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->val$timelineResults:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v9, v13}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v2

    .line 603
    .local v2, coverBundle:Landroid/os/Bundle;
    const-string v9, "TTS_FORMAT_STRING_KEY"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 604
    const-string v9, "TTS_FORMAT_STRING_KEY"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 605
    .local v7, ttsFormatString:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 606
    const-string v9, "TTS_LANGUAGE_KEY"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 607
    .local v8, ttsLang:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v9, "en"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "en-us"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 608
    invoke-static {v7, v8}, Lcom/google/glass/voice/network/translate/NetworkTts;->getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 612
    .end local v7           #ttsFormatString:Ljava/lang/String;
    .end local v8           #ttsLang:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v5

    .line 613
    .local v5, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v9}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v9

    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    sget-object v11, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VOICE_SEARCH:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 617
    iget-object v9, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    new-instance v10, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v10, v5}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    #setter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {v9, v10}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$502(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/timeline/TimelineItemId;)Lcom/google/glass/timeline/TimelineItemId;

    .line 619
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v2           #coverBundle:Landroid/os/Bundle;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_1
    return-void
.end method

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
    .line 651
    iput-object p1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    iput-object p2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->val$timelineResults:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 654
    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v10}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v10

    iget-object v11, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    new-instance v12, Lcom/google/glass/util/SettingsSecure;

    iget-object v13, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    invoke-virtual {v13}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v10, v11, v12}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    .line 660
    .local v1, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, fileName:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->answerCardResponse:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$600(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 663
    .local v6, responseBytes:Lcom/google/protobuf/ByteString;
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v10

    sget-object v11, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v6}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v12

    invoke-virtual {v10, v11, v3, v12}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 665
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v10

    sget-object v11, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v10, v11, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, filePath:Ljava/lang/String;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v10

    const-string v11, "application/glass+html"

    invoke-virtual {v10, v11}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 672
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 675
    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    iget-object v11, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->val$timelineResults:Lcom/google/glass/home/search/results/ResultsContainer;

    #calls: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->addTimelineOptionsMenu(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V
    invoke-static {v10, v1, v11, v14}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$300(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/search/results/ResultsContainer;Z)V

    .line 678
    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->recognitionResult:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$400(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 680
    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->val$timelineResults:Lcom/google/glass/home/search/results/ResultsContainer;

    invoke-virtual {v10, v14}, Lcom/google/glass/home/search/results/ResultsContainer;->getBundleAt(I)Landroid/os/Bundle;

    move-result-object v2

    .line 681
    .local v2, coverBundle:Landroid/os/Bundle;
    const-string v10, "TTS_FORMAT_STRING_KEY"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 682
    const-string v10, "TTS_FORMAT_STRING_KEY"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 683
    .local v7, ttsFormatString:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 684
    const-string v10, "TTS_LANGUAGE_KEY"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 685
    .local v8, ttsLang:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "en"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "en-us"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 686
    invoke-static {v7, v8}, Lcom/google/glass/voice/network/translate/NetworkTts;->getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 687
    .local v9, url:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 688
    invoke-virtual {v1, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 693
    .end local v7           #ttsFormatString:Ljava/lang/String;
    .end local v8           #ttsLang:Ljava/lang/String;
    .end local v9           #url:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v5

    .line 694
    .local v5, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v10}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$000(Lcom/google/glass/home/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v10

    iget-object v11, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    sget-object v12, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VOICE_SEARCH:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v5, v12, v13}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 698
    iget-object v10, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    new-instance v11, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v11, v5}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    #setter for: Lcom/google/glass/home/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {v10, v11}, Lcom/google/glass/home/search/VoiceSearchResultsActivity;->access$502(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Lcom/google/glass/timeline/TimelineItemId;)Lcom/google/glass/timeline/TimelineItemId;

    .line 700
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v2           #coverBundle:Landroid/os/Bundle;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_1
    return-void
.end method

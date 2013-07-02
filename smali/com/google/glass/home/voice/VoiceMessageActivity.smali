.class public Lcom/google/glass/home/voice/VoiceMessageActivity;
.super Lcom/google/glass/voice/BaseVoiceInputActivity;
.source "VoiceMessageActivity.java"


# static fields
.field private static final ANIMATE_UP_DURATION_MILLIS:J = 0xdcL

.field static final CANCEL_TIP_FADE_ANIMATION_DURATION_MILLIS:J = 0x1f4L

.field private static final MSG_CONFIRM_SEND:I = 0x0

.field private static final TOP_MARGIN:I = 0x28


# instance fields
.field private cancelTip:Lcom/google/glass/widget/TypophileTextView;

.field private final handler:Landroid/os/Handler;

.field private header:Landroid/widget/LinearLayout;

.field private isRecognitionResultExpanded:Z

.field private isReplyingAll:Z

.field private messageType:I

.field private recognitionResult:Ljava/lang/String;

.field private replyToId:Ljava/lang/String;

.field private subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

.field private timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private toId:Ljava/lang/String;

.field private toName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isRecognitionResultExpanded:Z

    .line 99
    new-instance v0, Lcom/google/glass/home/voice/VoiceMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/VoiceMessageActivity$1;-><init>(Lcom/google/glass/home/voice/VoiceMessageActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/VoiceMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->confirmSend()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->onMessageCommitted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/VoiceMessageActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/voice/VoiceMessageActivity;->sendViaGmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyCloudTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;ZLjava/lang/String;)V

    return-void
.end method

.method private confirmSend()V
    .locals 7

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    sget v3, Lcom/google/glass/home/R$string;->voice_message_send_confirming:I

    .line 248
    .local v3, temporaryMessage:I
    sget v0, Lcom/google/glass/home/R$string;->voice_message_send_confirmed:I

    .line 249
    .local v0, message:I
    sget v2, Lcom/google/glass/home/R$drawable;->ic_reply_medium:I

    .line 251
    .local v2, temporaryIcon:I
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->SMS_FROM_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    iget v4, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 254
    sget v3, Lcom/google/glass/home/R$string;->voice_message_send_email_confirming:I

    .line 255
    sget v0, Lcom/google/glass/home/R$string;->voice_message_send_email_confirmed:I

    .line 257
    sget v2, Lcom/google/glass/home/R$drawable;->ic_message_medium:I

    .line 266
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->recognitionResult:Ljava/lang/String;

    .line 267
    .local v1, messageToSend:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Empty message sent! Finishing VoiceMessageActivity."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->finish()V

    .line 294
    .end local v0           #message:I
    .end local v1           #messageToSend:Ljava/lang/String;
    .end local v2           #temporaryIcon:I
    .end local v3           #temporaryMessage:I
    :cond_1
    :goto_1
    return-void

    .line 258
    .restart local v0       #message:I
    .restart local v2       #temporaryIcon:I
    .restart local v3       #temporaryMessage:I
    :cond_2
    iget v4, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 260
    sget v3, Lcom/google/glass/home/R$string;->voice_message_send_sms_confirming:I

    .line 261
    sget v0, Lcom/google/glass/home/R$string;->voice_message_send_sms_confirmed:I

    .line 262
    sget v2, Lcom/google/glass/home/R$drawable;->ic_message_medium:I

    goto :goto_0

    .line 273
    .restart local v1       #messageToSend:Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v4, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/glass/home/voice/VoiceMessageActivity$2;

    invoke-direct {v5, p0, v1}, Lcom/google/glass/home/voice/VoiceMessageActivity$2;-><init>(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/widget/MessageDialog;->show()V

    goto :goto_1
.end method

.method private static getSmsCreator(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 4
    .parameter "activity"
    .parameter "settingsSecure"

    .prologue
    .line 571
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 575
    .local v1, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v1, :cond_0

    .line 576
    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    .line 580
    .local v0, entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :goto_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 581
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    return-object v2

    .line 578
    .end local v0           #entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :cond_0
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    .restart local v0       #entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    goto :goto_0
.end method

.method private onMessageCommitted(Ljava/lang/String;)V
    .locals 8
    .parameter "recognitionResult"

    .prologue
    .line 297
    iget v4, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    .line 298
    .local v4, currentMessageType:I
    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    .line 299
    .local v3, currentToId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toName:Ljava/lang/String;

    .line 300
    .local v5, currentToName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyToId:Ljava/lang/String;

    .line 301
    .local v2, currentReplyToId:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isReplyingAll:Z

    .line 302
    .local v7, currentIsReplyingAll:Z
    new-instance v0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/home/voice/VoiceMessageActivity$3;-><init>(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 336
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->finishAndTurnScreenOffIfRequested()V

    .line 337
    return-void
.end method

.method private replyCloudTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;ZLjava/lang/String;)V
    .locals 11
    .parameter "sourceItem"
    .parameter "isReplyingAll"
    .parameter "recognitionResult"

    .prologue
    const/4 v10, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Replying to timeline item via cloud-based Glassware ..."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 394
    .local v3, replyToEntity:Lcom/google/googlex/glass/common/proto/Entity;
    if-nez v3, :cond_0

    .line 396
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 401
    :cond_0
    iget-object v7, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v8, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v7, p0, v8}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    .line 405
    .local v2, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 412
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 413
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 417
    :cond_1
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v7

    invoke-virtual {v7, p0, v10}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    .line 419
    .local v4, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v4, :cond_2

    .line 421
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    .line 422
    .local v0, entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 426
    .end local v0           #entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :cond_2
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/google/glass/entity/EntityHelper;->getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 429
    .local v6, userEmail:Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 430
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllShareTarget(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 442
    :cond_3
    :goto_0
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v5

    .line 443
    .local v5, userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    .line 444
    sget-object v7, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v5, v7}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 449
    :goto_1
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    .line 450
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v7, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    sget-object v8, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VOICE_MESSAGE:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v9

    invoke-virtual {v7, p0, v1, v8, v9}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 453
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v7

    sget-object v8, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    if-ne v7, v8, :cond_8

    .line 454
    sget-object v7, Lcom/google/glass/logging/UserEventAction;->REPLY_ALL_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 460
    :cond_4
    :goto_2
    return-void

    .line 432
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v5           #userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    :cond_5
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 436
    :cond_6
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearShareTarget()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 437
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllShareTarget(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0

    .line 446
    .restart local v5       #userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    :cond_7
    sget-object v7, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v5, v7}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    goto :goto_1

    .line 456
    .restart local v1       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_8
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v7

    sget-object v8, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    if-ne v7, v8, :cond_4

    .line 457
    sget-object v7, Lcom/google/glass/logging/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static replyCompanionTimelineItem(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/String;)V
    .locals 9
    .parameter "activity"
    .parameter "sourceItem"
    .parameter "recognitionResult"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Replying to timeline item via companion..."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v4

    if-nez v4, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Don\'t have creator specified, can\'t reply."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 474
    .local v3, replyToEntity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    .line 475
    .local v1, isCompanionSms:Z
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v4

    new-instance v5, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v4, p0, v5}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    .line 477
    .local v2, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 486
    new-instance v4, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, v4}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getSmsCreator(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 490
    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Replying to companion SMS..."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 503
    :goto_1
    invoke-virtual {v2, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/glass/companion/CompanionUtils;->getSmsBundleId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, bundleId:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 509
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set the bundle id to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    invoke-static {p0, v4, v8}, Lcom/google/glass/home/voice/VoiceMessageActivity;->sendItemToCompanion(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V

    goto/16 :goto_0

    .line 494
    .end local v0           #bundleId:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Replying to SMS created by Glass.."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 496
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "The shared target should be specified for the SMS reply!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 500
    :cond_2
    invoke-virtual {p1, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_1
.end method

.method private static sendItemToCompanion(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V
    .locals 6
    .parameter "activity"
    .parameter "item"
    .parameter "isNewMessage"

    .prologue
    const/4 v4, 0x0

    .line 589
    if-eqz p2, :cond_0

    .line 590
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    .line 591
    .local v0, userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    .line 597
    .local v1, userEventAction:Lcom/google/glass/logging/UserEventAction;
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VOICE_MESSAGE:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-virtual {v2, p0, p1, v3, v0}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 603
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 605
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v2

    invoke-static {p0, v2, p1}, Lcom/google/glass/companion/CompanionUtils;->sendTimelineItem(Landroid/content/Context;Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to send SMS to companion"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNC_FAILED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/google/glass/companion/CompanionUtils;->updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Lcom/google/glass/timeline/TimelineHelper;Z)V

    .line 613
    :goto_1
    return-void

    .line 593
    .end local v0           #userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    .end local v1           #userEventAction:Lcom/google/glass/logging/UserEventAction;
    :cond_0
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    .line 594
    .restart local v0       #userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    .restart local v1       #userEventAction:Lcom/google/glass/logging/UserEventAction;
    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMS to companion is sent"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private sendViaGmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "email"
    .parameter "userName"
    .parameter "recognitionResult"

    .prologue
    const/4 v9, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Sending new message via Gmail..."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 343
    .local v3, target:Lcom/google/googlex/glass/common/proto/Entity;
    const-string v1, "api:208113750677"

    .line 345
    .local v1, gmailGlasswareId:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 346
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v4

    .line 350
    .local v4, targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :goto_0
    invoke-virtual {v4, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    .line 355
    if-eqz p2, :cond_0

    .line 356
    invoke-virtual {v4, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 358
    :cond_0
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 360
    iget-object v6, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v7, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v6, p0, v7}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    .line 364
    .local v2, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v2, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 370
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v6

    invoke-virtual {v6, p0, v9}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v5

    .line 372
    .local v5, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v5, :cond_1

    .line 374
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    .line 375
    .local v0, entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 378
    .end local v0           #entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :cond_1
    iget-object v6, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v7

    sget-object v8, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VOICE_MESSAGE:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v9

    sget-object v10, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v9, v10}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v9

    invoke-virtual {v6, p0, v7, v8, v9}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 384
    sget-object v6, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 386
    return-void

    .line 348
    .end local v2           #itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v4           #targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .end local v5           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_2
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v4

    .restart local v4       #targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    goto :goto_0
.end method

.method static sendViaSms(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "activity"
    .parameter "phoneNumber"
    .parameter "recognitionResult"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Replying to phone number..."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phone number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    .line 527
    .local v4, target:Lcom/google/googlex/glass/common/proto/Entity;
    const-string v3, "companion:com.google.glass.companion.sms"

    .line 531
    .local v3, smsCompanionwareId:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 532
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v5

    .line 536
    .local v5, targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :goto_0
    invoke-virtual {v5, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    .line 542
    new-instance v2, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 544
    .local v2, settingsSecure:Lcom/google/glass/util/SettingsSecure;
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v6

    invoke-virtual {v6, p0, v2}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    .line 547
    .local v1, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {p0, p1}, Lcom/google/glass/companion/CompanionUtils;->getSmsBundleId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, bundleId:Ljava/lang/String;
    sget-object v6, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->COMPANIONWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    invoke-virtual {v1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 557
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set the bundle id to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {p0, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getSmsCreator(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 562
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/google/glass/home/voice/VoiceMessageActivity;->sendItemToCompanion(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V

    .line 563
    return-void

    .line 534
    .end local v0           #bundleId:Ljava/lang/String;
    .end local v1           #itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v2           #settingsSecure:Lcom/google/glass/util/SettingsSecure;
    .end local v5           #targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :cond_0
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v5

    .restart local v5       #targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    goto/16 :goto_0
.end method

.method private showCancelTip()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    .line 645
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 647
    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 640
    sget v0, Lcom/google/glass/home/R$string;->voice_menu_item_send_message:I

    return v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 635
    sget v0, Lcom/google/glass/home/R$string;->voice_message_speak_message:I

    return v0
.end method

.method getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x2

    return v0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 114
    invoke-super {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance v1, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v1}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 118
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing trigger method extra in intent, bailing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v1, "MESSAGE_TYPE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    .line 126
    const-string v1, "TO_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    .line 127
    const-string v1, "TO_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toName:Ljava/lang/String;

    .line 128
    const-string v1, "REPLY_TO_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyToId:Ljava/lang/String;

    .line 129
    const-string v1, "REPLY_ALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isReplyingAll:Z

    .line 132
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyToId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "One of the extras TO_ID or REPLY_TO_ID should be specified"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    if-ne v1, v5, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The MESSAGE_TYPE extra must be specified when specifying a TO_ID"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyToId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Only one of the extras TO_ID or REPLY_TO_ID should be specified"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4
    .parameter "dismissAction"

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 180
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "t"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->detachVoiceInputCallback()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->recognitionResult:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->finish()V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 6
    .parameter "recognitionResult"

    .prologue
    const/4 v5, 0x0

    .line 216
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->recognitionResult:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PROBLEM: Recognition result was already set!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->recognitionResult:Ljava/lang/String;

    .line 221
    sget-object v2, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 223
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->showCancelTip()V

    .line 225
    invoke-static {p1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getResultDuration(Ljava/lang/String;)J

    move-result-wide v0

    .line 226
    .local v0, showResultDuration:J
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 147
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onResume()V

    .line 149
    sget v0, Lcom/google/glass/home/R$id;->voice_input_subselected_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    .line 150
    sget v0, Lcom/google/glass/home/R$id;->header:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->header:Landroid/widget/LinearLayout;

    .line 151
    sget v0, Lcom/google/glass/home/R$id;->cancel_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    .line 152
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->triggerMethod:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->header:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    :goto_1
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->header:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onUpdateRecognizedText()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0xdc

    .line 199
    iget-boolean v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isRecognitionResultExpanded:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getRecognizedTextLineCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 200
    iput-boolean v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isRecognitionResultExpanded:Z

    .line 202
    sget v2, Lcom/google/glass/home/R$id;->streaming_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/StreamingTextView;

    .line 203
    .local v1, streamingTextView:Lcom/google/glass/voice/StreamingTextView;
    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView;->getY()F

    move-result v2

    const/high16 v3, 0x4220

    sub-float v0, v2, v3

    .line 205
    .local v0, moveUpBy:F
    sget v2, Lcom/google/glass/home/R$id;->header:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 207
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 209
    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 212
    .end local v0           #moveUpBy:F
    .end local v1           #streamingTextView:Lcom/google/glass/voice/StreamingTextView;
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 625
    sget v0, Lcom/google/glass/home/R$layout;->voice_input_activity:I

    return v0
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

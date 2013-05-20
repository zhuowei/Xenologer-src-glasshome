.class public Lcom/google/glass/home/voice/VoiceMessageActivity;
.super Lcom/google/glass/home/voice/BaseVoiceInputActivity;
.source "VoiceMessageActivity.java"


# static fields
.field private static final ANIMATE_UP_DURATION_MILLIS:J = 0xdcL

.field static final CANCEL_TIP_FADE_ANIMATION_DURATION_MILLIS:J = 0x1f4L

.field private static final MSG_CONFIRM_SEND:I = 0x0

.field private static final SHOW_RESULT_DURATION_MAX_ADDITIONAL:J = 0xbb8L

.field private static final SHOW_RESULT_DURATION_MINIMUM:J = 0x7d0L

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
    .line 55
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isRecognitionResultExpanded:Z

    .line 114
    new-instance v0, Lcom/google/glass/home/voice/VoiceMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/VoiceMessageActivity$1;-><init>(Lcom/google/glass/home/voice/VoiceMessageActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/VoiceMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->confirmSend()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/home/voice/VoiceMessageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->onMessageCommitted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/VoiceMessageActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/voice/VoiceMessageActivity;->sendViaGmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->sendViaSms(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/home/voice/VoiceMessageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/voice/VoiceMessageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyCompanionTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/home/voice/VoiceMessageActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyCloudTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;ZLjava/lang/String;)V

    return-void
.end method

.method private confirmSend()V
    .locals 7

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    sget v3, Lcom/google/glass/home/R$string;->voice_message_send_confirming:I

    .line 270
    .local v3, temporaryMessage:I
    sget v0, Lcom/google/glass/home/R$string;->voice_message_send_confirmed:I

    .line 271
    .local v0, message:I
    sget v2, Lcom/google/glass/home/R$drawable;->ic_reply_medium:I

    .line 273
    .local v2, temporaryIcon:I
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->SMS_FROM_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    iget v4, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 276
    sget v3, Lcom/google/glass/home/R$string;->voice_message_send_email_confirming:I

    .line 277
    sget v0, Lcom/google/glass/home/R$string;->voice_message_send_email_confirmed:I

    .line 279
    sget v2, Lcom/google/glass/home/R$drawable;->ic_message_medium:I

    .line 288
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->recognitionResult:Ljava/lang/String;

    .line 289
    .local v1, messageToSend:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Empty message sent! Finishing VoiceMessageActivity."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->finish()V

    .line 316
    .end local v0           #message:I
    .end local v1           #messageToSend:Ljava/lang/String;
    .end local v2           #temporaryIcon:I
    .end local v3           #temporaryMessage:I
    :cond_1
    :goto_1
    return-void

    .line 280
    .restart local v0       #message:I
    .restart local v2       #temporaryIcon:I
    .restart local v3       #temporaryMessage:I
    :cond_2
    iget v4, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 282
    sget v3, Lcom/google/glass/home/R$string;->voice_message_send_sms_confirming:I

    .line 283
    sget v0, Lcom/google/glass/home/R$string;->voice_message_send_sms_confirmed:I

    .line 284
    sget v2, Lcom/google/glass/home/R$drawable;->ic_message_medium:I

    goto :goto_0

    .line 295
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

.method public static getResultDuration(Ljava/lang/String;)J
    .locals 10
    .parameter "recognitionResult"

    .prologue
    .line 246
    const-wide/16 v0, 0x7d0

    const-wide v2, 0x40a7700000000000L

    const-wide/high16 v4, 0x3ff0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x4061800000000000L

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private onMessageCommitted(Ljava/lang/String;)V
    .locals 8
    .parameter "recognitionResult"

    .prologue
    .line 319
    iget v4, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    .line 320
    .local v4, currentMessageType:I
    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    .line 321
    .local v3, currentToId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toName:Ljava/lang/String;

    .line 322
    .local v5, currentToName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyToId:Ljava/lang/String;

    .line 323
    .local v2, currentReplyToId:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isReplyingAll:Z

    .line 324
    .local v7, currentIsReplyingAll:Z
    new-instance v0, Lcom/google/glass/home/voice/VoiceMessageActivity$3;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/home/voice/VoiceMessageActivity$3;-><init>(Lcom/google/glass/home/voice/VoiceMessageActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 358
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->finishAndTurnScreenOffIfRequested()V

    .line 359
    return-void
.end method

.method private replyCloudTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;ZLjava/lang/String;)V
    .locals 10
    .parameter "sourceItem"
    .parameter "isReplyingAll"
    .parameter "recognitionResult"

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Replying to timeline item via cloud-based Glassware ..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 416
    .local v3, replyToEntity:Lcom/google/googlex/glass/common/proto/Entity;
    if-nez v3, :cond_0

    .line 418
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 423
    :cond_0
    iget-object v7, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v8, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v7, p0, v8}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    .line 427
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

    .line 434
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 435
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 439
    :cond_1
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p0, v8}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    .line 441
    .local v4, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v4, :cond_2

    .line 443
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    .line 444
    .local v0, entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 448
    .end local v0           #entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :cond_2
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/google/glass/entity/EntityHelper;->getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, userEmail:Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 452
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllShareTarget(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 464
    :cond_3
    :goto_0
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v5

    .line 465
    .local v5, userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getShareTargetCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    .line 466
    sget-object v7, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v5, v7}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 471
    :goto_1
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    .line 472
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v7, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    sget-object v8, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VOICE_MESSAGE:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v9

    invoke-virtual {v7, p0, v1, v8, v9}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 475
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v7

    sget-object v8, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    if-ne v7, v8, :cond_8

    .line 476
    sget-object v7, Lcom/google/glass/logging/UserEventAction;->REPLY_ALL_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 482
    :cond_4
    :goto_2
    return-void

    .line 454
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

    .line 458
    :cond_6
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearShareTarget()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 459
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllShareTarget(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0

    .line 468
    .restart local v5       #userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    :cond_7
    sget-object v7, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v5, v7}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    goto :goto_1

    .line 478
    .restart local v1       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_8
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v7

    sget-object v8, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    if-ne v7, v8, :cond_4

    .line 479
    sget-object v7, Lcom/google/glass/logging/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private replyCompanionTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/String;)V
    .locals 12
    .parameter "sourceItem"
    .parameter "recognitionResult"

    .prologue
    const/4 v11, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Replying to timeline item via companion..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    .line 488
    .local v4, replyToEntity:Lcom/google/googlex/glass/common/proto/Entity;
    if-nez v4, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Don\'t have creator specified, can\'t reply."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v2

    .line 494
    .local v2, isCompanionSms:Z
    iget-object v7, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v8, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v7, p0, v8}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    .line 497
    .local v3, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v8

    sget-object v9, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v8, v9}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v8

    sget-object v9, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v8, v9}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v8

    sget-object v9, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v8, v9}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 507
    new-instance v5, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 511
    .local v5, settingsSecure:Lcom/google/glass/util/SettingsSecure;
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v7

    invoke-virtual {v7, p0, v11}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v6

    .line 513
    .local v6, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v6, :cond_1

    .line 515
    invoke-static {v6}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v7

    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v1

    .line 518
    .local v1, entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-virtual {v3, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 522
    .end local v1           #entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :cond_1
    if-eqz v2, :cond_3

    .line 523
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 524
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 525
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, bundleId:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 547
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set the bundle id to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v7

    invoke-direct {p0, v7, v11}, Lcom/google/glass/home/voice/VoiceMessageActivity;->sendItemToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V

    goto/16 :goto_0

    .line 527
    .end local v0           #bundleId:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/companion/CompanionUtils;->getSmsBundleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bundleId:Ljava/lang/String;
    goto :goto_1

    .line 531
    .end local v0           #bundleId:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v7

    if-eqz v7, :cond_5

    .line 532
    invoke-virtual {p1, v11}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 533
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 534
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bundleId:Ljava/lang/String;
    goto :goto_1

    .line 536
    .end local v0           #bundleId:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v11}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/companion/CompanionUtils;->getSmsBundleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bundleId:Ljava/lang/String;
    goto :goto_1

    .line 539
    .end local v0           #bundleId:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "The shared target should be specified for the sms reply!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendItemToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V
    .locals 5
    .parameter "item"
    .parameter "isNewMessage"

    .prologue
    .line 612
    if-eqz p2, :cond_0

    .line 613
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    .line 614
    .local v0, userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    .line 620
    .local v1, userEventAction:Lcom/google/glass/logging/UserEventAction;
    :goto_0
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    sget-object v3, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->VOICE_MESSAGE:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-virtual {v2, p0, p1, v3, v0}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 626
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 628
    invoke-static {p0, p1}, Lcom/google/glass/home/companion/CompanionHelper;->sendTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to send SMS to companion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNC_FAILED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Lcom/google/glass/home/companion/CompanionHelper;->updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Z)V

    .line 635
    :goto_1
    return-void

    .line 616
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

    .line 617
    .restart local v0       #userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    .restart local v1       #userEventAction:Lcom/google/glass/logging/UserEventAction;
    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMS to companion is sent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendViaGmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "email"
    .parameter "userName"
    .parameter "recognitionResult"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Sending new message via Gmail..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 365
    .local v3, target:Lcom/google/googlex/glass/common/proto/Entity;
    const-string v1, "api:208113750677"

    .line 367
    .local v1, gmailGlasswareId:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 368
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v4

    .line 372
    .local v4, targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :goto_0
    invoke-virtual {v4, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    .line 377
    if-eqz p2, :cond_0

    .line 378
    invoke-virtual {v4, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 380
    :cond_0
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 382
    iget-object v6, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v7, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v6, p0, v7}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    .line 386
    .local v2, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v2, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 392
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p0, v7}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v5

    .line 394
    .local v5, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v5, :cond_1

    .line 396
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    .line 397
    .local v0, entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 400
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

    .line 406
    sget-object v6, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 408
    return-void

    .line 370
    .end local v2           #itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v4           #targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .end local v5           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_2
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v4

    .restart local v4       #targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    goto :goto_0
.end method

.method private sendViaSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "phoneNumber"
    .parameter "recognitionResult"

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Replying to phone number..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v8, 0x6

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Phone number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v5

    .line 564
    .local v5, target:Lcom/google/googlex/glass/common/proto/Entity;
    const-string v4, "companion:com.google.glass.companion.sms"

    .line 568
    .local v4, smsCompanionwareId:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 569
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    .line 573
    .local v6, targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :goto_0
    invoke-virtual {v6, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v5

    .line 579
    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 581
    .local v3, settingsSecure:Lcom/google/glass/util/SettingsSecure;
    iget-object v8, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {v8, p0, v3}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    .line 584
    .local v2, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {p1}, Lcom/google/glass/companion/CompanionUtils;->getSmsBundleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, bundleId:Ljava/lang/String;
    sget-object v8, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->COMPANIONWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    invoke-virtual {v2, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v8

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v9

    sget-object v10, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v9, v10}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v8

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v9

    sget-object v10, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v9, v10}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v8

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v9

    sget-object v10, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v9, v10}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v8

    sget-object v9, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v8, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 594
    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set the bundle id to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p0, v9}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v7

    .line 599
    .local v7, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v7, :cond_0

    .line 601
    invoke-static {v7}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v8

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v1

    .line 603
    .local v1, entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-virtual {v2, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 606
    .end local v1           #entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :cond_0
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/google/glass/home/voice/VoiceMessageActivity;->sendItemToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V

    .line 607
    return-void

    .line 571
    .end local v0           #bundleId:Ljava/lang/String;
    .end local v2           #itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v3           #settingsSecure:Lcom/google/glass/util/SettingsSecure;
    .end local v6           #targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .end local v7           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    .restart local v6       #targetBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    goto/16 :goto_0
.end method

.method private showCancelTip()V
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    .line 662
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 664
    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 657
    sget v0, Lcom/google/glass/home/R$string;->voice_menu_item_send_message:I

    return v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 652
    sget v0, Lcom/google/glass/home/R$string;->voice_message_speak_message:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x2

    return v0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 129
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    new-instance v1, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v1}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 133
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MESSAGE_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    .line 135
    const-string v1, "TO_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    .line 136
    const-string v1, "TO_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toName:Ljava/lang/String;

    .line 137
    const-string v1, "REPLY_TO_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyToId:Ljava/lang/String;

    .line 138
    const-string v1, "REPLY_ALL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isReplyingAll:Z

    .line 141
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyToId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "One of the extras TO_ID or REPLY_TO_ID should be specified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->messageType:I

    if-ne v1, v3, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The MESSAGE_TYPE extra must be specified when specifying a TO_ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    return-void

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->replyToId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Only one of the extras TO_ID or REPLY_TO_ID should be specified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 189
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "t"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->detachVoiceSearchUi()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->recognitionResult:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->finish()V

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 5
    .parameter "recognitionResult"

    .prologue
    .line 225
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->recognitionResult:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PROBLEM: Recognition result was already set!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->recognitionResult:Ljava/lang/String;

    .line 230
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 232
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->showCancelTip()V

    .line 234
    invoke-static {p1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getResultDuration(Ljava/lang/String;)J

    move-result-wide v0

    .line 235
    .local v0, showResultDuration:J
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onResume()V

    .line 158
    sget v0, Lcom/google/glass/home/R$id;->voice_search_subselected_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    .line 159
    sget v0, Lcom/google/glass/home/R$id;->header:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->header:Landroid/widget/LinearLayout;

    .line 160
    sget v0, Lcom/google/glass/home/R$id;->cancel_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    .line 161
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->header:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    :goto_1
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->toName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->header:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onUpdateRecognizedText()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0xdc

    .line 208
    iget-boolean v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isRecognitionResultExpanded:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getRecognizedTextLineCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 209
    iput-boolean v3, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->isRecognitionResultExpanded:Z

    .line 211
    sget v2, Lcom/google/glass/home/R$id;->streaming_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/search/StreamingTextView;

    .line 212
    .local v1, streamingTextView:Lcom/google/glass/home/search/StreamingTextView;
    invoke-virtual {v1}, Lcom/google/glass/home/search/StreamingTextView;->getY()F

    move-result v2

    const/high16 v3, 0x4220

    sub-float v0, v2, v3

    .line 214
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

    .line 216
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMessageActivity;->subSelectedItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    invoke-virtual {v1}, Lcom/google/glass/home/search/StreamingTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 221
    .end local v0           #moveUpBy:F
    .end local v1           #streamingTextView:Lcom/google/glass/home/search/StreamingTextView;
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 642
    sget v0, Lcom/google/glass/home/R$layout;->voice_search_activity:I

    return v0
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

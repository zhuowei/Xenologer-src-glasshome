.class public Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;
.super Lcom/google/glass/voice/BaseVoiceInputActivity;
.source "GlasswareVoiceInputActivity.java"


# static fields
.field public static final EXTRA_INPUT_TYPE_TEXT:Ljava/lang/String; = "input_type_text"

.field public static final EXTRA_PROMPT_TEXT:Ljava/lang/String; = "prompt_text"

.field public static final EXTRA_RECIPIENT:Ljava/lang/String; = "recipient"


# instance fields
.field final createTimelineItemRunnable:Ljava/lang/Runnable;

.field private inputTypeText:Ljava/lang/String;

.field private promptText:Ljava/lang/String;

.field private recipient:Lcom/google/googlex/glass/common/proto/Entity;

.field private recognitionResult:Ljava/lang/String;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$1;-><init>(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createTimelineItemRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createTimelineItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recipient:Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->finishAndTurnScreenOffIfRequested()V

    return-void
.end method

.method private createTimelineItem()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recognitionResult:Ljava/lang/String;

    .line 144
    .local v0, currentRecognitionResult:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No recognition result! Finishing VoiceMessageActivity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->finish()V

    goto :goto_0

    .line 150
    :cond_1
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/google/glass/home/R$string;->voice_message_send_confirming:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$drawable;->ic_message_medium:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$string;->voice_message_send_confirmed:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;-><init>(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->show()V

    goto :goto_0
.end method

.method private getCancelTip()Landroid/view/View;
    .locals 1

    .prologue
    .line 206
    sget v0, Lcom/google/glass/home/R$id;->cancel_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private insertTimelineItem(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/String;)V
    .locals 7
    .parameter "recipient"
    .parameter "recognitionResult"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Inserting timeline item."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 185
    .local v0, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 191
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 192
    .local v1, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 196
    :cond_0
    new-instance v2, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v2}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    sget-object v4, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->LAUNCH:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/UserAction$Type;->LAUNCH:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v5

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 203
    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method protected getInputTypeText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->inputTypeText:Ljava/lang/String;

    return-object v0
.end method

.method protected getPromptText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->promptText:Ljava/lang/String;

    return-object v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x3

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Prompt text required"

    const-string v2, "prompt_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->promptText:Ljava/lang/String;

    .line 65
    const-string v1, "Input type text required"

    const-string v2, "input_type_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->inputTypeText:Ljava/lang/String;

    .line 67
    const-string v2, "Recipient required"

    const-string v1, "recipient"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v2, v1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Entity;

    iput-object v1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recipient:Lcom/google/googlex/glass/common/proto/Entity;

    .line 69
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 132
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createTimelineItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recognitionResult:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->finish()V

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 6
    .parameter "recognitionResult"

    .prologue
    .line 111
    iget-object v3, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recognitionResult:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Recognition result was already set!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recognitionResult:Ljava/lang/String;

    .line 116
    sget-object v3, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v3}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 118
    invoke-direct {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getCancelTip()Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, cancelTip:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 120
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 124
    invoke-static {p1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getResultDuration(Ljava/lang/String;)J

    move-result-wide v1

    .line 125
    .local v1, showResultDuration:J
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createTimelineItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

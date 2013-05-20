.class public Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;
.super Lcom/google/glass/home/voice/BaseVoiceInputActivity;
.source "GlasswareVoiceInputActivity.java"


# static fields
.field public static final EXTRA_INPUT_TYPE_TEXT:Ljava/lang/String; = "input_type_text"

.field public static final EXTRA_PROJECT_ID:Ljava/lang/String; = "project_id"

.field public static final EXTRA_PROMPT_TEXT:Ljava/lang/String; = "prompt_text"


# instance fields
.field final createTimelineItemRunnable:Ljava/lang/Runnable;

.field private inputTypeText:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private promptText:Ljava/lang/String;

.field private recognitionResult:Ljava/lang/String;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$1;-><init>(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createTimelineItemRunnable:Ljava/lang/Runnable;

    .line 54
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

.method static synthetic access$100(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->insertTimelineItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)V
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
    .line 136
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recognitionResult:Ljava/lang/String;

    .line 141
    .local v0, currentRecognitionResult:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No recognition result! Finishing VoiceMessageActivity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->finish()V

    goto :goto_0

    .line 147
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
    .line 203
    sget v0, Lcom/google/glass/home/R$id;->cancel_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private insertTimelineItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "projectId"
    .parameter "recognitionResult"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Inserting timeline item."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "api:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, glasswareId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v4, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v3, p0, v4}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    .line 183
    .local v1, itemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 188
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    .line 189
    .local v2, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 193
    :cond_0
    new-instance v3, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v3}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    sget-object v5, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->LAUNCH:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/UserAction$Type;->LAUNCH:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v6

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 200
    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method protected getInputTypeText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->inputTypeText:Ljava/lang/String;

    return-object v0
.end method

.method protected getPromptText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->promptText:Ljava/lang/String;

    return-object v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x3

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-string v0, "Prompt text required"

    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "prompt_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->promptText:Ljava/lang/String;

    .line 62
    const-string v0, "Input type text required"

    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "input_type_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->inputTypeText:Ljava/lang/String;

    .line 64
    const-string v0, "Project ID required"

    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "project_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->projectId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 129
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createTimelineItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recognitionResult:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->finish()V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 6
    .parameter "recognitionResult"

    .prologue
    .line 108
    iget-object v3, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recognitionResult:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Recognition result was already set!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->recognitionResult:Ljava/lang/String;

    .line 113
    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v3}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 115
    invoke-direct {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getCancelTip()Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, cancelTip:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 121
    invoke-static {p1}, Lcom/google/glass/home/voice/VoiceMessageActivity;->getResultDuration(Ljava/lang/String;)J

    move-result-wide v1

    .line 122
    .local v1, showResultDuration:J
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createTimelineItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/google/glass/home/voice/VoiceAnnotationActivity;
.super Lcom/google/glass/home/voice/BaseVoiceInputActivity;
.source "VoiceAnnotationActivity.java"


# static fields
.field private static final ANIMATE_UP_DURATION_MILLIS:J = 0xdcL

.field static final CANCEL_TIP_FADE_ANIMATION_DURATION_MILLIS:J = 0x1f4L

.field private static final MSG_CONFIRM_ANNOTATION:I = 0x0

.field private static final TOP_MARGIN:I = 0x28


# instance fields
.field private cancelTip:Lcom/google/glass/widget/TypophileTextView;

.field private final handler:Landroid/os/Handler;

.field private isRecognitionResultExpanded:Z

.field private recognitionResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->isRecognitionResultExpanded:Z

    .line 53
    new-instance v0, Lcom/google/glass/home/voice/VoiceAnnotationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity$1;-><init>(Lcom/google/glass/home/voice/VoiceAnnotationActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/VoiceAnnotationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->confirmAnnotation()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/VoiceAnnotationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->onAnnotationCommitted(Ljava/lang/String;)V

    return-void
.end method

.method private confirmAnnotation()V
    .locals 5

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    .line 151
    .local v1, textToReturn:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Empty annotation returned. Finishing..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->finish()V

    .line 179
    .end local v1           #textToReturn:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 157
    .restart local v1       #textToReturn:Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v2, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/google/glass/home/R$string;->voice_annotation_adding:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$drawable;->ic_message_medium:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$string;->voice_annotation_added:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/home/voice/VoiceAnnotationActivity$2;-><init>(Lcom/google/glass/home/voice/VoiceAnnotationActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 177
    .local v0, dialog:Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    goto :goto_0
.end method

.method private onAnnotationCommitted(Ljava/lang/String;)V
    .locals 2
    .parameter "recognitionResult"

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "annotation_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->finish()V

    .line 186
    return-void
.end method

.method private showCancelTip()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 215
    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getSpeakNowPromptResId()I

    move-result v0

    return v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 203
    sget v0, Lcom/google/glass/home/R$string;->voice_annotation_speak_your_message:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x5

    return v0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lcom/google/glass/home/R$id;->header:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    sget v0, Lcom/google/glass/home/R$id;->cancel_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    .line 72
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 3
    .parameter "dismissAction"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 88
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "t"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->detachVoiceSearchUi()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->finish()V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 5
    .parameter "recognitionResult"

    .prologue
    .line 121
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PROBLEM: Recognition result was already set!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    .line 126
    sget-object v2, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 128
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->showCancelTip()V

    .line 130
    invoke-static {p1}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getResultDuration(Ljava/lang/String;)J

    move-result-wide v0

    .line 131
    .local v0, showResultDuration:J
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    return-void
.end method

.method protected onUpdateRecognizedText()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xdc

    const/4 v3, 0x1

    .line 106
    iget-boolean v2, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->isRecognitionResultExpanded:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->getRecognizedTextLineCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 107
    iput-boolean v3, p0, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->isRecognitionResultExpanded:Z

    .line 109
    sget v2, Lcom/google/glass/home/R$id;->streaming_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/search/StreamingTextView;

    .line 110
    .local v1, streamingTextView:Lcom/google/glass/search/StreamingTextView;
    invoke-virtual {v1}, Lcom/google/glass/search/StreamingTextView;->getY()F

    move-result v2

    const/high16 v3, 0x4220

    sub-float v0, v2, v3

    .line 112
    .local v0, moveUpBy:F
    sget v2, Lcom/google/glass/home/R$id;->header:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 114
    invoke-virtual {v1}, Lcom/google/glass/search/StreamingTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 117
    .end local v0           #moveUpBy:F
    .end local v1           #streamingTextView:Lcom/google/glass/search/StreamingTextView;
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 193
    sget v0, Lcom/google/glass/home/R$layout;->voice_search_activity:I

    return v0
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

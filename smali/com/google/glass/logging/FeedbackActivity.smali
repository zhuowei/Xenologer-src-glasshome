.class public Lcom/google/glass/logging/FeedbackActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "FeedbackActivity.java"


# static fields
.field private static final REQUEST_CODE_VOICE_ANNOTATION:I = 0xa


# instance fields
.field private annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/glass/logging/FeedbackActivity;->sendFeedback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/voice/VoiceAnnotationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method private sendFeedback(Ljava/lang/String;)V
    .locals 10
    .parameter "description"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 102
    .local v9, intent:Landroid/content/Intent;
    if-nez v9, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No intent."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->finish()V

    .line 143
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "title"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, name:Ljava/lang/String;
    const-string v0, "screenshot"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    .line 110
    .local v4, screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;
    const-string v0, "recovery_action"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/google/glass/util/Feedback$RecoveryAction;

    .line 112
    .local v8, recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;
    const-string v0, "bugreport"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 113
    .local v5, shouldBugreport:Z
    const-string v0, "additional_files"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, additionalFiles:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", description: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", screenshot: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", recoveryAction: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", shouldBugreport: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v6, Lcom/google/glass/logging/CompanionLogReader;

    invoke-direct {v6, p0}, Lcom/google/glass/logging/CompanionLogReader;-><init>(Landroid/content/Context;)V

    .line 122
    .local v6, companionLogReader:Lcom/google/glass/logging/CompanionLogReader;
    new-instance v0, Lcom/google/glass/logging/FeedbackActivity$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/logging/FeedbackActivity$2;-><init>(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$Screenshot;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/GlassActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->onActivityResult(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/logging/FeedbackActivity;->sendFeedback(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v2, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/glass/logging/FeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 41
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "allow_voice_note"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    .local v0, allowVoiceNote:Z
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v2, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/google/glass/logging/R$drawable;->ic_bug_large:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/logging/R$string;->capturing_bugreport:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/logging/FeedbackActivity$1;

    invoke-direct {v3, p0}, Lcom/google/glass/logging/FeedbackActivity$1;-><init>(Lcom/google/glass/logging/FeedbackActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 74
    .local v1, builder:Lcom/google/glass/widget/MessageDialog$Builder;
    if-eqz v0, :cond_0

    .line 75
    sget v2, Lcom/google/glass/logging/R$string;->sharing_menu_tap_to_annotate:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 78
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/FeedbackActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 79
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/google/glass/logging/R$layout;->feedback:I

    return v0
.end method

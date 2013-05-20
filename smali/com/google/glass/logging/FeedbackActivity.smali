.class public Lcom/google/glass/logging/FeedbackActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "FeedbackActivity.java"


# instance fields
.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 36
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 37
    .local v8, intent:Landroid/content/Intent;
    if-nez v8, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No intent."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, "name"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, name:Ljava/lang/String;
    const-string v0, "screenshot"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    .line 43
    .local v3, screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;
    const-string v0, "recovery_action"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/google/glass/util/Feedback$RecoveryAction;

    .line 45
    .local v7, recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;
    const-string v0, "bugreport"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 46
    .local v4, shouldBugreport:Z
    const-string v0, "additional_files"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, additionalFiles:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", screenshot: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", recoveryAction: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", shouldBugreport: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v5, Lcom/google/glass/logging/CompanionLogReader;

    invoke-direct {v5, p0}, Lcom/google/glass/logging/CompanionLogReader;-><init>(Landroid/content/Context;)V

    .line 54
    .local v5, companionLogReader:Lcom/google/glass/logging/CompanionLogReader;
    new-instance v0, Lcom/google/glass/logging/FeedbackActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/logging/FeedbackActivity$1;-><init>(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$Screenshot;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/google/glass/logging/R$layout;->feedback:I

    return v0
.end method

.method protected shouldAllowVoiceInput()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/google/glass/home/search/VoiceSearchActivity;
.super Lcom/google/glass/home/voice/BaseVoiceInputActivity;
.source "VoiceSearchActivity.java"


# static fields
.field public static final EXTRA_CALLED_BY_PRESS_TO_SEARCH:Ljava/lang/String; = "called_by_press_to_search"

.field private static final FAST_DISMISS_DELAY_MS:J = 0x3e8L


# instance fields
.field private logFastDismiss:Z

.field private screenOn:Z

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;-><init>()V

    return-void
.end method

.method private logFastDismissed(J)V
    .locals 8
    .parameter "delay"

    .prologue
    .line 161
    new-instance v3, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v1

    .line 162
    .local v1, guestMode:Z
    invoke-static {p0}, Lcom/google/glass/util/HiddenApiHelper;->isDonDoffDetectorEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 163
    .local v0, don:Z
    const-string v5, "s"

    iget-boolean v3, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->screenOn:Z

    if-eqz v3, :cond_0

    const-string v3, "on"

    :goto_0
    const/4 v4, 0x6

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v7, "g"

    aput-object v7, v6, v4

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    const-string v4, "on"

    :goto_1
    aput-object v4, v6, v7

    const/4 v4, 0x2

    const-string v7, "d"

    aput-object v7, v6, v4

    const/4 v7, 0x3

    if-eqz v0, :cond_2

    const-string v4, "y"

    :goto_2
    aput-object v4, v6, v7

    const/4 v4, 0x4

    const-string v7, "t"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v3, v6}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, payload:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v2}, Lcom/google/glass/home/search/VoiceSearchActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 170
    return-void

    .line 163
    .end local v2           #payload:Ljava/lang/String;
    :cond_0
    const-string v3, "off"

    goto :goto_0

    :cond_1
    const-string v4, "off"

    goto :goto_1

    :cond_2
    const-string v4, "n"

    goto :goto_2
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 90
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SEARCH:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/google/glass/home/R$string;->voice_menu_item_google:I

    return v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SEARCH:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lcom/google/glass/home/R$string;->voice_search_speak_now:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method getVoiceSearchUi()Lcom/google/glass/voice/network/VoiceSearchUi;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    return-object v0
.end method

.method hasPendingMajelResults()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method hasPendingRecognitionResults()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method protected isMajelResponseExpected()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 6
    .parameter "dismissAction"

    .prologue
    .line 67
    iget-boolean v4, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->logFastDismiss:Z

    if-eqz v4, :cond_0

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 70
    .local v2, now:J
    iget-wide v4, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->startTime:J

    sub-long v0, v2, v4

    .line 71
    .local v0, delay:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/search/VoiceSearchActivity;->logFastDismissed(J)V

    .line 75
    .end local v0           #delay:J
    .end local v2           #now:J
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v4

    return v4
.end method

.method protected onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "majelResponse"
    .parameter "recognitionResult"
    .parameter "startTime"
    .parameter "endOfSpeechTime"

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, answer:Landroid/content/Intent;
    const-string v1, "recognitionResult"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "majelResponse"

    invoke-virtual {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 106
    const-string v1, "startTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 107
    const-string v1, "endofSpeech"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/VoiceSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchActivity;->finish()V

    .line 114
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-super {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onStart()V

    .line 54
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "called_by_press_to_search"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->startTime:J

    .line 57
    iput-boolean v4, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->logFastDismiss:Z

    .line 58
    const-string v1, "called_by_press_to_search"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->screenOn:Z

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-boolean v3, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->logFastDismiss:Z

    .line 61
    iput-boolean v4, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->screenOn:Z

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/google/glass/home/R$layout;->voice_search_activity:I

    return v0
.end method

.method protected shouldAllowLongPress()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

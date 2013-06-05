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
    .line 29
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;-><init>()V

    return-void
.end method

.method private logFastDismissed(J)V
    .locals 8
    .parameter "delay"

    .prologue
    .line 176
    new-instance v3, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v1

    .line 177
    .local v1, guestMode:Z
    invoke-static {p0}, Lcom/google/glass/util/HiddenApiHelper;->isDonDoffDetectorEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 178
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

    .line 184
    .local v2, payload:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v2}, Lcom/google/glass/home/search/VoiceSearchActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 185
    return-void

    .line 178
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
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

    goto :goto_0
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/google/glass/home/R$string;->voice_menu_item_google:I

    return v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 160
    sget v0, Lcom/google/glass/home/R$string;->voice_search_speak_now:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method hasPendingMajelResults()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method protected isMajelResponseExpected()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 6
    .parameter "dismissAction"

    .prologue
    .line 62
    iget-boolean v4, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->logFastDismiss:Z

    if-eqz v4, :cond_0

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 65
    .local v2, now:J
    iget-wide v4, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->startTime:J

    sub-long v0, v2, v4

    .line 66
    .local v0, delay:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/search/VoiceSearchActivity;->logFastDismissed(J)V

    .line 70
    .end local v0           #delay:J
    .end local v2           #now:J
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v4

    return v4
.end method

.method protected onHtmlAnswerCardResult(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "htmlResponse"
    .parameter "recognitionResult"
    .parameter "startTime"
    .parameter "endOfSpeechTime"

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, answer:Landroid/content/Intent;
    const-string v1, "recognitionResult"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "cardResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "startTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 139
    const-string v1, "endofSpeech"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 140
    const-string v1, "trigger_method"

    iget v2, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->triggerMethod:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/VoiceSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchActivity;->finish()V

    .line 146
    return-void
.end method

.method protected onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "majelResponse"
    .parameter "recognitionResult"
    .parameter "startTime"
    .parameter "endOfSpeechTime"

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, answer:Landroid/content/Intent;
    const-string v1, "recognitionResult"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "majelResponse"

    invoke-virtual {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 121
    const-string v1, "startTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 122
    const-string v1, "endofSpeech"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 123
    const-string v1, "trigger_method"

    iget v2, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->triggerMethod:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/VoiceSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchActivity;->finish()V

    .line 129
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-super {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onStart()V

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "called_by_press_to_search"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->startTime:J

    .line 52
    iput-boolean v4, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->logFastDismiss:Z

    .line 53
    const-string v1, "called_by_press_to_search"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->screenOn:Z

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-boolean v3, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->logFastDismiss:Z

    .line 56
    iput-boolean v4, p0, Lcom/google/glass/home/search/VoiceSearchActivity;->screenOn:Z

    goto :goto_0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 4
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    .line 75
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SOUND_SEARCH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    .line 91
    :goto_0
    return v1

    .line 81
    :cond_0
    sget-object v2, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v2, :cond_1

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/home/search/SoundSearchActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "should_play_initial_sound"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const-string v2, "trigger_method"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/VoiceSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchActivity;->finish()V

    goto :goto_0

    .line 91
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    goto :goto_0
.end method

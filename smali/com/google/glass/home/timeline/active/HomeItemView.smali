.class public Lcom/google/glass/home/timeline/active/HomeItemView;
.super Lcom/google/glass/timeline/active/ActiveItemView;
.source "HomeItemView.java"


# instance fields
.field private clockView:Lcom/google/glass/home/timeline/active/ClockView;

.field private guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/glass/app/GlassActivity;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/logging/UserEventAction;

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 75
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/home/voice/TouchMainMenuActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return v1

    .line 78
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.google.glass.home.voice.START_WITH_TOUCH_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/home/timeline/active/ClockView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ClockView;->onLoad()V

    .line 47
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onLoad()V

    .line 48
    return-void
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onSettled()V

    .line 59
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onSettled()V

    .line 60
    return-void
.end method

.method public onUnload()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/home/timeline/active/ClockView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ClockView;->onUnload()V

    .line 53
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onUnload()V

    .line 54
    return-void
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onUnsettled()V

    .line 65
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onUnsettled()V

    .line 66
    return-void
.end method

.method protected onViewInflated()V
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/google/glass/home/R$id;->clock:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ClockView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/home/timeline/active/ClockView;

    .line 41
    sget v0, Lcom/google/glass/home/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .line 42
    return-void
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/google/glass/home/R$layout;->home_item:I

    return v0
.end method

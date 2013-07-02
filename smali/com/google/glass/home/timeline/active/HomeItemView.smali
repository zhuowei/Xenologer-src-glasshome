.class public Lcom/google/glass/home/timeline/active/HomeItemView;
.super Lcom/google/glass/timeline/active/ActiveItemView;
.source "HomeItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clockView:Lcom/google/glass/home/timeline/active/ClockView;

.field private guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/HomeItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/logging/UserEventAction;

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 76
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/glass/home/voice/TouchMainMenuActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    sget v4, Lcom/google/glass/home/R$anim;->fade_out:I

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 86
    :goto_0
    return v2

    .line 80
    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.google.glass.home.voice.START_WITH_TOUCH_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 86
    goto :goto_0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/home/timeline/active/ClockView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ClockView;->onLoad()V

    .line 48
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onLoad()V

    .line 49
    return-void
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onSettled()V

    .line 60
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onSettled()V

    .line 61
    return-void
.end method

.method public onUnload()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/home/timeline/active/ClockView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ClockView;->onUnload()V

    .line 54
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onUnload()V

    .line 55
    return-void
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onUnsettled()V

    .line 66
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onUnsettled()V

    .line 67
    return-void
.end method

.method protected onViewInflated()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/google/glass/home/R$id;->clock:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ClockView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/home/timeline/active/ClockView;

    .line 42
    sget v0, Lcom/google/glass/home/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .line 43
    return-void
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/google/glass/home/R$layout;->home_item:I

    return v0
.end method

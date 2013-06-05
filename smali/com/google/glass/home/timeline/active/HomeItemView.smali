.class public Lcom/google/glass/home/timeline/active/HomeItemView;
.super Lcom/google/glass/timeline/active/ActiveItemView;
.source "HomeItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clockView:Lcom/google/glass/home/timeline/active/ClockView;

.field private final glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

.field private guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

.field private final voiceMenuEnvironment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/HomeItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 44
    invoke-static {p1}, Lcom/google/glass/app/GlassVoiceActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassVoiceActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    .line 45
    new-instance v0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {v0, v1}, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->voiceMenuEnvironment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    .line 46
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/logging/UserEventAction;

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 89
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    sget-object v4, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 91
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v3}, Lcom/google/glass/app/GlassVoiceActivity;->openOptionsMenu()V

    .line 99
    :goto_0
    return v2

    .line 93
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.google.glass.home.voice.START_WITH_TOUCH_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/home/timeline/active/ClockView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ClockView;->onLoad()V

    .line 62
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onLoad()V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 140
    .local v0, voiceMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->voiceMenuEnvironment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V

    .line 141
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v8}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 111
    :cond_0
    const/4 v7, 0x0

    .line 130
    :cond_1
    return v7

    .line 113
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 115
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->getMainMenuItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 117
    .local v4, mainMenuItems:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 118
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 119
    .local v3, mainMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    invoke-virtual {v3}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getContextIconId()I

    move-result v6

    .line 120
    .local v6, resId:I
    const/4 v2, 0x0

    .line 121
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 124
    :cond_3
    new-instance v5, Lcom/google/glass/widget/OptionMenu$Item;

    invoke-virtual {v3, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getContextLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v1, v8, v2}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 126
    .local v5, optionMenuItem:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v5, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v5, v7}, Lcom/google/glass/widget/OptionMenu$Item;->setSuppressTapSound(Z)V

    .line 128
    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->addItem(Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onSettled()V

    .line 74
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onSettled()V

    .line 75
    return-void
.end method

.method public onUnload()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/home/timeline/active/ClockView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ClockView;->onUnload()V

    .line 68
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onUnload()V

    .line 69
    return-void
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onUnsettled()V

    .line 80
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onUnsettled()V

    .line 81
    return-void
.end method

.method protected onViewInflated()V
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/google/glass/home/R$id;->clock:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ClockView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/home/timeline/active/ClockView;

    .line 56
    sget v0, Lcom/google/glass/home/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .line 57
    return-void
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/google/glass/home/R$layout;->home_item:I

    return v0
.end method

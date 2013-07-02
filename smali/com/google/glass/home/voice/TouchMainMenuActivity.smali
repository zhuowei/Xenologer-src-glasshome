.class public Lcom/google/glass/home/voice/TouchMainMenuActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;
.source "TouchMainMenuActivity.java"

# interfaces
.implements Lcom/google/glass/widget/OptionMenuView$Listener;


# instance fields
.field private optionsView:Lcom/google/glass/widget/OptionMenuView;

.field private sliderView:Lcom/google/glass/widget/SliderView;

.field private voiceMenuEnvironment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    return-void
.end method

.method private createOptionsMenu()Lcom/google/glass/widget/OptionMenu;
    .locals 9

    .prologue
    .line 93
    move-object v0, p0

    .line 95
    .local v0, context:Landroid/content/Context;
    new-instance v5, Lcom/google/glass/widget/OptionMenu;

    invoke-direct {v5, p0}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    .line 97
    .local v5, menu:Lcom/google/glass/widget/OptionMenu;
    invoke-static {v0}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->getMainMenuItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, mainMenuItems:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 99
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 100
    .local v3, mainMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    invoke-virtual {v3}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getContextIconId()I

    move-result v7

    .line 101
    .local v7, resId:I
    const/4 v2, 0x0

    .line 102
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 105
    :cond_0
    new-instance v6, Lcom/google/glass/widget/OptionMenu$Item;

    invoke-virtual {v3, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getContextLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v1, v8, v2}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 107
    .local v6, optionMenuItem:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v6, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 108
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/google/glass/widget/OptionMenu$Item;->setSuppressTapSound(Z)V

    .line 109
    invoke-virtual {v5, v6}, Lcom/google/glass/widget/OptionMenu;->addItem(Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #mainMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .end local v6           #optionMenuItem:Lcom/google/glass/widget/OptionMenu$Item;
    .end local v7           #resId:I
    :cond_1
    return-object v5
.end method


# virtual methods
.method public onConfirm()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->isMessageShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->finish()V

    .line 121
    :cond_0
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v1, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;

    invoke-direct {v1, p0}, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V

    iput-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->voiceMenuEnvironment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    .line 46
    sget v1, Lcom/google/glass/home/R$id;->slider:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/SliderView;

    iput-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 47
    sget v1, Lcom/google/glass/home/R$id;->options:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenuView;

    iput-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    .line 49
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 50
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v1, p0}, Lcom/google/glass/widget/OptionMenuView;->setListener(Lcom/google/glass/widget/OptionMenuView$Listener;)V

    .line 52
    invoke-direct {p0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->createOptionsMenu()Lcom/google/glass/widget/OptionMenu;

    move-result-object v0

    .line 53
    .local v0, menu:Lcom/google/glass/widget/OptionMenu;
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/OptionMenuView;->setOptionMenu(Lcom/google/glass/widget/OptionMenu;)V

    .line 54
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v1, v3, v3}, Lcom/google/glass/widget/OptionMenuView;->setSelection(IZ)V

    .line 55
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 56
    return-void
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/OptionMenuView;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method public onMenuOptionConfirmed(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {p0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 68
    .local v0, voiceMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->voiceMenuEnvironment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V

    .line 69
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->deactivate()V

    .line 87
    return-void
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/widget/OptionMenuView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->activate()V

    .line 81
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/OptionMenuView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    return v0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/google/glass/home/R$layout;->option_menu_dialog:I

    return v0
.end method

.class public Lcom/google/glass/home/voice/TouchMainMenuActivity;
.super Lcom/google/glass/home/voice/MainMenuActivity;
.source "TouchMainMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;
    }
.end annotation


# instance fields
.field private adapterStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;",
            ">;"
        }
    .end annotation
.end field

.field private sliderView:Lcom/google/glass/widget/SliderView;

.field private touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/home/voice/MainMenuActivity;-><init>()V

    .line 148
    return-void
.end method

.method private initCurrentAdapter()V
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->adapterStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;

    .line 70
    .local v0, adapterItem:Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    #getter for: Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->adapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->access$000(Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/home/voice/TouchMenuView;->setAdapter(Landroid/widget/Adapter;)V

    .line 71
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    #getter for: Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->adapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->access$000(Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 72
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    iget v2, v0, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->currentPosition:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/home/voice/TouchMenuView;->setSelection(IZ)V

    .line 73
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/glass/home/voice/TouchMenuView;->updateViews(Z)V

    .line 76
    return-void
.end method

.method private popAdapter()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->adapterStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->adapterStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->initCurrentAdapter()V

    .line 66
    :cond_0
    return-void
.end method

.method private pushAdapter(Landroid/widget/BaseAdapter;I)V
    .locals 3
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->adapterStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->adapterStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;

    .line 53
    .local v0, adapterStackItem:Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/TouchMenuView;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->currentPosition:I

    .line 56
    .end local v0           #adapterStackItem:Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->adapterStack:Ljava/util/Stack;

    new-instance v2, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;

    invoke-direct {v2, p1, p2}, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;-><init>(Landroid/widget/BaseAdapter;I)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-direct {p0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->initCurrentAdapter()V

    .line 58
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->popAdapter()V

    .line 94
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->adapterStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-super {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->onBackPressed()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/home/voice/TouchMenuView;->onConfirm(Lcom/google/glass/app/GlassActivity;Z)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/MainMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->adapterStack:Ljava/util/Stack;

    .line 30
    sget v0, Lcom/google/glass/home/R$id;->touch_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/TouchMenuView;

    iput-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    .line 31
    sget v0, Lcom/google/glass/home/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 32
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 34
    new-instance v0, Lcom/google/glass/home/voice/TouchMenuAdapter;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->getMainMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/voice/TouchMenuAdapter;-><init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->pushAdapter(Landroid/widget/BaseAdapter;I)V

    .line 35
    return-void
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/voice/TouchMenuView;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/TouchMenuView;->deactivate()V

    .line 41
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
    .line 81
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/home/voice/TouchMenuView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->onResume()V

    .line 46
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/TouchMenuView;->activate()V

    .line 47
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity;->touchMenuView:Lcom/google/glass/home/voice/TouchMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/voice/TouchMenuView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)V

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/google/glass/home/R$layout;->touch_menu_activity:I

    return v0
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_0
    return-void
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V
    .locals 2
    .parameter "menuItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, secondaryMenu:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    new-instance v0, Lcom/google/glass/home/voice/TouchMenuAdapter;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/home/voice/TouchMenuAdapter;-><init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/voice/TouchMainMenuActivity;->pushAdapter(Landroid/widget/BaseAdapter;I)V

    .line 136
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    .line 140
    if-eqz p2, :cond_0

    .line 141
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 143
    :cond_0
    return-void
.end method

.method public setAnimateOnNextPause(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 124
    return-void
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 146
    return-void
.end method

.method public showProgressBar()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

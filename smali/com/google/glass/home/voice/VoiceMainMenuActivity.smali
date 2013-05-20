.class public Lcom/google/glass/home/voice/VoiceMainMenuActivity;
.super Lcom/google/glass/home/voice/MainMenuActivity;
.source "VoiceMainMenuActivity.java"

# interfaces
.implements Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;


# static fields
.field public static final EXTRA_START_WITH_TOUCH_MODE:Ljava/lang/String; = "com.google.glass.home.voice.START_WITH_TOUCH_MODE"

.field private static final HEAD_SCROLL_PER_ITEM:F = 45.0f

.field private static final TOUCH_PIXELS_PER_ITEM:F = 200.0f


# instance fields
.field private animateOnNextPause:Z

.field private final connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private lastAccumulatorX:F

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private touchBasedSelectionHappened:Z

.field private userTouching:Z

.field private voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/home/voice/MainMenuActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/google/glass/home/voice/VoiceMainMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity$1;-><init>(Lcom/google/glass/home/voice/VoiceMainMenuActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->animateOnNextPause:Z

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->lastAccumulatorX:F

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/VoiceMainMenuActivity;)Lcom/google/glass/home/voice/VoiceMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/VoiceMainMenuActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private autoEnterTouchMode()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->fingerDown()V

    .line 178
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->fingerUp()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    .line 180
    return-void
.end method

.method private fingerDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 183
    iput-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->userTouching:Z

    .line 184
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldOverscroll(Z)V

    .line 185
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->stopOrientationSensors()V

    .line 188
    return-void
.end method

.method private fingerUp()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/voice/OverscrollView;->snapToNearest()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->userTouching:Z

    .line 193
    return-void
.end method

.method private isFromHandsFreeScreenOff()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "screen_turned_on"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    invoke-static {v0}, Lcom/google/glass/util/ScreenOffGesture;->hasScreenOffGesture(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-static {v0}, Lcom/google/glass/util/ScreenOffGesture;->fromIntent(Landroid/content/Intent;)Lcom/google/glass/util/ScreenOffGesture;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/ScreenOffGesture;->GLOBAL_LOOK_UP:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->getInstance()Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->getMainMenuConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 207
    iget-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    if-eqz v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->onConfirm()Z

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 210
    :cond_0
    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    .line 211
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/MainMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget v0, Lcom/google/glass/home/R$id;->progress_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 92
    sget v0, Lcom/google/glass/home/R$id;->voice_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/VoiceMenu;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    .line 93
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p0}, Lcom/google/glass/home/voice/VoiceMenu;->setListener(Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getMainMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->setTopLevelMenuItems(Ljava/util/List;)V

    .line 97
    return-void
.end method

.method public onError(Lcom/google/glass/app/GlassError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 304
    sget v0, Lcom/google/glass/home/R$drawable;->ic_exclamation_big:I

    invoke-virtual {p1, v0}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 305
    return-void
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    const/4 v0, 0x1

    .line 197
    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->fingerDown()V

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->fingerUp()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->animateOnNextPause:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->finish()V

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->stopOrientationSensors()V

    .line 133
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 135
    invoke-super {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->onPause()V

    .line 136
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->animateOnNextPause:Z

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->finish()V

    .line 129
    invoke-virtual {p0, v1, v1}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 3
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipeX"
    .parameter "numSwipeY"

    .prologue
    .line 164
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    .line 165
    iget v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->lastAccumulatorX:F

    sub-float v1, p2, v1

    const/high16 v2, 0x4348

    div-float v0, v1, v2

    .line 166
    .local v0, deltaItem:F
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/home/voice/OverscrollView;->scrollByItem(F)V

    .line 168
    .end local v0           #deltaItem:F
    :cond_0
    iput p2, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->lastAccumulatorX:F

    .line 169
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->onResume()V

    .line 103
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 106
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.home.voice.START_WITH_TOUCH_MODE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->autoEnterTouchMode()V

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMenu;->showMainMenu()V

    .line 118
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1, v4}, Lcom/google/glass/home/voice/VoiceMenu;->setShouldHighlightSelectedItem(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->startOrientationSensors()V

    goto :goto_0
.end method

.method public onSelectedItemChanged(I)V
    .locals 2
    .parameter "newItem"

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->userTouching:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    .line 271
    :cond_0
    return-void
.end method

.method public onShowSecondaryMenu()V
    .locals 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->autoEnterTouchMode()V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    goto :goto_0
.end method

.method public onVerticalHeadScroll(FF)Z
    .locals 2
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 145
    iget-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->userTouching:Z

    if-eqz v1, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 151
    :goto_0
    return v1

    .line 149
    :cond_0
    const/high16 v1, 0x4234

    div-float v0, p1, v1

    .line 150
    .local v0, deltaItem:F
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/home/voice/OverscrollView;->scrollByItem(F)V

    .line 151
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 6
    .parameter "command"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received voice command"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voice command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 234
    .local v1, currentConfig:Lcom/google/glass/voice/VoiceConfig;
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v2, p1}, Lcom/google/glass/home/voice/VoiceMenu;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    .line 235
    .local v0, accepted:Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->isFromHandsFreeScreenOff()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 237
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 240
    :cond_0
    return v0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lcom/google/glass/home/R$layout;->voice_activity:I

    return v0
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/voice/VoiceMenu;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V
    .locals 1
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
    .line 289
    .local p2, secondaryMenu:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/voice/VoiceMenu;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V

    .line 290
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/voice/VoiceMenu;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public setAnimateOnNextPause(Z)V
    .locals 0
    .parameter "animateOnNextPause"

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->animateOnNextPause:Z

    .line 276
    return-void
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/voice/VoiceMenu;->showError(Lcom/google/glass/app/GlassError;)V

    .line 300
    return-void
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 263
    return-void
.end method

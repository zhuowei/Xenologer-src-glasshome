.class public Lcom/google/glass/home/voice/VoiceMainMenuActivity;
.super Lcom/google/glass/home/voice/MainMenuActivity;
.source "VoiceMainMenuActivity.java"

# interfaces
.implements Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/VoiceMainMenuActivity$2;
    }
.end annotation


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
    .line 42
    invoke-direct {p0}, Lcom/google/glass/home/voice/MainMenuActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/google/glass/home/voice/VoiceMainMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity$1;-><init>(Lcom/google/glass/home/voice/VoiceMainMenuActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->animateOnNextPause:Z

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->lastAccumulatorX:F

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/VoiceMainMenuActivity;)Lcom/google/glass/home/voice/VoiceMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/VoiceMainMenuActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private autoEnterTouchMode()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->fingerDown()V

    .line 187
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->fingerUp()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    .line 189
    return-void
.end method

.method private fingerDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 192
    iput-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->userTouching:Z

    .line 193
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldOverscroll(Z)V

    .line 194
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->stopOrientationSensors()V

    .line 197
    return-void
.end method

.method private fingerUp()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/voice/OverscrollView;->snapToNearest()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->userTouching:Z

    .line 202
    return-void
.end method

.method private isFromHandsFreeScreenOff()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 257
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "screen_turned_on"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    invoke-static {v0}, Lcom/google/glass/util/ScreenOffGesture;->hasScreenOffGesture(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-static {v0}, Lcom/google/glass/util/ScreenOffGesture;->fromIntent(Landroid/content/Intent;)Lcom/google/glass/util/ScreenOffGesture;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/ScreenOffGesture;->GLOBAL_LOOK_UP:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 219
    iget-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    if-eqz v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->onConfirm()Z

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 222
    :cond_0
    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    .line 223
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
    .line 94
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/MainMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget v0, Lcom/google/glass/home/R$id;->progress_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 98
    sget v0, Lcom/google/glass/home/R$id;->voice_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/VoiceMenu;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    .line 99
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 100
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p0}, Lcom/google/glass/home/voice/VoiceMenu;->setListener(Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;)V

    .line 102
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getMainMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->setTopLevelMenuItems(Ljava/util/List;)V

    .line 103
    return-void
.end method

.method public onError(Lcom/google/glass/app/GlassError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 338
    invoke-virtual {p1, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 339
    return-void
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 2
    .parameter "count"
    .parameter "wentDown"

    .prologue
    const/4 v0, 0x1

    .line 206
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const/4 v0, 0x0

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->fingerDown()V

    goto :goto_0

    .line 211
    :cond_2
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->fingerUp()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->animateOnNextPause:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->finish()V

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->stopOrientationSensors()V

    .line 139
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 141
    invoke-super {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->onPause()V

    .line 142
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->animateOnNextPause:Z

    .line 134
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->finish()V

    .line 135
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
    .line 169
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 173
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 174
    iget v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->lastAccumulatorX:F

    sub-float v1, p2, v1

    const/high16 v2, 0x4348

    div-float v0, v1, v2

    .line 175
    .local v0, deltaItem:F
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/home/voice/OverscrollView;->scrollByItem(F)V

    .line 177
    .end local v0           #deltaItem:F
    :cond_1
    iput p2, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->lastAccumulatorX:F

    .line 178
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-super {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->onResume()V

    .line 109
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 112
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.home.voice.START_WITH_TOUCH_MODE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->autoEnterTouchMode()V

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMenu;->showMainMenu()V

    .line 124
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1, v4}, Lcom/google/glass/home/voice/VoiceMenu;->setShouldHighlightSelectedItem(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->startOrientationSensors()V

    goto :goto_0
.end method

.method public onSelectedItemChanged(I)V
    .locals 2
    .parameter "newItem"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->userTouching:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    .line 280
    :cond_0
    return-void
.end method

.method public onShowSecondaryMenu()V
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->touchBasedSelectionHappened:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->autoEnterTouchMode()V

    .line 294
    :goto_0
    return-void

    .line 292
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
    .line 151
    iget-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->userTouching:Z

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 157
    :goto_0
    return v1

    .line 155
    :cond_0
    const/high16 v1, 0x4234

    div-float v0, p1, v1

    .line 156
    .local v0, deltaItem:F
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/home/voice/OverscrollView;->scrollByItem(F)V

    .line 157
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 6
    .parameter "command"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received voice command"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
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

    .line 242
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v1

    .line 243
    .local v1, currentConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v2, p1}, Lcom/google/glass/home/voice/VoiceMenu;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    .line 244
    .local v0, accepted:Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->isFromHandsFreeScreenOff()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/glass/voice/VoiceConfigDescriptor;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v2, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 249
    :cond_0
    return v0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/google/glass/home/R$layout;->voice_activity:I

    return v0
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/voice/VoiceMenu;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/voice/VoiceMenu;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method public setAnimateOnNextPause(Z)V
    .locals 0
    .parameter "animateOnNextPause"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->animateOnNextPause:Z

    .line 285
    return-void
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/voice/VoiceMenu;->showError(Lcom/google/glass/app/GlassError;)V

    .line 334
    return-void
.end method

.method public showPeopleList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 6
    .parameter "menuItem"
    .parameter "type"
    .parameter "command"

    .prologue
    const/4 v4, 0x0

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->isInGuestMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v3

    invoke-virtual {v3, p0, v4}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    .line 302
    .local v2, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v2, :cond_0

    .line 303
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/googlex/glass/common/proto/Entity;

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 318
    .end local v2           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 324
    :cond_1
    :goto_1
    return-void

    .line 306
    :cond_2
    sget-object v3, Lcom/google/glass/home/voice/VoiceMainMenuActivity$2;->$SwitchMap$com$google$glass$home$voice$menu$VoiceMenuEnvironment$EntityType:[I

    invoke-virtual {p2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 314
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown EntityType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    :pswitch_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/entity/EntityHelper;->getSpeakableCommunicationTargets()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 309
    goto :goto_0

    .line 311
    :pswitch_1
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/glass/entity/EntityHelper;->getSpeakablePlusShareTargets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 312
    goto :goto_0

    .line 322
    :cond_3
    invoke-static {v0, p3}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->asContactMenuItems(Ljava/lang/Iterable;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Ljava/util/List;

    move-result-object v1

    .line 323
    .local v1, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/EntityMenuItem;>;"
    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v3, p1, v1}, Lcom/google/glass/home/voice/VoiceMenu;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V

    goto :goto_1

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMainMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 272
    return-void
.end method

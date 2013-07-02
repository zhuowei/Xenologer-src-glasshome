.class public abstract Lcom/google/glass/home/voice/VoiceMenuActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;
.source "VoiceMenuActivity.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;
.implements Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/VoiceMenuActivity$2;
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
    .line 46
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/google/glass/home/voice/VoiceMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/VoiceMenuActivity$1;-><init>(Lcom/google/glass/home/voice/VoiceMenuActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->animateOnNextPause:Z

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->lastAccumulatorX:F

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/VoiceMenuActivity;)Lcom/google/glass/home/voice/VoiceMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    return-object v0
.end method

.method private autoEnterTouchMode()V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->fingerDown()V

    .line 193
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->fingerUp()V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->touchBasedSelectionHappened:Z

    .line 195
    return-void
.end method

.method private fingerDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 198
    iput-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->userTouching:Z

    .line 199
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldOverscroll(Z)V

    .line 200
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->stopOrientationSensors()V

    .line 203
    return-void
.end method

.method private fingerUp()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/voice/OverscrollView;->snapToNearest()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->userTouching:Z

    .line 208
    return-void
.end method

.method private isFromHandsFreeScreenOff()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "screen_turned_on"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    invoke-static {v0}, Lcom/google/glass/util/ScreenOffGesture;->hasScreenOffGesture(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-static {v0}, Lcom/google/glass/util/ScreenOffGesture;->fromIntent(Landroid/content/Intent;)Lcom/google/glass/util/ScreenOffGesture;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/ScreenOffGesture;->GLOBAL_LOOK_UP:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getContext()Lcom/google/glass/app/GlassActivity;
    .locals 0

    .prologue
    .line 379
    return-object p0
.end method

.method public abstract getPrimaryMenuItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected isInGuestMode()Z
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v0

    return v0
.end method

.method public logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 398
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 401
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 225
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 228
    :cond_0
    iget-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->touchBasedSelectionHappened:Z

    if-eqz v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->onConfirm()Z

    move-result v0

    goto :goto_0

    .line 231
    :cond_1
    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->touchBasedSelectionHappened:Z

    .line 232
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget v0, Lcom/google/glass/home/R$id;->progress_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 104
    sget v0, Lcom/google/glass/home/R$id;->voice_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/VoiceMenu;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    .line 105
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 106
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p0}, Lcom/google/glass/home/voice/VoiceMenu;->setListener(Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;)V

    .line 108
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getPrimaryMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->setPrimaryMenuItems(Ljava/util/List;)V

    .line 109
    return-void
.end method

.method public onError(Lcom/google/glass/app/GlassError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 363
    invoke-virtual {p1, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 364
    return-void
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 2
    .parameter "count"
    .parameter "wentDown"

    .prologue
    const/4 v0, 0x1

    .line 212
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    const/4 v0, 0x0

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 216
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->fingerDown()V

    goto :goto_0

    .line 217
    :cond_2
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->fingerUp()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->animateOnNextPause:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->finish()V

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->stopOrientationSensors()V

    .line 145
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 147
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    .line 148
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->animateOnNextPause:Z

    .line 140
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->finish()V

    .line 141
    invoke-virtual {p0, v1, v1}, Lcom/google/glass/home/voice/VoiceMenuActivity;->overridePendingTransition(II)V

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
    .line 175
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 184
    :goto_0
    return v1

    .line 179
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 180
    iget v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->lastAccumulatorX:F

    sub-float v1, p2, v1

    const/high16 v2, 0x4348

    div-float v0, v1, v2

    .line 181
    .local v0, deltaItem:F
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/home/voice/OverscrollView;->scrollByItem(F)V

    .line 183
    .end local v0           #deltaItem:F
    :cond_1
    iput p2, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->lastAccumulatorX:F

    .line 184
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    .line 115
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 118
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.home.voice.START_WITH_TOUCH_MODE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->autoEnterTouchMode()V

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMenu;->showPrimaryMenu()V

    .line 130
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1, v4}, Lcom/google/glass/home/voice/VoiceMenu;->setShouldHighlightSelectedItem(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->startOrientationSensors()V

    goto :goto_0
.end method

.method public onSelectedItemChanged(I)V
    .locals 2
    .parameter "newItem"

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->userTouching:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->touchBasedSelectionHappened:Z

    .line 282
    :cond_0
    return-void
.end method

.method public onShowSecondaryMenu()V
    .locals 2

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->touchBasedSelectionHappened:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->autoEnterTouchMode()V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

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
    .line 157
    iget-boolean v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->userTouching:Z

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 163
    :goto_0
    return v1

    .line 161
    :cond_0
    const/high16 v1, 0x4234

    div-float v0, p1, v1

    .line 162
    .local v0, deltaItem:F
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/home/voice/OverscrollView;->scrollByItem(F)V

    .line 163
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 6
    .parameter "command"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received voice command"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getTag()Ljava/lang/String;

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

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v1

    .line 245
    .local v1, currentConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v2, p1}, Lcom/google/glass/home/voice/VoiceMenu;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    .line 246
    .local v0, accepted:Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->isFromHandsFreeScreenOff()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/glass/voice/VoiceConfigDescriptor;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v2, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/VoiceMenuActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 251
    :cond_0
    return v0
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 385
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)V
    .locals 1
    .parameter "soundId"
    .parameter "listener"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)I

    .line 390
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/google/glass/home/R$layout;->voice_activity:I

    return v0
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/voice/VoiceMenu;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/voice/VoiceMenu;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method public setAnimateOnNextPause(Z)V
    .locals 0
    .parameter "animateOnNextPause"

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->animateOnNextPause:Z

    .line 287
    return-void
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/voice/VoiceMenu;->showError(Lcom/google/glass/app/GlassError;)V

    .line 359
    return-void
.end method

.method public showPeopleList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 7
    .parameter "menuItem"
    .parameter "type"
    .parameter "command"

    .prologue
    const/4 v5, 0x0

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v1, 0x0

    .line 302
    .local v1, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/EntityMenuItem;>;"
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->isInGuestMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 304
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v4

    invoke-virtual {v4, p0, v5}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 305
    .local v3, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v3, :cond_0

    .line 306
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/googlex/glass/common/proto/Entity;

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 308
    :cond_0
    sget-object v4, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->SHARE:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    if-ne p3, v4, :cond_2

    move-object v4, p1

    .line 309
    check-cast v4, Lcom/google/glass/home/voice/menu/ShareMenuItem;

    invoke-virtual {v4}, Lcom/google/glass/home/voice/menu/ShareMenuItem;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    .line 310
    .local v2, timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v0, p3, v2}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->asShareTargetMenuItems(Ljava/lang/Iterable;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    .line 334
    .end local v2           #timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 339
    :cond_1
    :goto_1
    return-void

    .line 312
    .restart local v3       #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_2
    invoke-static {v0, p3}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->asContactMenuItems(Ljava/lang/Iterable;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 315
    .end local v3           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_3
    sget-object v4, Lcom/google/glass/home/voice/VoiceMenuActivity$2;->$SwitchMap$com$google$glass$home$voice$menu$VoiceMenuEnvironment$EntityType:[I

    invoke-virtual {p2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 330
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown EntityType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 317
    :pswitch_0
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->getContactEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 318
    invoke-static {v0, p3}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->asContactMenuItems(Ljava/lang/Iterable;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Ljava/util/List;

    move-result-object v1

    .line 319
    goto :goto_0

    .line 321
    :pswitch_1
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 322
    invoke-static {v0, p3}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->asContactMenuItems(Ljava/lang/Iterable;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Ljava/util/List;

    move-result-object v1

    .line 323
    goto :goto_0

    :pswitch_2
    move-object v4, p1

    .line 325
    check-cast v4, Lcom/google/glass/home/voice/menu/ShareMenuItem;

    invoke-virtual {v4}, Lcom/google/glass/home/voice/menu/ShareMenuItem;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    .line 326
    .restart local v2       #timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->getPhotoShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 327
    invoke-static {v0, p3, v2}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->asShareTargetMenuItems(Ljava/lang/Iterable;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    .line 328
    goto :goto_0

    .line 338
    .end local v2           #timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_4
    iget-object v4, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v4, p1, v1}, Lcom/google/glass/home/voice/VoiceMenu;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V

    goto :goto_1

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 274
    return-void
.end method

.method public showShareTargetList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V
    .locals 3
    .parameter "menuItem"
    .parameter "commandType"

    .prologue
    .line 343
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 346
    .local v0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {v0, p2}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->asDisambiguationItems(Ljava/util/Collection;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)Ljava/util/List;

    move-result-object v1

    .line 348
    .local v1, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;>;"
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenuActivity;->voiceMenu:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v2, p1, v1}, Lcom/google/glass/home/voice/VoiceMenu;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V

    .line 349
    return-void
.end method

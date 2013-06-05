.class public final Lcom/google/glass/widget/OptionMenuDialog;
.super Landroid/app/Dialog;
.source "OptionMenuDialog.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/OptionMenuDialog$Listener;
    }
.end annotation


# instance fields
.field private canceled:Z

.field private final keyDetector:Lcom/google/glass/input/KeyDetector;

.field private final listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

.field private final optionsView:Lcom/google/glass/widget/OptionMenuView;

.field private final owner:Lcom/google/glass/app/GlassActivity;

.field private final sliderView:Lcom/google/glass/widget/SliderView;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/widget/OptionMenuDialog$Listener;)V
    .locals 2
    .parameter "owner"
    .parameter "soundManager"
    .parameter "listener"

    .prologue
    .line 100
    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->canceled:Z

    .line 102
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuDialog;->owner:Lcom/google/glass/app/GlassActivity;

    .line 103
    iput-object p2, p0, Lcom/google/glass/widget/OptionMenuDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 104
    iput-object p3, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    .line 105
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 106
    new-instance v0, Lcom/google/glass/input/KeyDetector;

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/glass/input/KeyDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->keyDetector:Lcom/google/glass/input/KeyDetector;

    .line 108
    sget v0, Lcom/google/glass/common/R$layout;->option_menu_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuDialog;->setContentView(I)V

    .line 109
    sget v0, Lcom/google/glass/common/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 110
    sget v0, Lcom/google/glass/common/R$id;->options:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/OptionMenuView;

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    .line 111
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->activate()V

    .line 113
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    new-instance v1, Lcom/google/glass/widget/OptionMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/OptionMenuDialog$1;-><init>(Lcom/google/glass/widget/OptionMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenuView;->setListener(Lcom/google/glass/widget/OptionMenuView$Listener;)V

    .line 120
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 122
    new-instance v0, Lcom/google/glass/widget/OptionMenuDialog$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/OptionMenuDialog$2;-><init>(Lcom/google/glass/widget/OptionMenuDialog;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/OptionMenuDialog;)Lcom/google/glass/widget/OptionMenuDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->canceled:Z

    .line 164
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 165
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 158
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    invoke-interface {v0}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->onCameraButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->dismiss()V

    .line 240
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    invoke-interface {v0}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->onDisallowedInput()V

    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->dismiss()V

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/OptionMenuView;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 206
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    invoke-interface {v1}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->shouldAllowCameraButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->onCameraButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    invoke-interface {v1}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->onDisallowedInput()V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 276
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/widget/OptionMenuView;->onPrepareSwipe(IFFFFII)Z

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 258
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 260
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/OptionMenuView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 265
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwipeCanceled(I)Z
    .locals 1
    .parameter "fingerCount"

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/OptionMenuDialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVerticalHeadScroll(FF)Z
    .locals 1
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public resetToHomePosition()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenuView;->getHomePosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/OptionMenuView;->setSelection(IZ)V

    .line 186
    return-void
.end method

.method public setMenu(Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/widget/OptionMenuDialog;
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/OptionMenuView;->setOptionMenu(Lcom/google/glass/widget/OptionMenu;)V

    .line 138
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, v1, v1}, Lcom/google/glass/widget/OptionMenuView;->setSelection(IZ)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 140
    return-object p0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->canceled:Z

    .line 149
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public wasCanceled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->canceled:Z

    return v0
.end method

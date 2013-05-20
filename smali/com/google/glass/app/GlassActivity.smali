.class public abstract Lcom/google/glass/app/GlassActivity;
.super Lcom/google/glass/input/InputDetectingActivity;
.source "GlassActivity.java"


# static fields
.field public static final EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF:Ljava/lang/String; = "should_finish_turn_screen_off"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contentView:Landroid/view/View;

.field private dismissAnimation:Landroid/view/animation/Animation;

.field private glassFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/app/GlassFragment;",
            ">;"
        }
    .end annotation
.end field

.field private isOptionsMenuShowing:Z

.field private menu:Lcom/google/glass/widget/OptionMenu;

.field protected menuDialog:Lcom/google/glass/widget/OptionMenuDialog;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private messageDialog:Lcom/google/glass/widget/MessageDialog;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private rebuildMenu:Z

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private shouldTurnScreenOff:Z

.field private tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;-><init>()V

    .line 95
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/google/glass/app/GlassActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/app/GlassActivity$1;-><init>(Lcom/google/glass/app/GlassActivity;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/app/GlassActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/widget/OptionMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z

    move-result v0

    return v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 193
    if-nez p1, :cond_0

    .line 194
    iput-boolean v1, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v0, "should_finish_turn_screen_off"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    goto :goto_0
.end method


# virtual methods
.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuDialog;->dismiss()V

    .line 692
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected final finishAndTurnScreenOff()V
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not turning off screen because we\'re already finishing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->dismissAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 485
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    goto :goto_0
.end method

.method protected final finishAndTurnScreenOffIfRequested()V
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldFinishTurnScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOff()V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finish()V

    goto :goto_0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    return-object v0
.end method

.method protected getGlassApplication()Lcom/google/glass/app/GlassApplication;
    .locals 1

    .prologue
    .line 542
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    return-object v0
.end method

.method public getMessageText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    sget v1, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 757
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptionMenu()Lcom/google/glass/widget/OptionMenu;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    return-object v0
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method protected getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    return-object v0
.end method

.method public hideMessageDialog()V
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 767
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    .line 685
    return-void
.end method

.method public isMessageShowing()Z
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuShowing()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    return v0
.end method

.method protected logUserEvent(Lcom/google/glass/logging/UserEventAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 554
    return-void
.end method

.method protected logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 236
    instance-of v0, p1, Lcom/google/glass/app/GlassFragment;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    check-cast p1, Lcom/google/glass/app/GlassFragment;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    return-void

    .line 239
    .restart local p1
    :cond_0
    sget-object v0, Lcom/google/glass/app/GlassActivity;->TAG:Ljava/lang/String;

    const-string v1, "Adding a non GlassFragment Fragment to GlassActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAudioData([BII)Z
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 436
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 437
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/app/GlassFragment;->onAudioData([BII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const/4 v2, 0x1

    .line 442
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/input/InputDetectingActivity;->onAudioData([BII)Z

    move-result v2

    goto :goto_0
.end method

.method public onCameraButtonPressed()Z
    .locals 3

    .prologue
    .line 373
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 374
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->onCameraButtonPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    const/4 v2, 0x1

    .line 379
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onCameraButtonPressed()Z

    move-result v2

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 255
    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 256
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->onConfirm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :cond_1
    :goto_0
    return v2

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    .line 262
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v4, p0, v3}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onConfirm(Lcom/google/glass/app/GlassActivity;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 270
    :cond_3
    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v4}, Lcom/google/glass/widget/OptionMenuDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 271
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->onDisallowedInput()V

    move v2, v3

    .line 272
    goto :goto_0

    .line 274
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    new-instance v4, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v4, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 137
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 141
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 148
    .local v3, window:Landroid/view/Window;
    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 149
    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 154
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->provideContentView()I

    move-result v0

    .line 155
    .local v0, contentViewId:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No content view provided."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v1, screenOffFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v4, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    .end local v1           #screenOffFilter:Landroid/content/IntentFilter;
    :cond_0
    sget v4, Lcom/google/glass/common/R$anim;->window_exit_down:I

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->dismissAnimation:Landroid/view/animation/Animation;

    .line 181
    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->dismissAnimation:Landroid/view/animation/Animation;

    new-instance v5, Lcom/google/glass/app/GlassActivity$2;

    invoke-direct {v5, p0}, Lcom/google/glass/app/GlassActivity$2;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 189
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Inflating content view into tuggable container."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget v4, Lcom/google/glass/common/R$layout;->glass_activity_tuggable:I

    invoke-super {p0, v4}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 160
    sget v4, Lcom/google/glass/common/R$id;->content_view_container:I

    invoke-virtual {p0, v4}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    .line 161
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    .line 162
    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    iget-object v5, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Inflating content view to stub."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget v4, Lcom/google/glass/common/R$layout;->glass_activity:I

    invoke-super {p0, v4}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 166
    sget v4, Lcom/google/glass/common/R$id;->content_view_stub:I

    invoke-virtual {p0, v4}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 167
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 168
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 231
    :cond_0
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDestroy()V

    .line 232
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 525
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 5
    .parameter "dismissAction"

    .prologue
    const/4 v2, 0x1

    .line 354
    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 355
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassFragment;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowDismiss()Z

    move-result v3

    if-nez v3, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v2, v3}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 362
    const/4 v2, 0x0

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 367
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOffIfRequested()V

    goto :goto_0
.end method

.method public onDoubleTap()Z
    .locals 3

    .prologue
    .line 281
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 282
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->onDoubleTap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const/4 v2, 0x1

    .line 286
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDoubleTap()Z

    move-result v2

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 3
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 341
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 342
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/app/GlassFragment;->onFingerCountChanged(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    const/4 v2, 0x1

    .line 349
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v2, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onFingerCountChanged(IZ)Z

    move-result v2

    goto :goto_0

    .line 349
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->onFingerCountChanged(IZ)Z

    move-result v2

    goto :goto_0
.end method

.method public onMenuOpened(ILcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "feature"
    .parameter "menu"

    .prologue
    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    .line 715
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    .line 707
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    .line 214
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldHideMessageDialogOnPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideMessageDialog()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->deactivate()V

    .line 222
    :cond_1
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onPause()V

    .line 223
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 611
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 10
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 294
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/app/GlassFragment;->onPrepareSwipe(IFFFFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x1

    .line 305
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v1

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onPrepareSwipe(IFFFFII)Z

    move-result v1

    goto :goto_0

    .line 305
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResampledAudioData([BII)Z
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 447
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 448
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/app/GlassFragment;->onResampledAudioData([BII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    const/4 v2, 0x1

    .line 453
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/input/InputDetectingActivity;->onResampledAudioData([BII)Z

    move-result v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onResume()V

    .line 204
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->activate()V

    .line 207
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 490
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onStart()V

    .line 493
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->dismissAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 494
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 495
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 5
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 310
    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 311
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/app/GlassFragment;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    .line 317
    :cond_1
    sget-object v3, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v3, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v3, v4}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v2, :cond_3

    .line 323
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v2, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)V

    .line 326
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSwipeCanceled(I)Z
    .locals 3
    .parameter "fingerCount"

    .prologue
    .line 331
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 332
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassFragment;->onSwipeCanceled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    const/4 v2, 0x1

    .line 336
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onSwipeCanceled(I)Z

    move-result v2

    goto :goto_0
.end method

.method public onVerticalHeadScroll(FF)Z
    .locals 3
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 384
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 385
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/app/GlassFragment;->onVerticalHeadScroll(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    const/4 v2, 0x1

    .line 389
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->onVerticalHeadScroll(FF)Z

    move-result v2

    goto :goto_0
.end method

.method public onVoiceAmplitudeChanged(D)Z
    .locals 3
    .parameter "amplitude"

    .prologue
    .line 425
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 426
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/app/GlassFragment;->onVoiceAmplitudeChanged(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const/4 v2, 0x1

    .line 431
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->onVoiceAmplitudeChanged(D)Z

    move-result v2

    goto :goto_0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 3
    .parameter "command"

    .prologue
    .line 414
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 415
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassFragment;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    const/4 v2, 0x1

    .line 420
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v2

    goto :goto_0
.end method

.method public onVoiceServiceConnected()V
    .locals 3

    .prologue
    .line 394
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onVoiceServiceConnected()V

    .line 395
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 396
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->onVoiceServiceConnected()V

    goto :goto_0

    .line 400
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :cond_1
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 3

    .prologue
    .line 404
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onVoiceServiceDisconnected()V

    .line 405
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->glassFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassFragment;

    .line 406
    .local v0, glassFragment:Lcom/google/glass/app/GlassFragment;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/google/glass/app/GlassFragment;->onVoiceServiceDisconnected()V

    goto :goto_0

    .line 410
    .end local v0           #glassFragment:Lcom/google/glass/app/GlassFragment;
    :cond_1
    return-void
.end method

.method public openOptionsMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 616
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    if-eqz v0, :cond_5

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    if-nez v0, :cond_3

    .line 618
    new-instance v0, Lcom/google/glass/widget/OptionMenu;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    .line 622
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    .line 678
    :cond_2
    :goto_1
    return-void

    .line 619
    :cond_3
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    goto :goto_0

    .line 626
    :cond_4
    iput-boolean v3, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    .line 628
    :cond_5
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-nez v0, :cond_6

    .line 637
    new-instance v0, Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/app/GlassActivity$3;

    invoke-direct {v2, p0}, Lcom/google/glass/app/GlassActivity$3;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/widget/OptionMenuDialog;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/widget/OptionMenuDialog$Listener;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    .line 675
    :cond_6
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenuDialog;->setMenu(Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/widget/OptionMenuDialog;

    .line 676
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuDialog;->show()V

    .line 677
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/app/GlassActivity;->onMenuOpened(ILcom/google/glass/widget/OptionMenu;)V

    goto :goto_1
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, -0x1

    return v0
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 583
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 584
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;)V

    .line 591
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 597
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    return-void
.end method

.method protected shouldAllowDismiss()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowHorizontalTugging()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    return v0
.end method

.method protected shouldHideMessageDialogOnPause()Z
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x1

    return v0
.end method

.method public showMessage(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->showMessage(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public showMessage(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "messageDialog"

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideMessageDialog()V

    .line 743
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 744
    invoke-virtual {p1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 745
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 734
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_exclamation_big:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 738
    return-void
.end method

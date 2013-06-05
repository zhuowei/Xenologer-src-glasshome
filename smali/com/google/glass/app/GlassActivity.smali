.class public abstract Lcom/google/glass/app/GlassActivity;
.super Lcom/google/glass/input/InputDetectingActivity;
.source "GlassActivity.java"


# static fields
.field public static final EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF:Ljava/lang/String; = "should_finish_turn_screen_off"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contentView:Landroid/view/View;

.field private dismissAnimation:Landroid/view/animation/Animation;

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
    .line 47
    const-class v0, Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;-><init>()V

    .line 90
    new-instance v0, Lcom/google/glass/app/GlassActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/app/GlassActivity$1;-><init>(Lcom/google/glass/app/GlassActivity;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/app/GlassActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/widget/OptionMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z

    move-result v0

    return v0
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 640
    if-nez p0, :cond_0

    move-object p0, v0

    .line 647
    .end local p0
    :goto_0
    return-object p0

    .line 642
    .restart local p0
    :cond_0
    instance-of v1, p0, Lcom/google/glass/app/GlassActivity;

    if-eqz v1, :cond_1

    .line 643
    check-cast p0, Lcom/google/glass/app/GlassActivity;

    goto :goto_0

    .line 644
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 645
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;

    move-result-object p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object p0, v0

    .line 647
    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 179
    if-nez p1, :cond_0

    .line 180
    iput-boolean v1, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    .line 184
    :goto_0
    return-void

    .line 182
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
    .line 538
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuDialog;->dismiss()V

    .line 541
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 422
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
    .line 313
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not turning off screen because we\'re already finishing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->dismissAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    goto :goto_0
.end method

.method protected final finishAndTurnScreenOffIfRequested()V
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldFinishTurnScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOff()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finish()V

    goto :goto_0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    return-object v0
.end method

.method protected getGlassApplication()Lcom/google/glass/app/GlassApplication;
    .locals 1

    .prologue
    .line 385
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    return-object v0
.end method

.method public getMessageText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    sget v1, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 616
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
    .line 578
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    return-object v0
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method protected getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    return-object v0
.end method

.method public hideMessageDialog()V
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 626
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    .line 534
    return-void
.end method

.method public isMessageShowing()Z
    .locals 1

    .prologue
    .line 608
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
    .line 573
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    return v0
.end method

.method protected logUserEvent(Lcom/google/glass/logging/UserEventAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 397
    return-void
.end method

.method public logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "data"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    .line 234
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v1}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onConfirm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :goto_0
    return v0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenuDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->onDisallowedInput()V

    .line 244
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    new-instance v4, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v4, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 123
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 127
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 134
    .local v3, window:Landroid/view/Window;
    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 135
    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 140
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->provideContentView()I

    move-result v0

    .line 141
    .local v0, contentViewId:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No content view provided."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v1, screenOffFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v4, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    .end local v1           #screenOffFilter:Landroid/content/IntentFilter;
    :cond_0
    sget v4, Lcom/google/glass/common/R$anim;->window_exit_down:I

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->dismissAnimation:Landroid/view/animation/Animation;

    .line 167
    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->dismissAnimation:Landroid/view/animation/Animation;

    new-instance v5, Lcom/google/glass/app/GlassActivity$2;

    invoke-direct {v5, p0}, Lcom/google/glass/app/GlassActivity$2;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 175
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Inflating content view into tuggable container."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget v4, Lcom/google/glass/common/R$layout;->glass_activity_tuggable:I

    invoke-super {p0, v4}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 146
    sget v4, Lcom/google/glass/common/R$id;->content_view_container:I

    invoke-virtual {p0, v4}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    .line 147
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    .line 148
    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    iget-object v5, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Inflating content view to stub."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget v4, Lcom/google/glass/common/R$layout;->glass_activity:I

    invoke-super {p0, v4}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 152
    sget v4, Lcom/google/glass/common/R$id;->content_view_stub:I

    invoke-virtual {p0, v4}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 153
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 154
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 217
    :cond_0
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDestroy()V

    .line 218
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 368
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowDismiss()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 290
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 295
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOffIfRequested()V

    .line 296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onFingerCountChanged(IZ)Z

    move-result v0

    .line 283
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "feature"
    .parameter "menu"

    .prologue
    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    .line 569
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuCanceled(Lcom/google/glass/widget/OptionMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 553
    return-void
.end method

.method public onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    .line 561
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    .line 200
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldHideMessageDialogOnPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideMessageDialog()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->deactivate()V

    .line 208
    :cond_1
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onPause()V

    .line 209
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
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
    .line 255
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->activate()V

    .line 193
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onStart()V

    .line 336
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->dismissAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 337
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 338
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 266
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 268
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openOptionsMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 462
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    if-eqz v0, :cond_5

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    if-nez v0, :cond_3

    .line 464
    new-instance v0, Lcom/google/glass/widget/OptionMenu;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    .line 468
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    .line 527
    :cond_2
    :goto_1
    return-void

    .line 465
    :cond_3
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    goto :goto_0

    .line 472
    :cond_4
    iput-boolean v3, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-nez v0, :cond_6

    .line 483
    new-instance v0, Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/app/GlassActivity$3;

    invoke-direct {v2, p0}, Lcom/google/glass/app/GlassActivity$3;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/widget/OptionMenuDialog;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/widget/OptionMenuDialog$Listener;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    .line 524
    :cond_6
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenuDialog;->setMenu(Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/widget/OptionMenuDialog;

    .line 525
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuDialog;->show()V

    .line 526
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/app/GlassActivity;->onMenuOpened(ILcom/google/glass/widget/OptionMenu;)V

    goto :goto_1
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, -0x1

    return v0
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 430
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;)V

    .line 437
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    return-void
.end method

.method protected shouldAllowDismiss()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowHorizontalTugging()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    return v0
.end method

.method protected shouldHideMessageDialogOnPause()Z
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "errorDialog"

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 604
    return-void
.end method

.method public showMessage(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->showMessage(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public showMessage(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "messageDialog"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideMessageDialog()V

    .line 597
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 598
    invoke-virtual {p1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 599
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 588
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

    .line 592
    return-void
.end method

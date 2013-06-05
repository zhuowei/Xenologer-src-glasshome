.class public Lcom/google/glass/home/timeline/active/GuardPhraseView;
.super Lcom/google/glass/widget/RotatingTipsView;
.source "GuardPhraseView.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/active/GuardPhraseView$6;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final callStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private final storageHelper:Lcom/google/glass/util/StorageHelper;

.field private final textSize:F

.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->callStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 61
    new-instance v0, Lcom/google/glass/util/StorageHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->storageHelper:Lcom/google/glass/util/StorageHelper;

    .line 62
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->medium_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->textSize:F

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/RobotoTypefaces;->getTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->typeface:Landroid/graphics/Typeface;

    .line 69
    invoke-static {p1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->updateGuardPhraseText()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->callStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/BatteryHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/StorageHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->storageHelper:Lcom/google/glass/util/StorageHelper;

    return-object v0
.end method

.method private checkForErrors()V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->TAG:Ljava/lang/String;

    const-string v1, "Starting initial error check."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method private updateGuardPhraseText()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/GuardPhraseView$4;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$4;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected getMessageTextSize()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->textSize:F

    return v0
.end method

.method protected getMessageTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method protected getTipTextSize()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->textSize:F

    return v0
.end method

.method protected getTipTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onLoad()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->updateGuardPhraseText()V

    .line 74
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->showTip()V

    .line 75
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->checkForErrors()V

    .line 99
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->updateGuardPhraseText()V

    .line 100
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->startRotating()V

    .line 101
    return-void
.end method

.method public onStateChange(ZII)V
    .locals 1
    .parameter "isConnected"
    .parameter "remoteVersion"
    .parameter "localVersion"

    .prologue
    .line 221
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isTetheringErrorDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    sget v0, Lcom/google/glass/home/R$string;->home_error_check_my_glass:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    sget v0, Lcom/google/glass/home/R$string;->home_error_check_my_glass:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    goto :goto_0
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->stopRotating()V

    .line 105
    return-void
.end method

.class public Lcom/google/glass/home/timeline/active/GuardPhraseView;
.super Lcom/google/glass/widget/RotatingTipsView;
.source "GuardPhraseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/active/GuardPhraseView$5;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final callStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final companionStateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final storageHelper:Lcom/google/glass/util/StorageHelper;

.field private final textSize:F

.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
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
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->callStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 41
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionStateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 79
    new-instance v0, Lcom/google/glass/util/StorageHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->storageHelper:Lcom/google/glass/util/StorageHelper;

    .line 80
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->medium_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->textSize:F

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/RobotoTypefaces;->getTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->typeface:Landroid/graphics/Typeface;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->updateGuardPhraseText()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->callStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionStateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method private checkForErrors()Z
    .locals 7

    .prologue
    .line 160
    sget-object v4, Lcom/google/glass/home/timeline/active/GuardPhraseView;->TAG:Ljava/lang/String;

    const-string v5, "Starting initial error check."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v2, 0x0

    .line 164
    .local v2, errorsFound:Z
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/home/HomeApplication;->getCompanionState()Lcom/google/glass/home/companion/CompanionState;

    move-result-object v0

    .line 165
    .local v0, companionState:Lcom/google/glass/home/companion/CompanionState;
    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionState;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionState;->isTetheringErrorDetected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 167
    .local v3, showErrorMessage:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 168
    sget v4, Lcom/google/glass/home/R$string;->home_error_check_my_glass:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 169
    const/4 v2, 0x1

    .line 175
    :goto_1
    sget-object v4, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->$SwitchMap$com$google$glass$util$StorageHelper$State:[I

    iget-object v5, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->storageHelper:Lcom/google/glass/util/StorageHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/StorageHelper;->getExternalStorageState()Lcom/google/glass/util/StorageHelper$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/util/StorageHelper$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 187
    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_low:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    .line 188
    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_full:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    .line 192
    :goto_2
    iget-object v4, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v4}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v1

    .line 193
    .local v1, currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;
    iget v4, v1, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    const/high16 v5, 0x4120

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    iget-boolean v4, v1, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    if-nez v4, :cond_2

    .line 195
    sget v4, Lcom/google/glass/home/R$string;->home_error_battery_low:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 196
    const/4 v2, 0x1

    .line 203
    :goto_3
    sget-object v4, Lcom/google/glass/home/timeline/active/GuardPhraseView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Errors found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v2

    .line 165
    .end local v1           #currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;
    .end local v3           #showErrorMessage:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 171
    .restart local v3       #showErrorMessage:Z
    :cond_1
    sget v4, Lcom/google/glass/home/R$string;->home_error_check_my_glass:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    goto :goto_1

    .line 177
    :pswitch_0
    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_full:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 178
    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_low:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    .line 179
    const/4 v2, 0x1

    .line 180
    goto :goto_2

    .line 182
    :pswitch_1
    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_low:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 183
    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_full:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    .line 184
    const/4 v2, 0x1

    .line 185
    goto :goto_2

    .line 198
    .restart local v1       #currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;
    :cond_2
    sget v4, Lcom/google/glass/home/R$string;->home_error_battery_low:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    goto :goto_3

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateGuardPhraseText()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget v0, Lcom/google/glass/home/R$string;->phone_call_in_call:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->setTip(I)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    sget v0, Lcom/google/glass/home/R$string;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->setTip(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMessageTextSize()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->textSize:F

    return v0
.end method

.method protected getMessageTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method protected getTipTextSize()F
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->textSize:F

    return v0
.end method

.method protected getTipTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onLoad()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->updateGuardPhraseText()V

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->showTip()V

    .line 92
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->checkForErrors()Z

    .line 117
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->updateGuardPhraseText()V

    .line 118
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->startRotating()V

    .line 119
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/GuardPhraseView$4;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$4;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->stopRotating()V

    .line 123
    return-void
.end method

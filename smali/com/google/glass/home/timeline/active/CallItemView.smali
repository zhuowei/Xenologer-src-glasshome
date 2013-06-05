.class public Lcom/google/glass/home/timeline/active/CallItemView;
.super Lcom/google/glass/timeline/active/ActiveItemView;
.source "CallItemView.java"


# static fields
.field private static final CALL_TIMER_CONNECTING_DELAY_MS:J = 0x64L

.field private static final CALL_TIMER_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callStartTimeMillis:J

.field private callStatus:Landroid/widget/TextView;

.field private final callTimeHandler:Landroid/os/Handler;

.field private callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;

.field private callerPhoto:Landroid/widget/ImageView;

.field private isPhoneNumberLookUpStarted:Z

.field private isSettled:Z

.field private final stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final updateCallTimeRunnable:Ljava/lang/Runnable;

.field private wasHangUpRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/glass/home/timeline/active/CallItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->PHONE_CALL:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 50
    new-instance v0, Lcom/google/glass/home/timeline/active/CallItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/active/CallItemView$1;-><init>(Lcom/google/glass/home/timeline/active/CallItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callTimeHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/google/glass/home/timeline/active/CallItemView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/active/CallItemView$2;-><init>(Lcom/google/glass/home/timeline/active/CallItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimeRunnable:Ljava/lang/Runnable;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/CallItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallerPhoto()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/active/CallItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->stopCallTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/home/timeline/active/CallItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->wasHangUpRequested:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/active/CallItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateMuteUI()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/active/CallItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/timeline/active/CallItemView;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/home/timeline/active/CallItemView;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;

    return-object p1
.end method

.method private calculateElapsedTime()J
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/CallItemView;->calculateElapsedTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private calculateElapsedTime(J)J
    .locals 6
    .parameter "currentTime"

    .prologue
    .line 260
    iget-wide v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStartTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallStartTime()V

    .line 263
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStartTimeMillis:J

    sub-long v0, p1, v2

    .line 264
    .local v0, timeDelta:J
    return-wide v0
.end method

.method private getFormattedElapsedTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->calculateElapsedTime()J

    move-result-wide v0

    .line 250
    .local v0, elapsedTime:J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private registerStateChangeReceiver()V
    .locals 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google.glass.action.CALLER_IDENTITY"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.google.glass.action.REJECT_CALL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "com.google.glass.action.MICROPHONE_STATE_CHANGED"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    return-void
.end method

.method private stopCallTimer()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method private unregisterStateChangeReceiver()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method private updateCallStartTime()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getCallStartTime(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStartTimeMillis:J

    .line 224
    return-void
.end method

.method private updateCallTimer()V
    .locals 5

    .prologue
    .line 228
    const-wide/16 v1, 0x3e8

    .line 229
    .local v1, delayCallTimer:J
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getCallSetupState(Landroid/content/Context;)I

    move-result v0

    .line 230
    .local v0, callSetupState:I
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getFormattedElapsedTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callTimeHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    return-void

    .line 233
    :cond_2
    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 236
    :cond_3
    const-wide/16 v1, 0x64

    .line 238
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    sget v4, Lcom/google/glass/home/R$string;->phone_call_calling:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateCallerPhoto()V
    .locals 4

    .prologue
    .line 268
    iget-boolean v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->isPhoneNumberLookUpStarted:Z

    if-eqz v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getCallerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, phoneNumber:Ljava/lang/String;
    move-object v0, p0

    .line 273
    .local v0, itemSubview:Landroid/view/View;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->isPhoneNumberLookUpStarted:Z

    .line 275
    new-instance v2, Lcom/google/glass/home/timeline/active/CallItemView$3;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/home/timeline/active/CallItemView$3;-><init>(Lcom/google/glass/home/timeline/active/CallItemView;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/google/glass/home/timeline/active/CallItemView$3;->addPhoneNumber(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/glass/entity/MatchEntity;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateMuteUI()V
    .locals 5

    .prologue
    .line 212
    sget v2, Lcom/google/glass/home/R$id;->phone_call_current_action:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/active/CallItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    .local v0, callAction:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v1

    .line 214
    .local v1, isMuted:Z
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating Mute UI, is muted? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz v1, :cond_0

    .line 216
    sget v2, Lcom/google/glass/home/R$drawable;->ic_microphone_off_medium:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    sget v2, Lcom/google/glass/home/R$drawable;->ic_phone_in_medium:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/google/glass/timeline/active/ActiveItemView;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    .line 126
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->BROADCAST:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.action.REJECT_CALL"

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->addValueBuilder()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$string;->phone_call_menu_end:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$drawable;->ic_phone_hang_medium:I

    invoke-static {v1, v2}, Lcom/google/glass/util/IconProvider;->buildDrawableUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    .line 132
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->MUTE_MIC:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 133
    return-void
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->wasHangUpRequested:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 195
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->registerStateChangeReceiver()V

    .line 138
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimer()V

    .line 139
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallerPhoto()V

    .line 140
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateMuteUI()V

    .line 141
    return-void
.end method

.method protected onParametersChanged(Landroid/os/Bundle;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 145
    sget-object v1, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onParametersChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {p1}, Lcom/google/glass/phone/PhoneCall;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/phone/PhoneCall;

    move-result-object v0

    .line 147
    .local v0, call:Lcom/google/glass/phone/PhoneCall;
    if-eqz v0, :cond_0

    .line 148
    sget-object v1, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v2, "Parsing the phone call."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCall;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    sget-object v1, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v2, "Call has an error."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->stopCallTimer()V

    .line 152
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    sget v2, Lcom/google/glass/home/R$string;->phone_call_failed:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public onRemove()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onRemove()V

    .line 176
    sget-object v0, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v1, "onRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->isSettled:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v1, "Phone call is settled, putting screen to sleep."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->isPhoneNumberLookUpStarted:Z

    .line 186
    return-void
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->isSettled:Z

    .line 160
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->stopCallTimer()V

    .line 170
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->unregisterStateChangeReceiver()V

    .line 171
    return-void
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->isSettled:Z

    .line 165
    return-void
.end method

.method protected onViewInflated()V
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/google/glass/home/R$id;->phone_call_status:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/CallItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    .line 120
    sget v0, Lcom/google/glass/home/R$id;->phone_call_caller_profile_picture:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/CallItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerPhoto:Landroid/widget/ImageView;

    .line 121
    return-void
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/google/glass/home/R$layout;->call_item:I

    return v0
.end method

.class public Lcom/google/glass/home/timeline/active/CallItemView;
.super Lcom/google/glass/timeline/active/ActiveItemView;
.source "CallItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/active/CallItemView$4;
    }
.end annotation


# static fields
.field private static final CALL_TIMER_DELAY_MS:J = 0x3e8L

.field private static final MENU_ITEM_ANSWER:I = 0x0

.field private static final MENU_ITEM_MUTE:I = 0x2

.field private static final MENU_ITEM_REJECT_CALL:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callStatus:Landroid/widget/TextView;

.field private callStatusImage:Landroid/widget/ImageView;

.field private final callTimeHandler:Landroid/os/Handler;

.field private callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;

.field private callerPhoto:Landroid/widget/ImageView;

.field private currentCall:Lcom/google/glass/phone/PhoneCall;

.field private isSettled:Z

.field private menu:Lcom/google/glass/widget/OptionMenu;

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
    .line 119
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->PHONE_CALL:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 56
    new-instance v0, Lcom/google/glass/home/timeline/active/CallItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/active/CallItemView$1;-><init>(Lcom/google/glass/home/timeline/active/CallItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callTimeHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/google/glass/home/timeline/active/CallItemView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/active/CallItemView$2;-><init>(Lcom/google/glass/home/timeline/active/CallItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimeRunnable:Ljava/lang/Runnable;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/CallItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->stopCallTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/home/timeline/active/CallItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->wasHangUpRequested:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/active/CallItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallActionIcon()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/active/CallItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method private calculateElapsedTime(J)J
    .locals 4
    .parameter "currentTime"

    .prologue
    .line 357
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    if-nez v2, :cond_0

    .line 358
    const-wide/16 v0, 0x0

    .line 361
    :goto_0
    return-wide v0

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall;->getCallStartTime()J

    move-result-wide v2

    sub-long v0, p1, v2

    .line 361
    .local v0, timeDelta:J
    goto :goto_0
.end method

.method private getFormattedElapsedTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/glass/home/timeline/active/CallItemView;->calculateElapsedTime(J)J

    move-result-wide v0

    .line 352
    .local v0, elapsedTime:J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private processCall(Lcom/google/glass/phone/PhoneCall;)V
    .locals 5
    .parameter "call"

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v3, "Parsing the phone call."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->getCallerId()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallerPhoto(Lcom/google/googlex/glass/common/proto/Entity;)V

    .line 266
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->hasError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v3, "Call has an error."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->stopCallTimer()V

    .line 269
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    sget v3, Lcom/google/glass/home/R$string;->phone_call_failed:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 296
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    .line 297
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallActionIcon()V

    .line 298
    return-void

    .line 271
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->wasAccepted()Z

    move-result v0

    .line 272
    .local v0, accepted:Z
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call was accepted? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    if-eqz v0, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimer()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->getCallDirection()Lcom/google/glass/phone/PhoneCall$CallDirection;

    move-result-object v1

    .line 277
    .local v1, direction:Lcom/google/glass/phone/PhoneCall$CallDirection;
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView$4;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 280
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    sget v3, Lcom/google/glass/home/R$string;->phone_call_incoming:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 283
    :pswitch_1
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v3, "Setting icon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    sget v3, Lcom/google/glass/home/R$string;->phone_call_calling:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 287
    :pswitch_2
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v3, "How are we UNKNOWN and have not accepted the call? Something is broken here."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerStateChangeReceiver()V
    .locals 5

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google.glass.action.REJECT_CALL"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.google.glass.action.MICROPHONE_STATE_CHANGED"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    return-void
.end method

.method private stopCallTimer()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method private unregisterStateChangeReceiver()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 307
    return-void
.end method

.method private updateCallActionIcon()V
    .locals 5

    .prologue
    .line 310
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v3, "Updating call action item. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v0

    .line 312
    .local v0, isMuted:Z
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is muted? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-eqz v0, :cond_1

    .line 314
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatusImage:Landroid/widget/ImageView;

    sget v3, Lcom/google/glass/home/R$drawable;->ic_microphone_off_medium:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    :goto_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->menu:Lcom/google/glass/widget/OptionMenu;

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->menu:Lcom/google/glass/widget/OptionMenu;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    .line 333
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 337
    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_0
    return-void

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    if-eqz v2, :cond_2

    .line 317
    sget-object v2, Lcom/google/glass/home/timeline/active/CallItemView$4;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v3}, Lcom/google/glass/phone/PhoneCall;->getCallDirection()Lcom/google/glass/phone/PhoneCall$CallDirection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 319
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatusImage:Landroid/widget/ImageView;

    sget v3, Lcom/google/glass/home/R$drawable;->ic_phone_in_medium:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatusImage:Landroid/widget/ImageView;

    sget v3, Lcom/google/glass/home/R$drawable;->ic_phone_out_medium:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatusImage:Landroid/widget/ImageView;

    sget v3, Lcom/google/glass/home/R$drawable;->ic_phone_in_medium:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCallTimer()V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getFormattedElapsedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    return-void
.end method

.method private updateCallerPhoto(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 8
    .parameter "callerId"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;

    if-eqz v1, :cond_1

    .line 366
    sget-object v1, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v2, "Caller id was already matched."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    if-eqz p1, :cond_0

    .line 371
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;

    .line 372
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, imageUrl:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    sget-object v1, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v2, "Loading user\'s image."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 376
    .local v7, display:Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/google/glass/home/timeline/active/CallItemView$3;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v6, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->SMART_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/home/timeline/active/CallItemView$3;-><init>(Lcom/google/glass/home/timeline/active/CallItemView;Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    .line 394
    .local v0, imageTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
    invoke-static {p0, v0}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->wasHangUpRequested:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 255
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->registerStateChangeReceiver()V

    .line 206
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/CallItemView;->processCall(Lcom/google/glass/phone/PhoneCall;)V

    .line 207
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 5
    .parameter "selectedItem"

    .prologue
    const/4 v4, 0x1

    .line 181
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 197
    sget-object v1, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown menu item selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return v4

    .line 184
    :pswitch_0
    sget-object v1, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v2, "Call accepted from menu."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastAcceptCall(Landroid/content/Context;)V

    goto :goto_0

    .line 188
    :pswitch_1
    sget-object v1, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v2, "Call rejected from menu."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-boolean v4, p0, Lcom/google/glass/home/timeline/active/CallItemView;->wasHangUpRequested:Z

    .line 190
    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastRejectCall(Landroid/content/Context;)V

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->toggleMute(Landroid/content/Context;)Z

    .line 194
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallActionIcon()V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onParametersChanged(Landroid/os/Bundle;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 211
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

    .line 212
    invoke-static {p1}, Lcom/google/glass/phone/PhoneCall;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/phone/PhoneCall;

    move-result-object v0

    .line 213
    .local v0, call:Lcom/google/glass/phone/PhoneCall;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/CallItemView;->processCall(Lcom/google/glass/phone/PhoneCall;)V

    .line 214
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 136
    sget-object v6, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v7, "onPrepareOptionsMenu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 138
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/CallItemView;->menu:Lcom/google/glass/widget/OptionMenu;

    .line 140
    iget-boolean v6, p0, Lcom/google/glass/home/timeline/active/CallItemView;->wasHangUpRequested:Z

    if-eqz v6, :cond_0

    .line 176
    :goto_0
    return v4

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    if-eqz v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v6}, Lcom/google/glass/phone/PhoneCall;->wasAccepted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    sget v6, Lcom/google/glass/home/R$string;->phone_call_menu_end:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->ic_phone_hang_medium:I

    invoke-virtual {p1, v4, v6, v7}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 150
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v6, Lcom/google/glass/home/R$string;->phone_call_mute:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 153
    .local v1, muteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    new-instance v3, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v6, Lcom/google/glass/home/R$string;->phone_call_unmute:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->ic_microphone_off_medium:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v3, v4, v6, v7}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 156
    .local v3, unmuteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    new-array v6, v8, [Lcom/google/glass/widget/OptionMenu$ItemState;

    aput-object v1, v6, v5

    aput-object v3, v6, v4

    invoke-virtual {p1, v8, v6}, Lcom/google/glass/widget/OptionMenu;->addItem(I[Lcom/google/glass/widget/OptionMenu$ItemState;)V

    .line 157
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->updateCallActionIcon()V

    goto :goto_0

    .line 159
    .end local v1           #muteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    .end local v2           #resources:Landroid/content/res/Resources;
    .end local v3           #unmuteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    :cond_1
    sget-object v6, Lcom/google/glass/home/timeline/active/CallItemView$4;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    iget-object v7, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v7}, Lcom/google/glass/phone/PhoneCall;->getCallDirection()Lcom/google/glass/phone/PhoneCall$CallDirection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    sget v6, Lcom/google/glass/home/R$string;->phone_call_answer:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->ic_phone_in_medium:I

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 163
    sget v5, Lcom/google/glass/home/R$string;->phone_call_reject:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/google/glass/home/R$drawable;->ic_phone_hang_medium:I

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto :goto_0

    .line 167
    :pswitch_1
    sget v5, Lcom/google/glass/home/R$string;->phone_call_menu_end:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/google/glass/home/R$drawable;->ic_phone_hang_medium:I

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    move v4, v5

    .line 176
    goto/16 :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRemove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onRemove()V

    .line 235
    sget-object v0, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v1, "onRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->isSettled:Z

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/google/glass/home/timeline/active/CallItemView;->TAG:Ljava/lang/String;

    const-string v1, "Phone call is settled, putting screen to sleep."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    .line 243
    :cond_0
    iput-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;

    .line 244
    iput-object v2, p0, Lcom/google/glass/home/timeline/active/CallItemView;->currentCall:Lcom/google/glass/phone/PhoneCall;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->wasHangUpRequested:Z

    .line 246
    return-void
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->isSettled:Z

    .line 219
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->stopCallTimer()V

    .line 229
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/CallItemView;->unregisterStateChangeReceiver()V

    .line 230
    return-void
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->isSettled:Z

    .line 224
    return-void
.end method

.method protected onViewInflated()V
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/google/glass/home/R$id;->phone_call_status:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/CallItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/google/glass/home/R$id;->phone_call_current_action:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/CallItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callStatusImage:Landroid/widget/ImageView;

    .line 131
    sget v0, Lcom/google/glass/home/R$id;->phone_call_caller_profile_picture:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/CallItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView;->callerPhoto:Landroid/widget/ImageView;

    .line 132
    return-void
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/google/glass/home/R$layout;->call_item:I

    return v0
.end method

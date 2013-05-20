.class public final Lcom/google/glass/home/EyeGestureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EyeGestureReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/EyeGestureReceiver$1;,
        Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;
    }
.end annotation


# static fields
.field public static final ACTION_EYE_GESTURE:Ljava/lang/String; = "com.google.glass.action.EYE_GESTURE"

.field public static final EXTRA_EYE_GESTURE:Ljava/lang/String; = "gesture"

.field private static final TAG:Ljava/lang/String;

.field private static canTakePicture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/home/EyeGestureReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/EyeGestureReceiver;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/glass/home/EyeGestureReceiver;->canTakePicture:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    return-void
.end method

.method private capturePicture(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isScreenOff"

    .prologue
    .line 102
    new-instance v1, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p2, v2}, Lcom/google/glass/camera/CameraHelper;->takePicture(ZZZ)V

    .line 104
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    .line 105
    .local v0, logger:Lcom/google/glass/logging/UserEventHelper;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 108
    if-eqz p2, :cond_0

    .line 109
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v3, "com.google.glass.action.HANGOUT_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const-string v3, "participating"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    sput-boolean v2, Lcom/google/glass/home/EyeGestureReceiver;->canTakePicture:Z

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.glass.action.EYE_GESTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "gesture"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    const-string v3, "gesture"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->valueOf(Ljava/lang/String;)Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    move-result-object v0

    .line 63
    .local v0, gesture:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;
    sget-object v3, Lcom/google/glass/home/EyeGestureReceiver$1;->$SwitchMap$com$google$glass$home$EyeGestureReceiver$EyeGesture:[I

    invoke-virtual {v0}, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 96
    sget-object v2, Lcom/google/glass/home/EyeGestureReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got EyeGesture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but not performing any action."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :pswitch_0
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->WINK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 67
    sget-object v3, Lcom/google/glass/home/EyeGestureReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Wink received even though Lab is off!  Turning off the feature..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p1, v2}, Lcom/google/glass/util/HiddenApiHelper;->enableWinkDetector(Landroid/content/Context;Z)Z

    goto :goto_0

    .line 74
    :cond_3
    sget-boolean v3, Lcom/google/glass/home/EyeGestureReceiver;->canTakePicture:Z

    if-nez v3, :cond_4

    .line 75
    sget-object v2, Lcom/google/glass/home/EyeGestureReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Wink action, but in a hangout; ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_4
    const-string v3, "screen_off"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    .local v1, isScreenOff:Z
    sget-object v2, Lcom/google/glass/home/EyeGestureReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wink action: isScreenOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Taking a picture..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, p1, v1}, Lcom/google/glass/home/EyeGestureReceiver;->capturePicture(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 91
    .end local v1           #isScreenOff:Z
    :pswitch_1
    sget-object v2, Lcom/google/glass/home/EyeGestureReceiver;->TAG:Ljava/lang/String;

    const-string v3, "DOUBLE_WINK received!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

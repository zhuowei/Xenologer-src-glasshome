.class public final Lcom/google/glass/home/HeadGestureSettingsReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HeadGestureSettingsReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/home/HeadGestureSettingsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/HeadGestureSettingsReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method

.method private loadAndExecuteSettingsAsync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    new-instance v0, Lcom/google/glass/home/HeadGestureSettingsReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/HeadGestureSettingsReceiver$1;-><init>(Lcom/google/glass/home/HeadGestureSettingsReceiver;Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/home/HeadGestureSettingsReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Lcom/google/glass/home/HeadGestureSettingsReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Boot complete.  Loading and setting the user head gesture settings..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/home/HeadGestureSettingsReceiver;->loadAndExecuteSettingsAsync(Landroid/content/Context;)V

    .line 32
    :cond_0
    return-void
.end method

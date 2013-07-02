.class public Lcom/google/glass/logging/HeadsetPlugService;
.super Landroid/app/Service;
.source "HeadsetPlugService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final receiver:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/logging/HeadsetPlugService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/HeadsetPlugService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lcom/google/glass/logging/HeadsetPlugService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/HeadsetPlugService$1;-><init>(Lcom/google/glass/logging/HeadsetPlugService;)V

    iput-object v0, p0, Lcom/google/glass/logging/HeadsetPlugService;->receiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/logging/HeadsetPlugService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    iget-object v0, p0, Lcom/google/glass/logging/HeadsetPlugService;->receiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.HEADSET_PLUG"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/logging/HeadsetPlugService;->receiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 75
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 68
    sget-object v0, Lcom/google/glass/logging/HeadsetPlugService;->TAG:Ljava/lang/String;

    const-string v1, "Service has started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

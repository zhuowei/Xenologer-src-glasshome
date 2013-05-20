.class public Lcom/google/glass/companion/DebugConnectivityChecker;
.super Landroid/content/BroadcastReceiver;
.source "DebugConnectivityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;
    }
.end annotation


# static fields
.field private static final DELAY_MS:J = 0x7530L

.field private static final INITIAL_DELAY_MS:J = 0x1388L

.field private static final LOG_FILENAME:Ljava/lang/String; = "connectivity.log"

.field private static final TAG:Ljava/lang/String;

.field private static pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/companion/DebugConnectivityChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;)Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    sput-object p0, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    return-object p0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 110
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/companion/DebugConnectivityChecker;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v7, intent:Landroid/content/Intent;
    invoke-static {p0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 114
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const-string v2, "connectivity.log"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 116
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 117
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 120
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/companion/DebugConnectivityChecker;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 125
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 126
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 95
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 96
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 97
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    if-eqz v1, :cond_1

    .line 101
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    invoke-virtual {v1, v3}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->cancel(Z)Z

    .line 102
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 104
    :cond_1
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 105
    new-instance v1, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;-><init>(Lcom/google/glass/companion/DebugConnectivityChecker;Landroid/content/Context;)V

    sput-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    .line 106
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void
.end method

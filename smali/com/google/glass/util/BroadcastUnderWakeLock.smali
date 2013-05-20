.class public final Lcom/google/glass/util/BroadcastUnderWakeLock;
.super Ljava/lang/Object;
.source "BroadcastUnderWakeLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = null

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:J = 0x2710L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/util/BroadcastUnderWakeLock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v0

    return-object v0
.end method

.method private static getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method

.method public static sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "broadcastIntent"
    .parameter "broadcastName"

    .prologue
    const/4 v2, 0x0

    .line 81
    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastUnderWakeLock called with intent= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v3, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;

    invoke-direct {v3, p0, p2}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

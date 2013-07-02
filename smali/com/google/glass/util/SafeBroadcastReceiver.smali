.class public abstract Lcom/google/glass/util/SafeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SafeBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private registerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private declared-synchronized checkThread()V
    .locals 3

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    .line 197
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " register/unregister not invoked from consistent thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " First thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    new-instance v0, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/UserEventAction;)V
    .locals 1
    .parameter "context"
    .parameter "action"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 177
    return-void
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " even though we are not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because unregister is pending."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public abstract onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter "intentFilter"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public register(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .parameter "context"
    .parameter "intentFilter"
    .parameter "permission"

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 57
    iget-object v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    sget-object v5, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not registering receiver \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', because it is already registered."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-object v4

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 64
    .local v2, before:J
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 69
    .local v4, stickyIntent:Landroid/content/Intent;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, after:J
    sget-object v5, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registered receiver \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, UI thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/util/Assert;->isUiThread()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v0           #after:J
    .end local v4           #stickyIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1, p0, p2, p3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v4

    .restart local v4       #stickyIntent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public varargs register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "actions"

    .prologue
    .line 44
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v3, intentFilter:Landroid/content/IntentFilter;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 46
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    return-object v5
.end method

.method public registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "executor"
    .parameter "context"
    .parameter "intentFilter"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 1
    .parameter "executor"
    .parameter "context"
    .parameter "intentFilter"
    .parameter "permission"

    .prologue
    .line 89
    new-instance v0, Lcom/google/glass/util/SafeBroadcastReceiver$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/glass/util/SafeBroadcastReceiver$1;-><init>(Lcom/google/glass/util/SafeBroadcastReceiver;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public varargs registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "executor"
    .parameter "context"
    .parameter "actions"

    .prologue
    .line 76
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v3, intentFilter:Landroid/content/IntentFilter;
    move-object v1, p3

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 78
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 98
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 99
    iget-object v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    sget-object v5, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not unregistering receiver \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', because it is not registered."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 109
    .local v2, before:J
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    iget-object v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, after:J
    sget-object v5, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistered receiver \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, UI thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/util/Assert;->isUiThread()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v0           #after:J
    :catch_0
    move-exception v4

    .line 111
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    sget-object v5, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be unregistered.  It was probably "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "forcibly unregistered by android.  See above logs."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    iget-object v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v5
.end method

.method public unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 2
    .parameter "executor"
    .parameter "context"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    new-instance v0, Lcom/google/glass/util/SafeBroadcastReceiver$2;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver$2;-><init>(Lcom/google/glass/util/SafeBroadcastReceiver;Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

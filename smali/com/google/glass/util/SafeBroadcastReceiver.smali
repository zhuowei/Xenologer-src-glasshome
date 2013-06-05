.class public abstract Lcom/google/glass/util/SafeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SafeBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    new-instance v0, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    return v0
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/UserEventAction;)V
    .locals 1
    .parameter "context"
    .parameter "action"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 115
    return-void
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter "intentFilter"

    .prologue
    .line 40
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

    .line 44
    iget-boolean v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    if-eqz v5, :cond_0

    .line 45
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

    .line 60
    :goto_0
    return-object v4

    .line 49
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 51
    .local v2, before:J
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 56
    .local v4, stickyIntent:Landroid/content/Intent;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, after:J
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    .line 58
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

    const-string v7, "\', took "

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

    .line 54
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
    .line 32
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 33
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

    .line 34
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 64
    iget-boolean v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    if-nez v5, :cond_0

    .line 65
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

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 74
    .local v2, before:J
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    iput-boolean v8, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 83
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

    const-string v7, "\', took "

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

    .line 75
    .end local v0           #after:J
    :catch_0
    move-exception v4

    .line 76
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

    .line 80
    iput-boolean v8, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    goto :goto_0

    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    iput-boolean v8, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    throw v5
.end method

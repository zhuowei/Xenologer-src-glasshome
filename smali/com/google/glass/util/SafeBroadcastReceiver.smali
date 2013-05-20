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
    .line 25
    const-class v0, Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
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
    .line 85
    new-instance v0, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    return v0
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/UserEventAction;)V
    .locals 1
    .parameter "context"
    .parameter "action"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 98
    return-void
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter "intentFilter"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public register(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "intentFilter"
    .parameter "permission"

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-boolean v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not registering receiver \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', because it is already registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, stickyIntent:Landroid/content/Intent;
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    .line 55
    sget-object v1, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered receiver \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v0           #stickyIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1, p0, p2, p3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    .restart local v0       #stickyIntent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public varargs register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "actions"

    .prologue
    .line 31
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 32
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

    .line 33
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not unregistering receiver \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', because it is not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Z

    .line 67
    sget-object v0, Lcom/google/glass/util/SafeBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered receiver \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

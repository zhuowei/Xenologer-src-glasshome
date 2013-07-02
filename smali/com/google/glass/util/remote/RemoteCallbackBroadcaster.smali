.class public abstract Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.super Ljava/lang/Object;
.source "RemoteCallbackBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Callback::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<TCallback;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method protected final beginBroadcast()I
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    iget-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 83
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    iget-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 84
    return-void
.end method

.method public final declared-synchronized doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/remote/RemoteCallbackOperation",
            "<TCallback;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, operation:Lcom/google/glass/util/remote/RemoteCallbackOperation;,"Lcom/google/glass/util/remote/RemoteCallbackOperation<TCallback;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 91
    .local v1, callbackCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 93
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, callback:Landroid/os/IInterface;,"TCallback;"
    invoke-interface {p1, v0}, Lcom/google/glass/util/remote/RemoteCallbackOperation;->doOperation(Landroid/os/IInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .end local v0           #callback:Landroid/os/IInterface;,"TCallback;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->TAG:Ljava/lang/String;

    const-string v5, "Remote callback exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 90
    .end local v1           #callbackCount:I
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 99
    .restart local v1       #callbackCount:I
    .restart local v3       #i:I
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    monitor-exit p0

    return-void
.end method

.method protected final finishBroadcast()V
    .locals 1

    .prologue
    .line 75
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    iget-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 76
    return-void
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method protected onRegister(Landroid/os/IInterface;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, callback:Landroid/os/IInterface;,"TCallback;"
    return-void
.end method

.method protected onUnregister(Landroid/os/IInterface;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, callback:Landroid/os/IInterface;,"TCallback;"
    return-void
.end method

.method public final declared-synchronized register(Landroid/os/IInterface;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, callback:Landroid/os/IInterface;,"TCallback;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 28
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->onRegister(Landroid/os/IInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit p0

    return v0

    .line 27
    .end local v0           #success:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized unregister(Landroid/os/IInterface;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, callback:Landroid/os/IInterface;,"TCallback;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 49
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->onUnregister(Landroid/os/IInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return v0

    .line 48
    .end local v0           #success:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

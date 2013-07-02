.class public Lcom/google/glass/home/timeline/NotificationState;
.super Ljava/lang/Object;
.source "NotificationState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/NotificationState$Listener;
    }
.end annotation


# instance fields
.field private isNotification:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/home/timeline/NotificationState$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/NotificationState;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/glass/home/timeline/NotificationState$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/NotificationState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/NotificationState;->isNotification:Z

    invoke-interface {p1, v0}, Lcom/google/glass/home/timeline/NotificationState$Listener;->onUpdateNotificationState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNotification()Z
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/NotificationState;->isNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/google/glass/home/timeline/NotificationState$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/NotificationState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIsNotification(Z)V
    .locals 3
    .parameter "isNotification"

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/glass/home/timeline/NotificationState;->isNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_1

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 35
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/NotificationState;->isNotification:Z

    .line 37
    iget-object v2, p0, Lcom/google/glass/home/timeline/NotificationState;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/NotificationState$Listener;

    .line 38
    .local v1, listener:Lcom/google/glass/home/timeline/NotificationState$Listener;
    invoke-interface {v1, p1}, Lcom/google/glass/home/timeline/NotificationState$Listener;->onUpdateNotificationState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/glass/home/timeline/NotificationState$Listener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

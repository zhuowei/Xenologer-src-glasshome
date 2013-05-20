.class public Lcom/google/glass/util/RemoteMessenger;
.super Ljava/lang/Object;
.source "RemoteMessenger.java"


# static fields
.field private static final MAX_PENDING_MESSAGES:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bindIntent:Landroid/content/Intent;

.field private closed:Z

.field private final connection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field private messenger:Landroid/os/Messenger;

.field private pendingMessages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/util/RemoteMessenger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/RemoteMessenger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "bindIntent"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/RemoteMessenger;->messenger:Landroid/os/Messenger;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/RemoteMessenger;->closed:Z

    .line 35
    new-instance v0, Lcom/google/glass/util/RemoteMessenger$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/RemoteMessenger$1;-><init>(Lcom/google/glass/util/RemoteMessenger;)V

    iput-object v0, p0, Lcom/google/glass/util/RemoteMessenger;->connection:Landroid/content/ServiceConnection;

    .line 53
    new-instance v0, Lcom/google/glass/util/RemoteMessenger$2;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/google/glass/util/RemoteMessenger$2;-><init>(Lcom/google/glass/util/RemoteMessenger;I)V

    iput-object v0, p0, Lcom/google/glass/util/RemoteMessenger;->pendingMessages:Landroid/util/LruCache;

    .line 68
    iput-object p1, p0, Lcom/google/glass/util/RemoteMessenger;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/glass/util/RemoteMessenger;->bindIntent:Landroid/content/Intent;

    .line 70
    invoke-direct {p0}, Lcom/google/glass/util/RemoteMessenger;->bindServiceIfNeeded()Z

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/util/RemoteMessenger;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/util/RemoteMessenger;->messenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/util/RemoteMessenger;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/util/RemoteMessenger;->pendingMessages:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/RemoteMessenger;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/util/RemoteMessenger;->sendPendingMessages()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/util/RemoteMessenger;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/glass/util/RemoteMessenger;->issueFailure(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/util/RemoteMessenger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindServiceIfNeeded()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-boolean v1, p0, Lcom/google/glass/util/RemoteMessenger;->closed:Z

    if-eqz v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteMessenger was closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/RemoteMessenger;->messenger:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/google/glass/util/RemoteMessenger;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/util/RemoteMessenger;->bindIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/glass/util/RemoteMessenger;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 84
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private issueFailure(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 119
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/util/RemoteMessenger;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendPendingMessages()V
    .locals 5

    .prologue
    .line 108
    iget-object v3, p0, Lcom/google/glass/util/RemoteMessenger;->pendingMessages:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 110
    .local v2, message:Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/util/RemoteMessenger;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    iget-object v3, p0, Lcom/google/glass/util/RemoteMessenger;->pendingMessages:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/google/glass/util/RemoteMessenger;->TAG:Ljava/lang/String;

    const-string v4, "Remote exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 116
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/util/RemoteMessenger;->closed:Z

    .line 90
    iget-object v0, p0, Lcom/google/glass/util/RemoteMessenger;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/glass/util/RemoteMessenger;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/util/RemoteMessenger;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 93
    :cond_0
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/glass/util/RemoteMessenger;->bindServiceIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/google/glass/util/RemoteMessenger;->pendingMessages:Landroid/util/LruCache;

    invoke-virtual {v1, p1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/RemoteMessenger;->messenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/util/RemoteMessenger;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception while sending message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

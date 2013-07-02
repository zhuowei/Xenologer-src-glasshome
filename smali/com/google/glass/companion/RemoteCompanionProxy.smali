.class public Lcom/google/glass/companion/RemoteCompanionProxy;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile isCompanionConnectedForTest:Ljava/lang/Boolean;


# instance fields
.field private final application:Landroid/app/Application;

.field private companionLocalVersion:I

.field private companionRemoteVersion:I

.field private companionService:Lcom/google/glass/companion/IRemoteCompanionService;

.field private final companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

.field private volatile isCompanionConnected:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/companion/CompanionStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/app/Application;Z)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 3
    .parameter "application"
    .parameter "checkConnection"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    .line 77
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 98
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$2;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$2;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 121
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;

    .line 122
    if-eqz p2, :cond_0

    .line 123
    new-instance v0, Lcom/google/glass/companion/ConnectionChecker;

    invoke-direct {v0, p1}, Lcom/google/glass/companion/ConnectionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    .line 127
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.bluetooth.COMPANION_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 129
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V

    return-void
.end method

.method static synthetic access$502(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/app/Application;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    return-object v0
.end method

.method private notifyCompanionStateChange()V
    .locals 6

    .prologue
    .line 136
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-boolean v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/ConnectionChecker;->setConnectState(Z)V

    .line 138
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/ConnectionChecker;->setCompanionService(Lcom/google/glass/companion/IRemoteCompanionService;)V

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    monitor-enter v3

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/CompanionStateChangeListener;

    .line 142
    .local v1, listener:Lcom/google/glass/companion/CompanionStateChangeListener;
    iget-boolean v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    iget v4, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    iget v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    invoke-interface {v1, v2, v4, v5}, Lcom/google/glass/companion/CompanionStateChangeListener;->onStateChange(ZII)V

    goto :goto_0

    .line 144
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/glass/companion/CompanionStateChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    return-void
.end method

.method public static setIsConnectedForTest(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isConnected"

    .prologue
    .line 230
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 231
    sput-object p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    .line 232
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 203
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$3;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 216
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return v0
.end method

.method public isTetheringErrorDetected()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    invoke-virtual {v0}, Lcom/google/glass/companion/ConnectionChecker;->isTetheringErrorDetected()Z

    move-result v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public sendCompanionMessage(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "bundle"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 163
    .local v0, companionServiceCopy:Lcom/google/glass/companion/IRemoteCompanionService;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 v2, 0x1

    .line 171
    :goto_0
    return v2

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/google/glass/companion/RemoteCompanionProxy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to send envelope."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z
    .locals 1
    .parameter "envelope"

    .prologue
    .line 153
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendMessageToCompanionService(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "bundle"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 179
    .local v0, companionServiceCopy:Lcom/google/glass/companion/IRemoteCompanionService;
    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/4 v2, 0x1

    .line 187
    :goto_0
    return v2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/google/glass/companion/RemoteCompanionProxy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to send envelope."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

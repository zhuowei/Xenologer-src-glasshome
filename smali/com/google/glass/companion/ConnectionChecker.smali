.class public Lcom/google/glass/companion/ConnectionChecker;
.super Ljava/lang/Object;
.source "ConnectionChecker.java"

# interfaces
.implements Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;


# static fields
.field private static final CHECK_INTERVAL:J = 0xc350L

.field private static final JELLY_BEAN_MR1_VERSION_CODE:I = 0x11

.field private static final MAX_CONTINUAL_TETHERING_ERROR:I = 0x5

.field private static final REPORT_INTERVAL:J = 0xc350L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private companionService:Lcom/google/glass/companion/IRemoteCompanionService;

.field private final context:Landroid/content/Context;

.field private volatile isConnected:Z

.field private lastCheckTime:J

.field private lastReportErrorTime:J

.field private messenger:Landroid/os/Messenger;

.field private tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/companion/ConnectionChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/ConnectionChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-wide/16 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J

    .line 44
    iput-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/companion/ConnectionChecker$1;

    invoke-direct {v1, p0}, Lcom/google/glass/companion/ConnectionChecker$1;-><init>(Lcom/google/glass/companion/ConnectionChecker;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->messenger:Landroid/os/Messenger;

    .line 98
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker;->context:Landroid/content/Context;

    .line 99
    invoke-static {p0}, Lcom/google/glass/net/NetworkUtil;->setNetworkChecker(Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;)V

    .line 100
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/companion/ConnectionChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/companion/ConnectionChecker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/companion/ConnectionChecker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/companion/ConnectionChecker;->sendTetheringErrorMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/companion/ConnectionChecker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->context:Landroid/content/Context;

    return-object v0
.end method

.method private sendTetheringErrorMessage()V
    .locals 4

    .prologue
    .line 181
    sget-object v2, Lcom/google/glass/companion/ConnectionChecker;->TAG:Ljava/lang/String;

    const-string v3, "Send tethering error message to glass."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Error$Builder;->setType(Lcom/google/glass/companion/Proto$Error$ErrorType;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Error$Builder;->build()Lcom/google/glass/companion/Proto$Error;

    move-result-object v1

    .line 184
    .local v1, error:Lcom/google/glass/companion/Proto$Error;
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 194
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/google/glass/companion/ConnectionChecker;->TAG:Ljava/lang/String;

    const-string v3, "Error sending envelope to companion service."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 193
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public check()V
    .locals 7

    .prologue
    const-wide/32 v5, 0xc350

    .line 114
    iget-wide v1, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    monitor-enter p0

    .line 120
    :try_start_0
    iget-wide v1, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v1, :cond_3

    .line 122
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v1}, Lcom/google/glass/companion/IRemoteCompanionService;->ping()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/companion/ConnectionChecker;->TAG:Ljava/lang/String;

    const-string v2, "Error occurs while pinging."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public isTetheringErrorDetected()Z
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportError()V
    .locals 11

    .prologue
    const-wide/32 v9, 0xc350

    .line 136
    iget-wide v5, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    add-long/2addr v5, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    iget-boolean v5, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v5, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide v5, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    add-long/2addr v5, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2

    iget-boolean v5, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/glass/companion/ConnectionChecker;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/glass/net/NetworkUtil;->hasTetheredConnectivity(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v5, :cond_3

    .line 147
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 149
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    .line 151
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->getNextUniqueId()J

    move-result-wide v2

    .line 152
    .local v2, id:J
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setId(J)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->build()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v4

    .line 154
    .local v4, request:Lcom/google/glass/companion/Proto$CompanionInfo;
    sget-object v5, Lcom/google/glass/companion/ConnectionChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting companion info, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/companion/ConnectionChecker;->messenger:Landroid/os/Messenger;

    invoke-static {v5, v6}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 160
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_2
    iget-object v5, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v5, v0}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Landroid/os/RemoteException;
    sget-object v5, Lcom/google/glass/companion/ConnectionChecker;->TAG:Ljava/lang/String;

    const-string v6, "Error sending envelope to companion service."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public reportOK()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 170
    return-void
.end method

.method public declared-synchronized setCompanionService(Lcom/google/glass/companion/IRemoteCompanionService;)V
    .locals 1
    .parameter "companionService"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnectState(Z)V
    .locals 2
    .parameter "isConnected"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    .line 108
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

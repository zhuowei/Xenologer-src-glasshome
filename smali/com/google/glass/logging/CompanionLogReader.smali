.class public Lcom/google/glass/logging/CompanionLogReader;
.super Ljava/lang/Object;
.source "CompanionLogReader.java"


# static fields
.field private static final READ_TIMEOUT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile companionLog:Ljava/lang/String;

.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final incoming:Landroid/os/Messenger;

.field private final replyableId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/logging/CompanionLogReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/CompanionLogReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/google/glass/logging/CompanionLogReader$1;

    invoke-direct {v3, p0}, Lcom/google/glass/logging/CompanionLogReader$1;-><init>(Lcom/google/glass/logging/CompanionLogReader;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/glass/logging/CompanionLogReader;->incoming:Landroid/os/Messenger;

    .line 48
    const-string v2, "no companion log found."

    iput-object v2, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    .line 50
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 53
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->getNextUniqueReplyableId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/logging/CompanionLogReader;->replyableId:J

    .line 54
    sget-object v2, Lcom/google/glass/logging/CompanionLogReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting companion log with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/glass/logging/CompanionLogReader;->replyableId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/glass/logging/CompanionLogReader;->replyableId:J

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setId(J)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->build()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 62
    .local v0, envelope:Lcom/google/glass/companion/Proto$Envelope;
    iget-wide v2, p0, Lcom/google/glass/logging/CompanionLogReader;->replyableId:J

    invoke-static {v2, v3, v0}, Lcom/google/glass/companion/CompanionMessagingUtil;->createRequestMessage(JLcom/google/glass/companion/Proto$Envelope;)Landroid/os/Message;

    move-result-object v1

    .line 63
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/glass/logging/CompanionLogReader;->incoming:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 64
    invoke-static {p1}, Lcom/google/glass/logging/LoggingApplication;->from(Landroid/content/Context;)Lcom/google/glass/logging/LoggingApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/logging/LoggingApplication;->getCompanionMessenger()Lcom/google/glass/util/RemoteMessenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/util/RemoteMessenger;->sendMessage(Landroid/os/Message;)V

    .line 65
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/logging/CompanionLogReader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/logging/CompanionLogReader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/google/glass/logging/CompanionLogReader;->replyableId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/glass/logging/CompanionLogReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/logging/CompanionLogReader;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public read()Ljava/lang/String;
    .locals 7

    .prologue
    .line 72
    :try_start_0
    sget-object v2, Lcom/google/glass/logging/CompanionLogReader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout in reading companion log? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    return-object v1

    .line 72
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/logging/CompanionLogReader;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException in getCompanionLog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

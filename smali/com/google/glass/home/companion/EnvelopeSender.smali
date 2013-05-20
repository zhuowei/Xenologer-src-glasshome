.class public Lcom/google/glass/home/companion/EnvelopeSender;
.super Ljava/lang/Object;
.source "EnvelopeSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_GENERIC:I = 0x0

.field public static final TYPE_SCREENCAST:I = 0x1


# instance fields
.field private final handler:Landroid/os/Handler;

.field private volatile isRunning:Z

.field private final outStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/home/companion/EnvelopeSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "outStream"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/glass/home/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/home/companion/EnvelopeSender;->isRunning:Z

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EnvelopeSender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v1, Lcom/google/glass/home/companion/EnvelopeSender$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/home/companion/EnvelopeSender$1;-><init>(Lcom/google/glass/home/companion/EnvelopeSender;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/home/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/home/companion/EnvelopeSender;->isRunning:Z

    .line 44
    iget-object v0, p0, Lcom/google/glass/home/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 45
    iget-object v0, p0, Lcom/google/glass/home/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/home/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)Z
    .locals 4
    .parameter "envelope"

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-boolean v2, p0, Lcom/google/glass/home/companion/EnvelopeSender;->isRunning:Z

    if-nez v2, :cond_0

    .line 85
    sget-object v2, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    const-string v3, "Dropping envelope since companion is not running."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return v1

    .line 90
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/home/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/home/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v2}, Lcom/google/glass/companion/Proto$Envelope;->writeDelimitedTo(Ljava/io/OutputStream;)V

    .line 92
    iget-object v2, p0, Lcom/google/glass/home/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 93
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    sget-object v1, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    const-string v2, "Envelope was sent."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x1

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    const-string v3, "error happens when sending envelope to companion."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendEnvelope([B)Z
    .locals 4
    .parameter "envelopeData"

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-boolean v2, p0, Lcom/google/glass/home/companion/EnvelopeSender;->isRunning:Z

    if-nez v2, :cond_0

    .line 107
    sget-object v2, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    const-string v3, "Dropping envelope data since companion is not running."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return v1

    .line 111
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/home/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/home/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 113
    iget-object v2, p0, Lcom/google/glass/home/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 114
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    sget-object v1, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    const-string v2, "Envelope data was sent."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x1

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    const-string v3, "error happens when sending envelope data to companion."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized sendEnvelopeAsync(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 2
    .parameter "envelope"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/home/companion/EnvelopeSender;->isRunning:Z

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    const-string v1, "Envelope Sender was closed. Drop the envelope."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/home/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendOrUpdateEnvelopeAsync(ILcom/google/glass/companion/Proto$Envelope;)V
    .locals 3
    .parameter "type"
    .parameter "envelope"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/home/companion/EnvelopeSender;->isRunning:Z

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    const-string v1, "Envelope Sender was closed. Drop the envelope."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/home/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    iget-object v0, p0, Lcom/google/glass/home/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 62
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/glass/home/companion/EnvelopeSender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip!. Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

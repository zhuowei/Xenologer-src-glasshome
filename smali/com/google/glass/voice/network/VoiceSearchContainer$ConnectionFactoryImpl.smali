.class Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/android/speech/network/ConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionFactoryImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private plainSocketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 449
    const-class v0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->context:Landroid/content/Context;

    .line 458
    return-void
.end method

.method private declared-synchronized maybeInitSocketConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)V
    .locals 3
    .parameter "serverInfo"

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->plainSocketFactory:Ljavax/net/SocketFactory;

    if-nez v0, :cond_0

    .line 463
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->plainSocketFactory:Ljavax/net/SocketFactory;

    .line 464
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getConnectionTimeoutMsec()I

    move-result v1

    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :cond_0
    monitor-exit p0

    return-void

    .line 464
    :cond_1
    :try_start_1
    new-instance v0, Landroid/net/SSLSessionCache;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Ljava/net/HttpURLConnection;
    .locals 2
    .parameter "httpServerInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 4
    .parameter "httpServerInfo"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening HTTP connection to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 505
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getReadTimeoutMsec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 506
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getConnectionTimeoutMsec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 507
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getChunkSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 510
    :cond_0
    return-object v0
.end method

.method public openSocket(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)Ljava/net/Socket;
    .locals 6
    .parameter "serverInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->maybeInitSocketConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)V

    .line 474
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getPort()I

    move-result v1

    .line 477
    .local v1, port:I
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getUseSsl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    sget-object v3, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening SSL connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v0, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    .line 485
    .local v2, socket:Ljava/net/Socket;
    :goto_0
    invoke-static {v2}, Lcom/google/android/speech/network/IoUtils;->tagSocket(Ljava/net/Socket;)V

    .line 486
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getOutBufferSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 487
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getInBufferSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 488
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getConnectionTimeoutMsec()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 490
    return-object v2

    .line 481
    .end local v2           #socket:Ljava/net/Socket;
    :cond_0
    sget-object v3, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening TCP connection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->plainSocketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v3, v0, v1}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    .restart local v2       #socket:Ljava/net/Socket;
    goto :goto_0
.end method

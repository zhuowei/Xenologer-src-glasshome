.class public Lcom/google/glass/net/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    }
.end annotation


# static fields
.field private static final PING_URI:Ljava/lang/String; = "https://www.google.com"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIMEOUT_MS:I = 0x1f40

.field private static companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/net/NetworkUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/NetworkUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static checkNetwork()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 87
    .local v0, worker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->check()V

    .line 90
    :cond_0
    return-void
.end method

.method public static hasTetheredConnectivity(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 42
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 44
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 45
    .local v5, networks:[Landroid/net/NetworkInfo;
    if-eqz v5, :cond_1

    .line 46
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 47
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    const/4 v6, 0x1

    .line 52
    .end local v0           #arr$:[Landroid/net/NetworkInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v4           #len$:I
    :goto_1
    return v6

    .line 46
    .restart local v0       #arr$:[Landroid/net/NetworkInfo;
    .restart local v2       #i$:I
    .restart local v3       #info:Landroid/net/NetworkInfo;
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v0           #arr$:[Landroid/net/NetworkInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v4           #len$:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static pingGoogle()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getUserAgent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 61
    .local v2, httpClient:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 62
    .local v3, params:Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x1f40

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    const/16 v7, 0x1f40

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    new-instance v7, Lorg/apache/http/client/methods/HttpHead;

    const-string v8, "https://www.google.com"

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 66
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 67
    .local v5, status:Lorg/apache/http/StatusLine;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 68
    .local v1, headers:[Lorg/apache/http/Header;
    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 69
    :cond_0
    sget-object v7, Lcom/google/glass/net/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v8, "Unable to reach https://www.google.com."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v1           #headers:[Lorg/apache/http/Header;
    .end local v3           #params:Lorg/apache/http/params/HttpParams;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #status:Lorg/apache/http/StatusLine;
    :goto_0
    return v6

    .line 72
    .restart local v1       #headers:[Lorg/apache/http/Header;
    .restart local v3       #params:Lorg/apache/http/params/HttpParams;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v5       #status:Lorg/apache/http/StatusLine;
    :cond_1
    :try_start_1
    sget-object v7, Lcom/google/glass/net/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetch of https://www.google.com returned status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    const/16 v8, 0x190

    if-ge v7, v8, :cond_2

    const/4 v6, 0x1

    .line 78
    :cond_2
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 74
    .end local v1           #headers:[Lorg/apache/http/Header;
    .end local v3           #params:Lorg/apache/http/params/HttpParams;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    sget-object v7, Lcom/google/glass/net/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v8, "Unable to reach https://www.google.com: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v6
.end method

.method public static reportNetworkError()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 97
    .local v0, worker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->reportError()V

    .line 100
    :cond_0
    return-void
.end method

.method public static reportNetworkOK()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 107
    .local v0, worker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->reportOK()V

    .line 110
    :cond_0
    return-void
.end method

.method public static setNetworkChecker(Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;)V
    .locals 0
    .parameter "worker"

    .prologue
    .line 117
    sput-object p0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 118
    return-void
.end method

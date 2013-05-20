.class public Lcom/google/glass/net/AndroidHttpRequestDispatcher;
.super Ljava/lang/Object;
.source "AndroidHttpRequestDispatcher.java"

# interfaces
.implements Lcom/google/glass/net/HttpRequestDispatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final TIMEOUT_MS:I = 0x7530


# instance fields
.field private final client:Landroid/net/http/AndroidHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x7530

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    .line 35
    iget-object v1, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 36
    .local v0, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 37
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 38
    return-void
.end method

.method private prepareEntityRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 4
    .parameter "request"
    .parameter
    .parameter "bodyEntity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpEntity;",
            ")",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 46
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    if-eqz p3, :cond_1

    .line 53
    invoke-virtual {p1, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 56
    :cond_1
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 143
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;[B)Landroid/util/Pair;
    .locals 4
    .parameter "url"
    .parameter
    .parameter "postData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 62
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v0

    .line 66
    .local v0, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Landroid/util/Pair;

    iget v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 6
    .parameter "url"
    .parameter
    .parameter "postData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/glass/net/SimplifiedHttpResponse;"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 82
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, entity:Lorg/apache/http/entity/ByteArrayEntity;
    if-eqz p3, :cond_0

    .line 87
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    .end local v1           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-direct {v1, p3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 90
    .restart local v1       #entity:Lorg/apache/http/entity/ByteArrayEntity;
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, p2, v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->prepareEntityRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    .line 91
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lcom/google/glass/net/PendingHttpRequest;

    iget-object v4, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-direct {v3, v4, v2}, Lcom/google/glass/net/PendingHttpRequest;-><init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    .line 95
    .local v3, request:Lcom/google/glass/net/PendingHttpRequest;
    :try_start_0
    invoke-virtual {v3}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 98
    :goto_0
    return-object v4

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "Exception thrown while doing a post with headers -- returning null"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/glass/net/SimplifiedHttpResponse;"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 125
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 126
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 128
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, p2, v3}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->prepareEntityRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpPut;

    .line 129
    .local v1, put:Lorg/apache/http/client/methods/HttpPut;
    new-instance v2, Lcom/google/glass/net/PendingHttpRequest;

    iget-object v4, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-direct {v2, v4, v1}, Lcom/google/glass/net/PendingHttpRequest;-><init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    .line 133
    .local v2, request:Lcom/google/glass/net/PendingHttpRequest;
    :try_start_0
    invoke-virtual {v2}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 136
    :goto_0
    return-object v3

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "Exception thrown while doing a put -- returning null."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putWithFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;JJ)Lcom/google/glass/net/PendingHttpRequest;
    .locals 8
    .parameter "url"
    .parameter
    .parameter "file"
    .parameter "contentType"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/glass/net/PendingHttpRequest;"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 106
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 108
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    sget-object v1, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    .line 113
    :cond_1
    const/4 v0, 0x0

    .line 115
    .local v0, entity:Lcom/google/glass/net/FileRangeEntity;
    const-wide/16 v1, 0x0

    cmp-long v1, p7, v1

    if-lez v1, :cond_2

    .line 116
    new-instance v0, Lcom/google/glass/net/FileRangeEntity;

    .end local v0           #entity:Lcom/google/glass/net/FileRangeEntity;
    add-long v1, p5, p7

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    move-object v1, p3

    move-object v2, p4

    move-wide v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/net/FileRangeEntity;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    .line 119
    .restart local v0       #entity:Lcom/google/glass/net/FileRangeEntity;
    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, v0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->prepareEntityRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v7

    check-cast v7, Lorg/apache/http/client/methods/HttpPut;

    .line 120
    .local v7, put:Lorg/apache/http/client/methods/HttpPut;
    new-instance v1, Lcom/google/glass/net/PendingHttpRequest;

    iget-object v2, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-direct {v1, v2, v7}, Lcom/google/glass/net/PendingHttpRequest;-><init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    goto :goto_0
.end method

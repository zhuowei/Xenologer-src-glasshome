.class public Lcom/google/glass/net/PendingHttpRequest;
.super Ljava/lang/Object;
.source "PendingHttpRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final client:Landroid/net/http/AndroidHttpClient;

.field private isCancelled:Z

.field private request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/PendingHttpRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V
    .locals 1
    .parameter "client"
    .parameter "request"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/glass/net/PendingHttpRequest;->client:Landroid/net/http/AndroidHttpClient;

    .line 25
    iput-object p2, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/net/PendingHttpRequest;->isCancelled:Z

    .line 27
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->abort()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/net/PendingHttpRequest;->isCancelled:Z

    .line 36
    return-void
.end method

.method public execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 51
    .local v0, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/PendingHttpRequest;->client:Landroid/net/http/AndroidHttpClient;

    iget-object v2, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    sget-object v1, Lcom/google/glass/net/PendingHttpRequest;->TAG:Ljava/lang/String;

    const-string v2, "Response from server was null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    :goto_0
    return-object v1

    .line 58
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/glass/net/SimplifiedHttpResponse;

    invoke-direct {v1, v0}, Lcom/google/glass/net/SimplifiedHttpResponse;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/glass/net/PendingHttpRequest;->isCancelled:Z

    return v0
.end method

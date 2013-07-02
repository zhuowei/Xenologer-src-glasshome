.class Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebAnswerView.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/WebAnswerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebAnswerViewClient"
.end annotation


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewClient;->context:Landroid/content/Context;

    .line 237
    return-void
.end method


# virtual methods
.method getMapHelperInstance()Lcom/google/glass/maps/MapHelper;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v0

    return-object v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 277
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-static {}, Lcom/google/glass/home/search/results/WebAnswerView;->access$100()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    const-string v1, "WebView onReceivedError %d for url %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 290
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Lcom/google/glass/home/search/results/WebAnswerView;->access$100()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    const-string v1, "WebView onReceivedSslError url %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 295
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 11
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 246
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 247
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/google/glass/maps/MapHelper;->isGlassMapUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    invoke-static {}, Lcom/google/glass/home/search/results/WebAnswerView;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intercepting map request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->newBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setUri(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v3

    .line 250
    .local v3, renderRequest:Lcom/google/glass/proto/MapRenderRequest;
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewClient;->getMapHelperInstance()Lcom/google/glass/maps/MapHelper;

    move-result-object v2

    .line 251
    .local v2, helper:Lcom/google/glass/maps/MapHelper;
    invoke-virtual {v2, v3}, Lcom/google/glass/maps/MapHelper;->renderMapToPng(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 252
    .local v1, future:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<[B>;"
    new-instance v4, Landroid/webkit/WebResourceResponse;

    const-string v8, "image/png"

    const/4 v9, 0x0

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v10, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v8, v9, v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    .end local v1           #future:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<[B>;"
    .end local v2           #helper:Lcom/google/glass/maps/MapHelper;
    .end local v3           #renderRequest:Lcom/google/glass/proto/MapRenderRequest;
    .end local v5           #uri:Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/home/search/results/WebAnswerView;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ShouldInterceptRequest exception"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    move-object v4, v7

    .line 262
    goto :goto_0

    .line 258
    :catch_1
    move-exception v0

    .line 259
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/google/glass/home/search/results/WebAnswerView;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ShouldInterceptRequest exception"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

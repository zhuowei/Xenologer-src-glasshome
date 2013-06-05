.class Lcom/google/glass/html/ResourceLoadingWebViewClient$1;
.super Landroid/os/AsyncTask;
.source "ResourceLoadingWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 202
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;->onResourceLoaded()V

    .line 210
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$200(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

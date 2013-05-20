.class Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$3;
.super Ljava/lang/Object;
.source "ResourceLoadingWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient;->loadHttpResource(Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$BlockingDownloadTask;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient;

.field final synthetic val$httpResourceTask:Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$BlockingDownloadTask;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient;Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$BlockingDownloadTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$3;->this$0:Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$3;->val$httpResourceTask:Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$BlockingDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$3;->val$httpResourceTask:Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$BlockingDownloadTask;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->getPath()Ljava/lang/String;

    .line 271
    return-void
.end method

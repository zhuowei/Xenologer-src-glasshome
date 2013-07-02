.class Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;
.super Lcom/google/glass/util/ImageProxyDownloadTask;
.source "ResourceLoadingWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockingDownloadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter "uri"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .line 77
    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/google/glass/html/ResourceLoadingWebViewClient;->getMaxScreenDimension(Landroid/content/Context;)I
    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100(Landroid/content/Context;)I

    move-result v3

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/google/glass/html/ResourceLoadingWebViewClient;->getMaxScreenDimension(Landroid/content/Context;)I
    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/ImageProxyDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->bindContent(Ljava/lang/String;)V

    return-void
.end method

.method protected bindContent(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 86
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

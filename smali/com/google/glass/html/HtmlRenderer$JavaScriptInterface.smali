.class public Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/html/HtmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/HtmlRenderer;


# direct methods
.method public constructor <init>(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoSizingComplete()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z
    invoke-static {v0, v1}, Lcom/google/glass/html/HtmlRenderer;->access$702(Lcom/google/glass/html/HtmlRenderer;Z)Z

    .line 181
    return-void
.end method

.method public setContentSize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    const/4 v6, 0x1

    .line 160
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->width:I
    invoke-static {v2}, Lcom/google/glass/html/HtmlRenderer;->access$300(Lcom/google/glass/html/HtmlRenderer;)I

    move-result v0

    .line 163
    .local v0, contentWidthPixels:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 168
    :goto_0
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->width:I
    invoke-static {v3}, Lcom/google/glass/html/HtmlRenderer;->access$300(Lcom/google/glass/html/HtmlRenderer;)I

    move-result v3

    div-int v3, v0, v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    #setter for: Lcom/google/glass/html/HtmlRenderer;->numPages:I
    invoke-static {v2, v3}, Lcom/google/glass/html/HtmlRenderer;->access$502(Lcom/google/glass/html/HtmlRenderer;I)I

    .line 169
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$1;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$1;-><init>(Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 176
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received bad content width from JS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

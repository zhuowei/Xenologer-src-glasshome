.class Lcom/google/glass/home/sync/StylesheetUpdater$1;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "StylesheetUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/sync/StylesheetUpdater;->checkForUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/ResourceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/sync/StylesheetUpdater;


# direct methods
.method constructor <init>(Lcom/google/glass/home/sync/StylesheetUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/home/sync/StylesheetUpdater$1;->this$0:Lcom/google/glass/home/sync/StylesheetUpdater;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 89
    invoke-static {}, Lcom/google/glass/home/sync/StylesheetUpdater;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/ResourceResponse;)V
    .locals 2
    .parameter "responseProto"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/home/sync/StylesheetUpdater$1;->this$0:Lcom/google/glass/home/sync/StylesheetUpdater;

    #getter for: Lcom/google/glass/home/sync/StylesheetUpdater;->backgroundExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lcom/google/glass/home/sync/StylesheetUpdater;->access$100(Lcom/google/glass/home/sync/StylesheetUpdater;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/sync/StylesheetUpdater$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/home/sync/StylesheetUpdater$1$1;-><init>(Lcom/google/glass/home/sync/StylesheetUpdater$1;Lcom/google/googlex/glass/common/proto/ResourceResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    check-cast p1, Lcom/google/googlex/glass/common/proto/ResourceResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/sync/StylesheetUpdater$1;->onSuccess(Lcom/google/googlex/glass/common/proto/ResourceResponse;)V

    return-void
.end method

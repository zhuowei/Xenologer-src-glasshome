.class Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

.field final synthetic val$errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request.2;"
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;->this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;->val$errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request.2;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;->this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;->val$errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-interface {v0, v1}, Lcom/google/glass/net/ProtoResponseHandler;->onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    .line 183
    return-void
.end method

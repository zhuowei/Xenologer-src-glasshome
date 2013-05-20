.class Lcom/google/glass/net/ProtoRequestDispatcher$Request;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/ProtoRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final isImmediate:Z

.field final logMetrics:Z

.field final path:Ljava/lang/String;

.field final requestData:Lcom/google/protobuf/ByteString;

.field final responseHandler:Lcom/google/glass/net/ProtoResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field final responseParser:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field final responseThread:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcher;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "requestData"
    .parameter "isImmediate"
    .parameter
    .parameter
    .parameter "responseThread"
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            "Z",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    .local p5, responseParser:Lcom/google/protobuf/Parser;,"Lcom/google/protobuf/Parser<TT;>;"
    .local p6, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestData:Lcom/google/protobuf/ByteString;

    .line 132
    iput-object p5, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseParser:Lcom/google/protobuf/Parser;

    .line 133
    iput-boolean p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    .line 134
    iput-object p6, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    .line 135
    iput-object p7, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    .line 136
    iput-boolean p8, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->logMetrics:Z

    .line 137
    return-void
.end method


# virtual methods
.method onCancel()V
    .locals 3

    .prologue
    .line 142
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;

    invoke-direct {v2, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception while dispatching cancel response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 159
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    sget-object v2, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->NOT_AUTHORIZED:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-virtual {v2, p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    #getter for: Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$100(Lcom/google/glass/net/ProtoRequestDispatcher;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    new-instance v2, Lcom/google/glass/util/AuthUtils;

    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    #getter for: Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$100(Lcom/google/glass/net/ProtoRequestDispatcher;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/util/AuthUtils;->invalidateAuthToken()V

    .line 169
    :cond_0
    sget-object v2, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->NETWORK_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-virtual {v2, p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :try_start_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 172
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->reportNetworkError()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;

    invoke-direct {v3, p0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :goto_1
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected error logging network error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 185
    .end local v1           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception while dispatching error response."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method onSuccess(Lcom/google/protobuf/ByteString;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 196
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->reportNetworkOK()V

    .line 197
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseParser:Lcom/google/protobuf/Parser;

    invoke-interface {v2, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, responseProto:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    .end local v1           #responseProto:Ljava/lang/Object;,"TT;"
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v2, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INVALID_PROTO:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-virtual {p0, v2}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    goto :goto_0

    .line 206
    .end local v0           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception while dispatching success response."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

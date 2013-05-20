.class public Lcom/google/glass/net/ProtoResponse;
.super Ljava/lang/Object;
.source "ProtoResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

.field private final responseProto:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/Object;)V
    .locals 1
    .parameter "errorCode"
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    .local p2, responseProto:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 30
    iput-object p1, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 31
    iput-object p2, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Ljava/lang/Object;

    .line 32
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static cancel()Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v0, Lcom/google/glass/net/ProtoResponse;

    invoke-direct {v0, v1, v1}, Lcom/google/glass/net/ProtoResponse;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/Object;)V

    return-object v0
.end method

.method static error(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;",
            ")",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 63
    new-instance v0, Lcom/google/glass/net/ProtoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/net/ProtoResponse;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/Object;)V

    return-object v0
.end method

.method static success(Ljava/lang/Object;)Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, responseProto:Ljava/lang/Object;,"TT;"
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 68
    new-instance v0, Lcom/google/glass/net/ProtoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/glass/net/ProtoResponse;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    return-object v0
.end method

.method public getResponseProto()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 36
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 41
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/google/glass/net/ProtoRequestDispatcher$2;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Z)Lcom/google/glass/net/ProtoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

.field final synthetic val$errorCodeReference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$responseProtoReference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$errorCodeReference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$responseProtoReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 405
    return-void
.end method

.method public onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$errorCodeReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 410
    return-void
.end method

.method public onSuccess(Lcom/google/protobuf/AbstractMessage;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, responseProto:Lcom/google/protobuf/AbstractMessage;,"TT;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$responseProtoReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 415
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 401
    check-cast p1, Lcom/google/protobuf/AbstractMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$2;->onSuccess(Lcom/google/protobuf/AbstractMessage;)V

    return-void
.end method

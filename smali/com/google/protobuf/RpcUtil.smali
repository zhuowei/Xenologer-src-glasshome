.class public final Lcom/google/protobuf/RpcUtil;
.super Ljava/lang/Object;
.source "RpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RpcUtil$AlreadyCalledException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/protobuf/RpcUtil;->copyAsType(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method private static copyAsType(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    .locals 1
    .parameter
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Message;",
            ">(TType;",
            "Lcom/google/protobuf/Message;",
            ")TType;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, typeDefaultInstance:Lcom/google/protobuf/Message;,"TType;"
    instance-of v0, p0, Lcom/google/protobuf/MutableMessage;

    if-eqz v0, :cond_1

    .line 67
    instance-of v0, p1, Lcom/google/protobuf/MutableMessage;

    if-eqz v0, :cond_0

    .line 68
    check-cast p0, Lcom/google/protobuf/MutableMessage;

    .end local p0           #typeDefaultInstance:Lcom/google/protobuf/Message;,"TType;"
    invoke-interface {p0}, Lcom/google/protobuf/MutableMessage;->newMessageForType()Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/MutableMessage;

    .end local p1
    invoke-interface {v0, p1}, Lcom/google/protobuf/MutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    .line 77
    .restart local p0       #typeDefaultInstance:Lcom/google/protobuf/Message;,"TType;"
    :goto_0
    return-object v0

    .line 71
    .restart local p1
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/Message;->mutableCopy()Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    instance-of v0, p1, Lcom/google/protobuf/MutableMessage;

    if-eqz v0, :cond_2

    .line 75
    check-cast p1, Lcom/google/protobuf/MutableMessage;

    .end local p1
    invoke-interface {p1}, Lcom/google/protobuf/MutableMessage;->immutableCopy()Lcom/google/protobuf/Message;

    move-result-object v0

    goto :goto_0

    .line 77
    .restart local p1
    :cond_2
    invoke-interface {p0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public static generalizeCallback(Lcom/google/protobuf/RpcCallback;Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/RpcCallback;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/RpcCallback",
            "<TType;>;",
            "Ljava/lang/Class",
            "<TType;>;TType;)",
            "Lcom/google/protobuf/RpcCallback",
            "<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, originalCallback:Lcom/google/protobuf/RpcCallback;,"Lcom/google/protobuf/RpcCallback<TType;>;"
    .local p1, originalClass:Ljava/lang/Class;,"Ljava/lang/Class<TType;>;"
    .local p2, defaultInstance:Lcom/google/protobuf/Message;,"TType;"
    new-instance v0, Lcom/google/protobuf/RpcUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/protobuf/RpcUtil$1;-><init>(Ljava/lang/Class;Lcom/google/protobuf/Message;Lcom/google/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static newOneTimeCallback(Lcom/google/protobuf/RpcCallback;)Lcom/google/protobuf/RpcCallback;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParameterType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/RpcCallback",
            "<TParameterType;>;)",
            "Lcom/google/protobuf/RpcCallback",
            "<TParameterType;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, originalCallback:Lcom/google/protobuf/RpcCallback;,"Lcom/google/protobuf/RpcCallback<TParameterType;>;"
    new-instance v0, Lcom/google/protobuf/RpcUtil$2;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RpcUtil$2;-><init>(Lcom/google/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static specializeCallback(Lcom/google/protobuf/RpcCallback;)Lcom/google/protobuf/RpcCallback;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/RpcCallback",
            "<",
            "Lcom/google/protobuf/Message;",
            ">;)",
            "Lcom/google/protobuf/RpcCallback",
            "<TType;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, originalCallback:Lcom/google/protobuf/RpcCallback;,"Lcom/google/protobuf/RpcCallback<Lcom/google/protobuf/Message;>;"
    return-object p0
.end method

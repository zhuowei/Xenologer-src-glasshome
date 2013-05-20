.class public final Lcom/google/glass/hidden/MethodInvoker;
.super Ljava/lang/Object;
.source "MethodInvoker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HiddenMethodInvoker"


# instance fields
.field private argTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private instance:Ljava/lang/Object;

.field private lastException:Ljava/lang/Exception;

.field private method:Ljava/lang/reflect/Method;

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "instance"
    .parameter "methodName"

    .prologue
    .line 32
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .parameter "instance"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, argType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 4
    .parameter "instance"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/google/glass/hidden/MethodInvoker;->argTypes:[Ljava/lang/Class;

    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/hidden/MethodInvoker;->findMethod()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    const-string v1, "HiddenMethodInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find the method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private clearLastException()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->lastException:Ljava/lang/Exception;

    .line 114
    return-void
.end method

.method private ensureValidMethod()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/glass/hidden/MethodInvoker;->isMethodValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "HiddenMethodInvoker"

    const-string v1, "invoke() called without a valid method!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t bind to method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method

.method private findMethod()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "HiddenMethodInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findMethod() cannot find method named: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on a null instance."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/hidden/MethodInvoker;->argTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/hidden/MethodInvoker;->argTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 151
    goto :goto_2
.end method

.method private handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 6
    .parameter "ex"
    .parameter "args"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/hidden/MethodInvoker;->lastException:Ljava/lang/Exception;

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 122
    .local v2, logBuilder:Ljava/lang/StringBuilder;
    const-string v4, "Caught exception invoking method: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v4, " on instance="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string v4, " Args= [\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    if-eqz p2, :cond_1

    .line 126
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_1

    .line 127
    aget-object v0, p2, v1

    .line 128
    .local v0, arg:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v3, "null"

    .line 129
    .local v3, toPrint:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v3           #toPrint:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 132
    .end local v0           #arg:Ljava/lang/Object;
    .end local v1           #i:I
    :cond_1
    const-string v4, "]\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v4, "HiddenMethodInvoker"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    return-void
.end method


# virtual methods
.method public getLastInvocationException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->lastException:Ljava/lang/Exception;

    return-object v0
.end method

.method public varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/google/glass/hidden/MethodInvoker;->clearLastException()V

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/hidden/MethodInvoker;->ensureValidMethod()V

    .line 72
    iget-object v2, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v0, p1}, Lcom/google/glass/hidden/MethodInvoker;->handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, ex:Ljava/lang/IllegalAccessException;
    invoke-direct {p0, v0, p1}, Lcom/google/glass/hidden/MethodInvoker;->handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 80
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v0, p1}, Lcom/google/glass/hidden/MethodInvoker;->handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    .end local v0           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 83
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, v0, p1}, Lcom/google/glass/hidden/MethodInvoker;->handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isMethodValid()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wasExceptionOnLastInvocation()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->lastException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

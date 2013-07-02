.class public final Lcom/google/glass/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "tag"
    .parameter "errorMessage"

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 26
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/io/IOException;
    invoke-static {p1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "tag"
    .parameter "errorMessage"

    .prologue
    .line 15
    if-eqz p0, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {p1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

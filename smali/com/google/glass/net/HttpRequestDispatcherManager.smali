.class public Lcom/google/glass/net/HttpRequestDispatcherManager;
.super Ljava/lang/Object;
.source "HttpRequestDispatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/HttpRequestDispatcherManager$HttpRequestDispatcherHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getSharedDispatcher()Lcom/google/glass/net/HttpRequestDispatcher;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/net/HttpRequestDispatcherManager$HttpRequestDispatcherHolder;->access$000()Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public static setSharedDispatcher(Lcom/google/glass/net/HttpRequestDispatcher;)V
    .locals 0
    .parameter "dispatcher"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/glass/net/HttpRequestDispatcherManager$HttpRequestDispatcherHolder;->access$002(Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/net/HttpRequestDispatcher;

    .line 32
    return-void
.end method

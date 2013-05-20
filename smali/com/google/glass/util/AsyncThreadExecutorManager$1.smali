.class final Lcom/google/glass/util/AsyncThreadExecutorManager$1;
.super Lcom/google/glass/util/PriorityThreadFactory;
.source "AsyncThreadExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/AsyncThreadExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .parameter "r"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/google/glass/util/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/AsyncThreadExecutorManager;->access$002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 29
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->access$000()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

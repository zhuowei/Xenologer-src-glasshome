.class public abstract Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;
.super Ljava/lang/Object;
.source "TimelineItemLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineItemLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ReadCallback"
.end annotation


# instance fields
.field private volatile canceled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;->canceled:Z

    .line 53
    return-void
.end method

.method public final isCanceled()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;->canceled:Z

    return v0
.end method

.method public abstract onItemRead(Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V
.end method

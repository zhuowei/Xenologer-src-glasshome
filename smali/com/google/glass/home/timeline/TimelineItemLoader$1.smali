.class final Lcom/google/glass/home/timeline/TimelineItemLoader$1;
.super Ljava/lang/Object;
.source "TimelineItemLoader.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineItemLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncRead(ILcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;)V
    .locals 0
    .parameter "position"
    .parameter "callback"

    .prologue
    .line 81
    return-void
.end method

.method public find(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 76
    const/4 v0, -0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

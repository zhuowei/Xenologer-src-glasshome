.class public Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;
.super Ljava/lang/Object;
.source "TimelineItemLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineItemLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadResult"
.end annotation


# instance fields
.field private final bundleCoverStatus:I

.field private final crc32:Ljava/lang/Long;

.field private final item:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineItem;ILjava/lang/Long;)V
    .locals 0
    .parameter "item"
    .parameter "bundleCoverStatus"
    .parameter "crc32"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 23
    iput p2, p0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->bundleCoverStatus:I

    .line 24
    iput-object p3, p0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->crc32:Ljava/lang/Long;

    .line 25
    return-void
.end method


# virtual methods
.method public getBundleCoverStatus()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->bundleCoverStatus:I

    return v0
.end method

.method public getCrc32()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->crc32:Ljava/lang/Long;

    return-object v0
.end method

.method public getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.class Lcom/google/glass/home/sync/SyncStats$StatsInfo;
.super Ljava/lang/Object;
.source "SyncStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/sync/SyncStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsInfo"
.end annotation


# instance fields
.field private numFiles:J

.field private totalBytes:J

.field private totalDurationMs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/sync/SyncStats$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->numFiles:J

    return-wide v0
.end method

.method static synthetic access$108(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->numFiles:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->numFiles:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalBytes:J

    return-wide v0
.end method

.method static synthetic access$214(Lcom/google/glass/home/sync/SyncStats$StatsInfo;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalBytes:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalDurationMs:J

    return-wide v0
.end method

.method static synthetic access$314(Lcom/google/glass/home/sync/SyncStats$StatsInfo;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalDurationMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalDurationMs:J

    return-wide v0
.end method

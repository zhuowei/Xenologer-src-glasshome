.class Lcom/google/glass/home/sync/SyncStats;
.super Ljava/lang/Object;
.source "SyncStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/sync/SyncStats$1;,
        Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private downloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/home/sync/SyncStats$StatsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private uploads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/home/sync/SyncStats$StatsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/home/sync/SyncStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/SyncStats;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/sync/SyncStats;->uploads:Ljava/util/Map;

    .line 17
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/sync/SyncStats;->downloads:Ljava/util/Map;

    .line 100
    return-void
.end method

.method private durationString(J)Ljava/lang/String;
    .locals 4
    .parameter "durationMs"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, sb:Ljava/lang/StringBuilder;
    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 112
    div-long v1, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "secs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method log()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/glass/home/sync/SyncStats;->uploads:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, dataDescription:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/home/sync/SyncStats;->uploads:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/sync/SyncStats$StatsInfo;

    .line 67
    .local v3, statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    const-string v4, "Upload "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v4, " [numFiles="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    #getter for: Lcom/google/glass/home/sync/SyncStats$StatsInfo;->numFiles:J
    invoke-static {v3}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$100(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    const-string v4, ", totalBytes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    #getter for: Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalBytes:J
    invoke-static {v3}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$200(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    const-string v4, "kB, totalDuration="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    #getter for: Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalDurationMs:J
    invoke-static {v3}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$300(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/glass/home/sync/SyncStats;->durationString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v4, "].\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    .end local v0           #dataDescription:Ljava/lang/String;
    .end local v3           #statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/sync/SyncStats;->downloads:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .restart local v0       #dataDescription:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/home/sync/SyncStats;->downloads:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/sync/SyncStats$StatsInfo;

    .line 81
    .restart local v3       #statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    const-string v4, "Download "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v4, " [numFiles="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    #getter for: Lcom/google/glass/home/sync/SyncStats$StatsInfo;->numFiles:J
    invoke-static {v3}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$100(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    const-string v4, ", totalBytes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    #getter for: Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalBytes:J
    invoke-static {v3}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$200(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    const-string v4, "kB, totalDuration="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    #getter for: Lcom/google/glass/home/sync/SyncStats$StatsInfo;->totalDurationMs:J
    invoke-static {v3}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$300(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/glass/home/sync/SyncStats;->durationString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v4, "].\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 92
    .end local v0           #dataDescription:Ljava/lang/String;
    .end local v3           #statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 93
    sget-object v4, Lcom/google/glass/home/sync/SyncStats;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    return-void
.end method

.method trackDownload(Ljava/lang/String;JJ)V
    .locals 2
    .parameter "dataDescription"
    .parameter "bytes"
    .parameter "durationMs"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/glass/home/sync/SyncStats;->downloads:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;

    .line 49
    .local v0, statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;

    .end local v0           #statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;-><init>(Lcom/google/glass/home/sync/SyncStats$1;)V

    .line 53
    .restart local v0       #statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    :cond_0
    invoke-static {v0}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$108(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J

    .line 54
    invoke-static {v0, p2, p3}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$214(Lcom/google/glass/home/sync/SyncStats$StatsInfo;J)J

    .line 55
    invoke-static {v0, p4, p5}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$314(Lcom/google/glass/home/sync/SyncStats$StatsInfo;J)J

    .line 56
    iget-object v1, p0, Lcom/google/glass/home/sync/SyncStats;->downloads:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method trackUpload(Ljava/lang/String;JJ)V
    .locals 2
    .parameter "dataDescription"
    .parameter "bytes"
    .parameter "durationMs"

    .prologue
    .line 28
    iget-object v1, p0, Lcom/google/glass/home/sync/SyncStats;->uploads:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;

    .line 29
    .local v0, statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/glass/home/sync/SyncStats$StatsInfo;

    .end local v0           #statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;-><init>(Lcom/google/glass/home/sync/SyncStats$1;)V

    .line 33
    .restart local v0       #statsInfo:Lcom/google/glass/home/sync/SyncStats$StatsInfo;
    :cond_0
    invoke-static {v0}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$108(Lcom/google/glass/home/sync/SyncStats$StatsInfo;)J

    .line 34
    invoke-static {v0, p2, p3}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$214(Lcom/google/glass/home/sync/SyncStats$StatsInfo;J)J

    .line 35
    invoke-static {v0, p4, p5}, Lcom/google/glass/home/sync/SyncStats$StatsInfo;->access$314(Lcom/google/glass/home/sync/SyncStats$StatsInfo;J)J

    .line 36
    iget-object v1, p0, Lcom/google/glass/home/sync/SyncStats;->uploads:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.class public Lcom/google/glass/home/timeline/VideoEventLogger;
.super Ljava/lang/Object;
.source "VideoEventLogger.java"


# static fields
.field private static final END_REASON_ERROR:I = 0x1

.field private static final END_REASON_FINISHED:I = 0x4

.field private static final END_REASON_STOPPED_DURING_BUFFERING:I = 0x2

.field private static final END_REASON_STOPPED_DURING_PLAYBACK:I = 0x3

.field private static final KEY_BUFFERING_DURATION:Ljava/lang/String; = "b"

.field private static final KEY_END_REASON:Ljava/lang/String; = "e"

.field private static final KEY_PLAYBACK_DURATION:Ljava/lang/String; = "p"

.field private static final KEY_REBUFFERING_COUNT:Ljava/lang/String; = "r"

.field private static final KEY_VIDEO_TYPE:Ljava/lang/String; = "t"

.field private static final MIN_TOTAL_DURATION_TO_LOG:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_LOCAL_MP4:I = 0x1

.field private static final TYPE_OTHER:I = 0x0

.field private static final TYPE_STREAM:I = 0x2


# instance fields
.field private hasLogged:Z

.field private isError:Z

.field private playbackFinishTime:J

.field private playbackRequestTime:J

.field private playbackStartTime:J

.field private rebufferingCount:I

.field private final userEventHelper:Lcom/google/glass/logging/UserEventHelper;

.field private final videoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/home/timeline/VideoEventLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/VideoEventLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "contentType"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 54
    const-string v0, "video/mp4"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->videoType:I

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "video/vnd.google-glass.stream-url"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->videoType:I

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->videoType:I

    goto :goto_0
.end method


# virtual methods
.method public logEvent()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const-wide/16 v11, 0x0

    .line 84
    iget-boolean v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->hasLogged:Z

    if-eqz v7, :cond_1

    .line 85
    sget-object v7, Lcom/google/glass/home/timeline/VideoEventLogger;->TAG:Ljava/lang/String;

    const-string v8, "Not logging duplicate event."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iput-boolean v14, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->hasLogged:Z

    .line 90
    iget-wide v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackRequestTime:J

    cmp-long v7, v7, v11

    if-eqz v7, :cond_0

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 95
    .local v3, now:J
    iget-wide v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackRequestTime:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0x7d0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 100
    const-wide/16 v0, 0x0

    .line 101
    .local v0, bufferingDuration:J
    const-wide/16 v5, 0x0

    .line 102
    .local v5, playbackDuration:J
    iget-boolean v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->isError:Z

    if-eqz v7, :cond_2

    .line 103
    const/4 v2, 0x1

    .line 117
    .local v2, endReason:I
    :goto_1
    iget-object v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v8, Lcom/google/glass/logging/UserEventAction;->VIDEO_PLAYBACK:Lcom/google/glass/logging/UserEventAction;

    const-string v9, "t"

    iget v10, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->videoType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "e"

    aput-object v13, v11, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    const/4 v12, 0x2

    const-string v13, "b"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "p"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "r"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    iget v13, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->rebufferingCount:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v2           #endReason:I
    :cond_2
    iget-wide v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackStartTime:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_3

    .line 105
    const/4 v2, 0x2

    .line 106
    .restart local v2       #endReason:I
    iget-wide v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackRequestTime:J

    sub-long v0, v3, v7

    goto :goto_1

    .line 107
    .end local v2           #endReason:I
    :cond_3
    iget-wide v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackFinishTime:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_4

    .line 108
    const/4 v2, 0x3

    .line 109
    .restart local v2       #endReason:I
    iget-wide v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackStartTime:J

    iget-wide v9, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackRequestTime:J

    sub-long v0, v7, v9

    .line 110
    iget-wide v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackStartTime:J

    sub-long v5, v3, v7

    goto :goto_1

    .line 112
    .end local v2           #endReason:I
    :cond_4
    const/4 v2, 0x4

    .line 113
    .restart local v2       #endReason:I
    iget-wide v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackStartTime:J

    iget-wide v9, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackRequestTime:J

    sub-long v0, v7, v9

    .line 114
    iget-wide v7, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackFinishTime:J

    iget-wide v9, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackStartTime:J

    sub-long v5, v7, v9

    goto :goto_1
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->isError:Z

    .line 81
    return-void
.end method

.method public onPlaybackFinished()V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackFinishTime:J

    .line 73
    return-void
.end method

.method public onPlaybackRequested()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackRequestTime:J

    .line 65
    return-void
.end method

.method public onPlaybackStarted()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->playbackStartTime:J

    .line 69
    return-void
.end method

.method public onRebuffering()V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->rebufferingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/home/timeline/VideoEventLogger;->rebufferingCount:I

    .line 77
    return-void
.end method

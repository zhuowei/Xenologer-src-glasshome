.class public Lcom/google/glass/home/timeline/ReadTimelineItemAloud;
.super Landroid/os/AsyncTask;
.source "ReadTimelineItemAloud.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/glass/timeline/TimelineItemId;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final WAKE_LOCK_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private appContext:Lcom/google/glass/home/HomeApplication;

.field private listener:Landroid/speech/tts/UtteranceProgressListener;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    new-instance v1, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v1}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v1, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 34
    invoke-static {p1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->appContext:Lcom/google/glass/home/HomeApplication;

    .line 35
    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->listener:Landroid/speech/tts/UtteranceProgressListener;

    .line 36
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->appContext:Lcom/google/glass/home/HomeApplication;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/google/glass/home/HomeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 37
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 38
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->TAG:Ljava/lang/String;

    const-string v1, "Releasing wake lock from Task."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, [Lcom/google/glass/timeline/TimelineItemId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->doInBackground([Lcom/google/glass/timeline/TimelineItemId;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/glass/timeline/TimelineItemId;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 51
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 52
    .local v1, itemId:Lcom/google/glass/timeline/TimelineItemId;
    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v4, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->appContext:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v4}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 54
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, speakableText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    sget-object v3, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->TAG:Ljava/lang/String;

    const-string v4, "Speakable text was empty, not sending to TTS."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->appContext:Lcom/google/glass/home/HomeApplication;

    iget-object v4, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->listener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v3, v2, v4}, Lcom/google/glass/home/HomeApplication;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->appContext:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 71
    invoke-direct {p0}, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->releaseWakeLock()V

    .line 72
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->releaseWakeLock()V

    .line 66
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 45
    sget-object v0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read aloud wake lock acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

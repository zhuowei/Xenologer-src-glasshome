.class public Lcom/google/glass/home/sync/UserEventFlusher;
.super Lcom/google/glass/util/RateLimitedRunnable;
.source "UserEventFlusher.java"


# static fields
.field private static final PREF_LAST_USER_EVENT_FLUSH_TIME:Ljava/lang/String; = "user_event_flush_time"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIMELINE_PURGE_PREFS:Ljava/lang/String; = "user_event_flush_prefs"

.field private static final USER_EVENT_FLUSH_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/home/sync/UserEventFlusher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/UserEventFlusher;->TAG:Ljava/lang/String;

    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/sync/UserEventFlusher;->USER_EVENT_FLUSH_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    const-string v0, "user_event_flush_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/RateLimitedRunnable;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 24
    return-void
.end method


# virtual methods
.method public execute(J)V
    .locals 2
    .parameter "now"

    .prologue
    .line 28
    new-instance v0, Lcom/google/glass/logging/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/home/sync/UserEventFlusher;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/logging/UserEventHelper;->flush()V

    .line 29
    return-void
.end method

.method protected getInterval()J
    .locals 2

    .prologue
    .line 38
    sget-wide v0, Lcom/google/glass/home/sync/UserEventFlusher;->USER_EVENT_FLUSH_INTERVAL:J

    return-wide v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/home/sync/UserEventFlusher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimestampPref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "user_event_flush_time"

    return-object v0
.end method

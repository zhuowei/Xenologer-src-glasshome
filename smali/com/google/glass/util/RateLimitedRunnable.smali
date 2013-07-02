.class public abstract Lcom/google/glass/util/RateLimitedRunnable;
.super Ljava/lang/Object;
.source "RateLimitedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final clock:Lcom/google/glass/util/Clock;

.field protected final context:Landroid/content/Context;

.field private final sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "sharedPrefs"

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/util/RateLimitedRunnable;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/glass/util/Clock;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/glass/util/Clock;)V
    .locals 0
    .parameter "context"
    .parameter "sharedPrefs"
    .parameter "clock"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/glass/util/RateLimitedRunnable;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/google/glass/util/RateLimitedRunnable;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 24
    iput-object p3, p0, Lcom/google/glass/util/RateLimitedRunnable;->clock:Lcom/google/glass/util/Clock;

    .line 25
    return-void
.end method


# virtual methods
.method protected abstract execute(J)V
.end method

.method protected abstract getInterval()J
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected abstract getTimestampPref()Ljava/lang/String;
.end method

.method public final run()V
    .locals 8

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 36
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v4, p0, Lcom/google/glass/util/RateLimitedRunnable;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v4}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 41
    .local v2, now:J
    iget-object v4, p0, Lcom/google/glass/util/RateLimitedRunnable;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/google/glass/util/RateLimitedRunnable;->getTimestampPref()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 44
    .local v0, lastRunTime:J
    sub-long v4, v2, v0

    invoke-virtual {p0}, Lcom/google/glass/util/RateLimitedRunnable;->getInterval()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/google/glass/util/RateLimitedRunnable;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Has run recently, will not run now."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_1
    iget-object v4, p0, Lcom/google/glass/util/RateLimitedRunnable;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/util/RateLimitedRunnable;->getTimestampPref()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    invoke-virtual {p0, v2, v3}, Lcom/google/glass/util/RateLimitedRunnable;->execute(J)V

    goto :goto_0
.end method

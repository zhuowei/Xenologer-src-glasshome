.class public Lcom/google/glass/home/sync/OldItemPurger;
.super Lcom/google/glass/util/RateLimitedRunnable;
.source "OldItemPurger.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final MAX_SYNCED_ITEM_AGE:J = 0x0L

.field private static final PREF_LAST_OLD_ITEM_PURGE_TIME:Ljava/lang/String; = "purge_time"

#the value of this static final field might be set in the static constructor
.field private static final PURGE_OLD_ITEMS_INTERVAL:J = 0x0L

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIMELINE_PURGE_PREFS:Ljava/lang/String; = "timeline_purge_prefs"


# instance fields
.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-class v0, Lcom/google/glass/home/sync/OldItemPurger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/OldItemPurger;->TAG:Ljava/lang/String;

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/sync/OldItemPurger;->PURGE_OLD_ITEMS_INTERVAL:J

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/sync/OldItemPurger;->MAX_SYNCED_ITEM_AGE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;)V
    .locals 2
    .parameter "context"
    .parameter "timelineHelper"

    .prologue
    .line 30
    const-string v0, "timeline_purge_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/RateLimitedRunnable;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 31
    iput-object p2, p0, Lcom/google/glass/home/sync/OldItemPurger;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 32
    return-void
.end method


# virtual methods
.method public execute(J)V
    .locals 5
    .parameter "now"

    .prologue
    .line 38
    sget-wide v2, Lcom/google/glass/home/sync/OldItemPurger;->MAX_SYNCED_ITEM_AGE:J

    sub-long v0, p1, v2

    .line 39
    .local v0, deleteOlderThan:J
    sget-object v2, Lcom/google/glass/home/sync/OldItemPurger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting synced items older than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v2, p0, Lcom/google/glass/home/sync/OldItemPurger;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v3, p0, Lcom/google/glass/home/sync/OldItemPurger;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/home/sync/OldItemPurger;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->deleteSyncedItemsOlderThan(Landroid/content/Context;Landroid/content/ContentResolver;J)V

    .line 42
    return-void
.end method

.method protected getInterval()J
    .locals 2

    .prologue
    .line 51
    sget-wide v0, Lcom/google/glass/home/sync/OldItemPurger;->PURGE_OLD_ITEMS_INTERVAL:J

    return-wide v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/home/sync/OldItemPurger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimestampPref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "purge_time"

    return-object v0
.end method

.class public Lcom/google/glass/logging/UserEventService;
.super Landroid/app/Service;
.source "UserEventService.java"


# static fields
.field private static final MAX_EVENTS:I = 0x2710

.field private static final MAX_QUEUE_FILE_SIZE:J = 0x9c4000L

#the value of this static final field might be set in the static constructor
.field private static final PERF_STATS_LOGCAT_INTERVAL:J = 0x0L

.field private static final QUEUE_FILE:Ljava/lang/String; = "user_events_1"

.field private static final SERIAL_KEY:Ljava/lang/String; = "serial"

.field private static final SESSION_KEY:Ljava/lang/String; = "session"

.field private static final TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final TIME_BETWEEN_FLUSHES_MS:J = 0x0L

.field private static final USER_EVENT_PREFS:Ljava/lang/String; = "UserEventPrefs"


# instance fields
.field private battery:Lcom/google/glass/util/BatteryHelper;

.field private eventQueueFullCount:I

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private isStarted:Z

.field private lastFlushTime:J

.field private lastPerfStatsLogcatTime:J

.field private requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private serial:J

.field private sessionId:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-class v0, Lcom/google/glass/logging/UserEventService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/UserEventService;->TIME_BETWEEN_FLUSHES_MS:J

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/UserEventService;->PERF_STATS_LOGCAT_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/logging/UserEventService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/logging/UserEventService;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->readEventsFromDisk(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->addPerformanceStats(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/logging/UserEventService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->lastPerfStatsLogcatTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/glass/logging/UserEventService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/google/glass/logging/UserEventService;->lastPerfStatsLogcatTime:J

    return-wide p1
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 57
    sget-wide v0, Lcom/google/glass/logging/UserEventService;->PERF_STATS_LOGCAT_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/logging/UserEventService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->logQueued(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/logging/UserEventService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/logging/UserEventService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/glass/logging/UserEventService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private addPerformanceStats(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 10
    .parameter "userEvent"

    .prologue
    .line 334
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 335
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBoardTemperature()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBoardTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBatteryStateOfChargeUah()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryStateOfChargeUah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBatteryChargeWhenFullUah()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryChargeWhenFullUah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getReportedBatteryStateOfChargePercent()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setReportedSoc(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBatteryTemperature()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getTotalBytesSent()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setTotalBytesSent(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    .line 342
    .local v0, builder:Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 343
    .local v1, cpuFrequencyTime:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {v1}, Lcom/google/glass/logging/PerformanceUtil;->getFrequencyStats(Ljava/util/Map;)V

    .line 344
    const-wide/16 v4, 0x0

    .line 345
    .local v4, totalCpuTime:J
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 346
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->newBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->setFrequencyHz(J)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->setDurationMs(J)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->addFrequencyStat(Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 349
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 350
    goto :goto_0

    .line 351
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {v0, v4, v5}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setTotalKernelMs(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 352
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->build()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setPerformanceStats(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v6

    return-object v6
.end method

.method private addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V
    .locals 5
    .parameter "userEvent"

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->getQueueFileSize()J

    move-result-wide v0

    .line 360
    .local v0, queueFileSize:J
    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    const-wide/32 v2, 0x9c4000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 364
    :cond_0
    sget-object v2, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwing away log event because queue is full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events; file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/logging/UserEventAction;

    iget-object v2, v2, Lcom/google/glass/logging/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    iget v2, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->saveEventToDisk(Lcom/google/common/logging/GlassUserEventProto;)V

    goto :goto_0
.end method

.method private createThread(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .parameter "threadName"

    .prologue
    .line 201
    new-instance v0, Lcom/google/glass/util/PriorityThreadFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private deleteEventsFromDisk()V
    .locals 1

    .prologue
    .line 551
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 552
    const-string v0, "user_events_1"

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserEventService;->deleteFile(Ljava/lang/String;)Z

    .line 553
    return-void
.end method

.method private getQueueFileSize()J
    .locals 2

    .prologue
    .line 467
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 469
    const-string v0, "user_events_1"

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserEventService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 628
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 630
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 631
    .local v2, ni:Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 632
    .local v1, isConnected:Z
    :goto_0
    return v1

    .line 631
    .end local v1           #isConnected:Z
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method private log(Lcom/google/common/logging/GlassUserEventProto;Z)V
    .locals 2
    .parameter "userEvent"
    .parameter "isForced"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/logging/UserEventService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/logging/UserEventService$3;-><init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 302
    return-void
.end method

.method private logQueued(Z)V
    .locals 11
    .parameter "isForced"

    .prologue
    .line 386
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 389
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/logging/UserEventService;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 396
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Cannot send user events as there is no data connection."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :cond_2
    if-nez p1, :cond_3

    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v7

    if-nez v7, :cond_3

    .line 402
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Cannot send user events as the device is not plugged in, log is not forced."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_3
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 408
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "session"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    .line 409
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 410
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->sendBlockingGetSessionIdRequest()V

    .line 414
    :cond_4
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 415
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Cannot send user events as we have no session ID."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 422
    .local v3, now:J
    if-nez p1, :cond_6

    iget-wide v7, p0, Lcom/google/glass/logging/UserEventService;->lastFlushTime:J

    sub-long v7, v3, v7

    sget-wide v9, Lcom/google/glass/logging/UserEventService;->TIME_BETWEEN_FLUSHES_MS:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 423
    :cond_6
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Attempting a user event log flush."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput-wide v3, p0, Lcom/google/glass/logging/UserEventService;->lastFlushTime:J

    .line 426
    const-string v7, "ro.build.display.id"

    const-string v8, "unknown build version"

    invoke-static {v7, v8}, Lcom/google/glass/util/HiddenApiHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, softwareVersion:Ljava/lang/String;
    new-instance v7, Lcom/google/glass/logging/Util;

    invoke-direct {v7}, Lcom/google/glass/logging/Util;-><init>()V

    invoke-virtual {v7}, Lcom/google/glass/logging/Util;->getHardwareVersion()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, hardwareVersion:Ljava/lang/String;
    iget v7, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    if-lez v7, :cond_7

    .line 433
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/glass/logging/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/logging/UserEventAction;

    iget-object v8, v8, Lcom/google/glass/logging/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v7

    iget v8, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventTimeMs(J)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v6

    .line 437
    .local v6, userEvent:Lcom/google/common/logging/GlassUserEventProto;
    invoke-virtual {p0, v6}, Lcom/google/glass/logging/UserEventService;->addSerial(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v7

    invoke-direct {p0, v7, v5, v1}, Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    .line 442
    .end local v6           #userEvent:Lcom/google/common/logging/GlassUserEventProto;
    :cond_7
    if-eqz p1, :cond_8

    .line 443
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/glass/logging/UserEventAction;->FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/logging/UserEventAction;

    iget-object v8, v8, Lcom/google/glass/logging/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v6

    .line 445
    .restart local v6       #userEvent:Lcom/google/common/logging/GlassUserEventProto;
    invoke-virtual {p0, v6}, Lcom/google/glass/logging/UserEventService;->addSerial(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v7

    invoke-direct {p0, v7, v5, v1}, Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .end local v6           #userEvent:Lcom/google/common/logging/GlassUserEventProto;
    :cond_8
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    .line 451
    .local v0, e:Lcom/google/common/logging/GlassUserEventProto;
    invoke-direct {p0, v0, v5, v1}, Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .end local v0           #e:Lcom/google/common/logging/GlassUserEventProto;
    :cond_9
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->flush()V

    .line 458
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 461
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->deleteEventsFromDisk()V

    goto/16 :goto_0
.end method

.method private readEvent(Ljava/io/DataInputStream;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 3
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 158
    .local v0, length:I
    new-array v1, v0, [B

    .line 159
    .local v1, serializedEvent:[B
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 160
    invoke-static {v1}, Lcom/google/common/logging/GlassUserEventProto;->parseFrom([B)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v2

    return-object v2
.end method

.method private readEventsFromDisk(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 512
    const/4 v3, 0x0

    .line 514
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    const-string v6, "user_events_1"

    invoke-virtual {p1, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 515
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 516
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 519
    .local v1, dis:Ljava/io/DataInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 520
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassUserEventProto;>;"
    const/4 v4, 0x1

    .line 521
    .local v4, hasData:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 523
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/glass/logging/UserEventService;->readEvent(Ljava/io/DataInputStream;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 524
    :catch_0
    move-exception v2

    .line 527
    .local v2, e:Ljava/io/EOFException;
    const/4 v4, 0x0

    .line 528
    goto :goto_0

    .line 530
    .end local v2           #e:Ljava/io/EOFException;
    :cond_0
    :try_start_2
    sget-object v6, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " persisted events."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 535
    if-eqz v3, :cond_1

    .line 537
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 546
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v4           #hasData:Z
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassUserEventProto;>;"
    :cond_1
    :goto_1
    return-object v5

    .line 538
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    .restart local v4       #hasData:Z
    .restart local v5       #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassUserEventProto;>;"
    :catch_1
    move-exception v2

    .line 539
    .local v2, e:Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v7, "Could not close events file after read."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 532
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #hasData:Z
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassUserEventProto;>;"
    :catch_2
    move-exception v2

    .line 533
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    sget-object v6, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v7, "Could not read events."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 535
    if-eqz v3, :cond_2

    .line 537
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 545
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->deleteEventsFromDisk()V

    .line 546
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 538
    :catch_3
    move-exception v2

    .line 539
    sget-object v6, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v7, "Could not close events file after read."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 535
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_3

    .line 537
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 540
    :cond_3
    :goto_3
    throw v6

    .line 538
    :catch_4
    move-exception v2

    .line 539
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Could not close events file after read."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private saveEventToDisk(Lcom/google/common/logging/GlassUserEventProto;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 478
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 480
    const/4 v3, 0x0

    .line 482
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v4, "user_events_1"

    const v5, 0x8000

    invoke-virtual {p0, v4, v5}, Lcom/google/glass/logging/UserEventService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 483
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 484
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 487
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-direct {p0, p1, v1}, Lcom/google/glass/logging/UserEventService;->writeEvent(Lcom/google/common/logging/GlassUserEventProto;Ljava/io/DataOutputStream;)V

    .line 494
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    if-eqz v3, :cond_0

    .line 501
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 502
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 503
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v5, "Could not close events file after write."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 495
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 496
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v5, "Could not write events."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    if-eqz v3, :cond_0

    .line 501
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 502
    :catch_2
    move-exception v2

    .line 503
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v5, "Could not close events file after write."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 499
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 501
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 504
    :cond_1
    :goto_1
    throw v4

    .line 502
    :catch_3
    move-exception v2

    .line 503
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v6, "Could not close events file after write."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private sendBlockingGetSessionIdRequest()V
    .locals 5

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->GET_SESSION_ID:Lcom/google/glass/net/ServerConstants$Action;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v4, Lcom/google/glass/logging/UserEventService$4;

    invoke-direct {v4, p0}, Lcom/google/glass/logging/UserEventService$4;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 569
    return-void
.end method

.method private sendReportUserEventRequest(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "event"
    .parameter "softwareVersion"
    .parameter "hardwareVersion"

    .prologue
    const/4 v3, 0x0

    .line 576
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v10

    .line 581
    .local v10, requestBuilder:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 582
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setData(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventTimeMs()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 587
    invoke-virtual {v10, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setUserEventProto(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 588
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 589
    invoke-virtual {v10, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setSoftwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 590
    invoke-virtual {v10, p3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setHardwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 594
    const/4 v9, 0x0

    .line 597
    .local v9, logMetrics:Z
    const/4 v8, 0x0

    .line 598
    .local v8, isImmediate:Z
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->REPORT_USER_EVENT:Lcom/google/glass/net/ServerConstants$Action;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v2

    sget-object v4, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v5, Lcom/google/glass/logging/UserEventService$5;

    invoke-direct {v5, p0, p1}, Lcom/google/glass/logging/UserEventService$5;-><init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Z)Z

    move-result v7

    .line 619
    .local v7, dispatched:Z
    if-nez v7, :cond_1

    .line 620
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V

    .line 622
    :cond_1
    return-void
.end method

.method private writeEvent(Lcom/google/common/logging/GlassUserEventProto;Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter "event"
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->toByteArray()[B

    move-result-object v0

    .line 148
    .local v0, serializedEvent:[B
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 149
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 150
    return-void
.end method


# virtual methods
.method addSerial(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 4
    .parameter "userEvent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 307
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 310
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventSerial()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertFalse(Z)V

    .line 313
    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "serial"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    .line 318
    :cond_0
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventSerial(J)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object p1

    .line 323
    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    .line 324
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serial"

    iget-wide v2, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 171
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UserEventPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 177
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 179
    const-string v0, "UserEventBackgroundThread"

    invoke-direct {p0, v0}, Lcom/google/glass/logging/UserEventService;->createThread(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 183
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v2}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>()V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 185
    new-instance v0, Lcom/google/glass/logging/UserEventService$1;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/logging/UserEventService$1;-><init>(Lcom/google/glass/logging/UserEventService;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/glass/logging/UserEventService$1;->start()V

    .line 192
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/logging/UserEventService$2;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/UserEventService$2;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 198
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 208
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcher;->exit()V

    .line 213
    iput-object v2, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 219
    iput-object v2, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 223
    :cond_1
    iput-object v2, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    .line 224
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 228
    iget-boolean v4, p0, Lcom/google/glass/logging/UserEventService;->isStarted:Z

    if-nez v4, :cond_0

    .line 231
    iput-boolean v8, p0, Lcom/google/glass/logging/UserEventService;->isStarted:Z

    .line 232
    iget-object v4, p0, Lcom/google/glass/logging/UserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v4}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v4

    const-string v5, "boot"

    invoke-virtual {v4, v5}, Lcom/google/glass/util/BatteryHelper$BatteryState;->getUserEventActionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, data:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/logging/UserEventAction;->BATTERY_STATE:Lcom/google/glass/logging/UserEventAction;

    invoke-static {v4, v1}, Lcom/google/glass/logging/UserEventHelper;->createProto(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    .line 236
    .local v0, batteryEvent:Lcom/google/common/logging/GlassUserEventProto;
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logging user event [action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BATTERY_STATE:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0, v0, v7}, Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassUserEventProto;Z)V

    .line 241
    .end local v0           #batteryEvent:Lcom/google/common/logging/GlassUserEventProto;
    .end local v1           #data:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_3

    .line 244
    const-string v4, "force_flush"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 246
    .local v2, isFlushForced:Z
    const-string v4, "user_event"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "user_event"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/logging/GlassUserEventProto;

    .line 249
    .local v3, userEvent:Lcom/google/common/logging/GlassUserEventProto;
    invoke-virtual {v3}, Lcom/google/common/logging/GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v5, "User event logging requested with empty action."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    invoke-direct {p0, v3, v7}, Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassUserEventProto;Z)V

    .line 258
    .end local v3           #userEvent:Lcom/google/common/logging/GlassUserEventProto;
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 259
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v5, "Forcing log flush."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v4, 0x0

    invoke-direct {p0, v4, v8}, Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassUserEventProto;Z)V

    .line 263
    .end local v2           #isFlushForced:Z
    :cond_3
    return v8

    .line 253
    .restart local v2       #isFlushForced:Z
    :cond_4
    if-nez v2, :cond_2

    .line 254
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v5, "User event logging contains no user event!  Your application is too old for your logging apk."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

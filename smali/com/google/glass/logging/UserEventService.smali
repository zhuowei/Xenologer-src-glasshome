.class public Lcom/google/glass/logging/UserEventService;
.super Landroid/app/Service;
.source "UserEventService.java"


# static fields
.field private static final MAX_EVENTS:I = 0x2710

.field private static final MAX_QUEUE_FILE_SIZE:J = 0x9c4000L

.field private static final QUEUE_FILE:Ljava/lang/String; = "user_events_1"

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

.field private lastFlushTime:J

.field private requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const-class v0, Lcom/google/glass/logging/UserEventService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/UserEventService;->TIME_BETWEEN_FLUSHES_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/logging/UserEventService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/logging/UserEventService;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->readEventsFromDisk(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/logging/UserEventService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->logQueued()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/logging/UserEventService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/logging/UserEventService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    return-object p1
.end method

.method private addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V
    .locals 5
    .parameter "userEvent"

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->getQueueFileSize()J

    move-result-wide v0

    .line 229
    .local v0, queueFileSize:J
    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    const-wide/32 v2, 0x9c4000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 233
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

    .line 237
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/logging/UserEventAction;

    iget-object v2, v2, Lcom/google/glass/logging/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    iget v2, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->saveEventToDisk(Lcom/google/common/logging/GlassUserEventProto;)V

    goto :goto_0
.end method

.method private createThread(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .parameter "threadName"

    .prologue
    .line 167
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
    .line 414
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 415
    const-string v0, "user_events_1"

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserEventService;->deleteFile(Ljava/lang/String;)Z

    .line 416
    return-void
.end method

.method private getQueueFileSize()J
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 332
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
    .line 492
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 494
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 495
    .local v2, ni:Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 496
    .local v1, isConnected:Z
    :goto_0
    return v1

    .line 495
    .end local v1           #isConnected:Z
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method private log(Lcom/google/common/logging/GlassUserEventProto;)V
    .locals 2
    .parameter "userEvent"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/logging/UserEventService$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/logging/UserEventService$3;-><init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 222
    return-void
.end method

.method private logQueued()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 254
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 257
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/logging/UserEventService;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 264
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Cannot send user events as there is no data connection."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :cond_2
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v7

    if-nez v7, :cond_3

    .line 271
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Cannot send user events as the device is not plugged in."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_3
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 277
    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "UserEventPrefs"

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "session"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    .line 279
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 280
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->sendBlockingGetSessionIdRequest()V

    .line 284
    :cond_4
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 285
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Cannot send user events as we have no session ID."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 292
    .local v3, now:J
    iget-wide v7, p0, Lcom/google/glass/logging/UserEventService;->lastFlushTime:J

    sub-long v7, v3, v7

    sget-wide v9, Lcom/google/glass/logging/UserEventService;->TIME_BETWEEN_FLUSHES_MS:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 293
    iput-wide v3, p0, Lcom/google/glass/logging/UserEventService;->lastFlushTime:J

    .line 295
    const-string v7, "ro.build.display.id"

    const-string v8, "unknown build version"

    invoke-static {v7, v8}, Lcom/google/glass/util/HiddenApiHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, softwareVersion:Ljava/lang/String;
    new-instance v7, Lcom/google/glass/logging/Util;

    invoke-direct {v7}, Lcom/google/glass/logging/Util;-><init>()V

    invoke-virtual {v7}, Lcom/google/glass/logging/Util;->getHardwareVersion()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, hardwareVersion:Ljava/lang/String;
    iget v7, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    if-lez v7, :cond_6

    .line 302
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

    .line 307
    .local v6, userEvent:Lcom/google/common/logging/GlassUserEventProto;
    invoke-direct {p0, v6, v5, v1}, Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iput v11, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    .line 313
    .end local v6           #userEvent:Lcom/google/common/logging/GlassUserEventProto;
    :cond_6
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    .line 314
    .local v0, e:Lcom/google/common/logging/GlassUserEventProto;
    invoke-direct {p0, v0, v5, v1}, Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 318
    .end local v0           #e:Lcom/google/common/logging/GlassUserEventProto;
    :cond_7
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->flush()V

    .line 321
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 324
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
    .line 127
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 128
    .local v0, length:I
    new-array v1, v0, [B

    .line 129
    .local v1, serializedEvent:[B
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 130
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
    .line 373
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 375
    const/4 v3, 0x0

    .line 377
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    const-string v6, "user_events_1"

    invoke-virtual {p1, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 378
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 379
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 382
    .local v1, dis:Ljava/io/DataInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 383
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassUserEventProto;>;"
    const/4 v4, 0x1

    .line 384
    .local v4, hasData:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 386
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/glass/logging/UserEventService;->readEvent(Ljava/io/DataInputStream;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 387
    :catch_0
    move-exception v2

    .line 390
    .local v2, e:Ljava/io/EOFException;
    const/4 v4, 0x0

    .line 391
    goto :goto_0

    .line 393
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

    .line 398
    if-eqz v3, :cond_1

    .line 400
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 409
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v4           #hasData:Z
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassUserEventProto;>;"
    :cond_1
    :goto_1
    return-object v5

    .line 401
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    .restart local v4       #hasData:Z
    .restart local v5       #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassUserEventProto;>;"
    :catch_1
    move-exception v2

    .line 402
    .local v2, e:Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v7, "Could not close events file after read."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 395
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #hasData:Z
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassUserEventProto;>;"
    :catch_2
    move-exception v2

    .line 396
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    sget-object v6, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v7, "Could not read events."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    if-eqz v3, :cond_2

    .line 400
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 408
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->deleteEventsFromDisk()V

    .line 409
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 401
    :catch_3
    move-exception v2

    .line 402
    sget-object v6, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v7, "Could not close events file after read."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 398
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_3

    .line 400
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 403
    :cond_3
    :goto_3
    throw v6

    .line 401
    :catch_4
    move-exception v2

    .line 402
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
    .line 341
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 343
    const/4 v3, 0x0

    .line 345
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v4, "user_events_1"

    const v5, 0x8000

    invoke-virtual {p0, v4, v5}, Lcom/google/glass/logging/UserEventService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 346
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 347
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 350
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-direct {p0, p1, v1}, Lcom/google/glass/logging/UserEventService;->writeEvent(Lcom/google/common/logging/GlassUserEventProto;Ljava/io/DataOutputStream;)V

    .line 357
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    if-eqz v3, :cond_0

    .line 364
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 365
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 366
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v5, "Could not close events file after write."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 358
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 359
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v5, "Could not write events."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    if-eqz v3, :cond_0

    .line 364
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 365
    :catch_2
    move-exception v2

    .line 366
    sget-object v4, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v5, "Could not close events file after write."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 362
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 364
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 367
    :cond_1
    :goto_1
    throw v4

    .line 365
    :catch_3
    move-exception v2

    .line 366
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v6, "Could not close events file after write."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private sendBlockingGetSessionIdRequest()V
    .locals 5

    .prologue
    .line 420
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

    .line 432
    return-void
.end method

.method private sendReportUserEventRequest(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "event"
    .parameter "softwareVersion"
    .parameter "hardwareVersion"

    .prologue
    const/4 v3, 0x0

    .line 439
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v10

    .line 444
    .local v10, requestBuilder:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 445
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setData(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 448
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventTimeMs()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 450
    invoke-virtual {v10, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setUserEventProto(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 451
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 452
    invoke-virtual {v10, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setSoftwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 453
    invoke-virtual {v10, p3}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->setHardwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    .line 457
    const/4 v9, 0x0

    .line 461
    .local v9, logMetrics:Z
    const/4 v8, 0x0

    .line 462
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

    .line 483
    .local v7, dispatched:Z
    if-nez v7, :cond_1

    .line 484
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V

    .line 486
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
    .line 117
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->toByteArray()[B

    move-result-object v0

    .line 118
    .local v0, serializedEvent:[B
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 119
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 120
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 141
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 145
    const-string v0, "UserEventBackgroundThread"

    invoke-direct {p0, v0}, Lcom/google/glass/logging/UserEventService;->createThread(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 149
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v2}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>()V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 151
    new-instance v0, Lcom/google/glass/logging/UserEventService$1;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/logging/UserEventService$1;-><init>(Lcom/google/glass/logging/UserEventService;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/glass/logging/UserEventService$1;->start()V

    .line 158
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/logging/UserEventService$2;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/UserEventService$2;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 164
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 174
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcher;->exit()V

    .line 178
    iput-object v2, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 181
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 182
    iput-object v2, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 185
    iput-object v2, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    .line 186
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    .line 190
    if-eqz p1, :cond_0

    .line 191
    const-string v1, "user_event"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "user_event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    .line 194
    .local v0, userEvent:Lcom/google/common/logging/GlassUserEventProto;
    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    sget-object v1, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v2, "User event logging requested with empty action."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0           #userEvent:Lcom/google/common/logging/GlassUserEventProto;
    :cond_0
    :goto_0
    return v3

    .line 198
    .restart local v0       #userEvent:Lcom/google/common/logging/GlassUserEventProto;
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassUserEventProto;)V

    goto :goto_0

    .line 200
    .end local v0           #userEvent:Lcom/google/common/logging/GlassUserEventProto;
    :cond_2
    sget-object v1, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v2, "User event logging contains no user event!  Your application is too old for your logging apk."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

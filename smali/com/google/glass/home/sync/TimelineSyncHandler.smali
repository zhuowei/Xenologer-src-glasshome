.class Lcom/google/glass/home/sync/TimelineSyncHandler;
.super Lcom/google/glass/home/sync/BackOffSyncHandler;
.source "TimelineSyncHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field private final downloadSyncHelper:Lcom/google/glass/home/sync/DownloadSyncHelper;

.field private final stylesheetUpdater:Lcom/google/glass/home/sync/StylesheetUpdater;

.field private final uploadSyncHelper:Lcom/google/glass/home/sync/UploadSyncHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/sync/TimelineSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/TimelineSyncHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/sync/TimelineSyncWindowHelper;)V
    .locals 19
    .parameter "application"
    .parameter "syncWindowHelper"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/home/sync/BackOffSyncHandler;-><init>()V

    .line 35
    new-instance v1, Lcom/google/glass/timeline/AttachmentHelper;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/glass/home/sync/TimelineSyncHandler;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 36
    new-instance v4, Lcom/google/glass/util/BatteryHelper;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    .line 37
    .local v4, batteryHelper:Lcom/google/glass/util/BatteryHelper;
    new-instance v5, Lcom/google/glass/util/PowerHelper;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    .line 38
    .local v5, powerHelper:Lcom/google/glass/util/PowerHelper;
    new-instance v6, Lcom/google/glass/util/WifiHelper;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    .line 39
    .local v6, wifiHelper:Lcom/google/glass/util/WifiHelper;
    new-instance v7, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v7}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    .line 40
    .local v7, clock:Lcom/google/glass/util/Clock$Impl;
    new-instance v9, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v9}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    .line 41
    .local v9, timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    new-instance v1, Lcom/google/glass/home/sync/DownloadSyncHelper;

    invoke-static {}, Lcom/google/glass/home/timeline/TimelineNotificationManager;->getInstance()Lcom/google/glass/home/timeline/TimelineNotificationManager;

    move-result-object v8

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/glass/home/sync/DownloadSyncHelper;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/Clock;Lcom/google/glass/home/timeline/TimelineNotificationManager;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/home/sync/TimelineSyncWindowHelper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/glass/home/sync/TimelineSyncHandler;->downloadSyncHelper:Lcom/google/glass/home/sync/DownloadSyncHelper;

    .line 44
    new-instance v10, Lcom/google/glass/home/sync/UploadSyncHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/sync/TimelineSyncHandler;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move-object/from16 v12, p0

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/glass/home/sync/UploadSyncHelper;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/AttachmentHelper;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/util/Clock;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/glass/home/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/home/sync/UploadSyncHelper;

    .line 46
    new-instance v1, Lcom/google/glass/home/sync/StylesheetUpdater;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/google/glass/home/sync/StylesheetUpdater;-><init>(Lcom/google/glass/home/HomeApplication;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/glass/home/sync/TimelineSyncHandler;->stylesheetUpdater:Lcom/google/glass/home/sync/StylesheetUpdater;

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/home/sync/TimelineSyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/sync/TimelineSyncHandler;)Lcom/google/glass/home/sync/UploadSyncHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/home/sync/UploadSyncHelper;

    return-object v0
.end method


# virtual methods
.method public cancelOpportunisticUpload()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/home/sync/UploadSyncHelper;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/UploadSyncHelper;->cancelOpportunisticUpload()V

    .line 103
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/glass/home/sync/TimelineSyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public sync()V
    .locals 5

    .prologue
    .line 61
    new-instance v2, Lcom/google/glass/home/sync/SyncStats;

    invoke-direct {v2}, Lcom/google/glass/home/sync/SyncStats;-><init>()V

    .line 62
    .local v2, syncStats:Lcom/google/glass/home/sync/SyncStats;
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/glass/home/sync/TimelineSyncHandler$1;

    invoke-direct {v3, p0, v2}, Lcom/google/glass/home/sync/TimelineSyncHandler$1;-><init>(Lcom/google/glass/home/sync/TimelineSyncHandler;Lcom/google/glass/home/sync/SyncStats;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 70
    .local v1, futureUpload:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    iget-object v3, p0, Lcom/google/glass/home/sync/TimelineSyncHandler;->stylesheetUpdater:Lcom/google/glass/home/sync/StylesheetUpdater;

    invoke-virtual {v3}, Lcom/google/glass/home/sync/StylesheetUpdater;->checkForUpdates()V

    .line 74
    iget-object v3, p0, Lcom/google/glass/home/sync/TimelineSyncHandler;->downloadSyncHelper:Lcom/google/glass/home/sync/DownloadSyncHelper;

    invoke-virtual {v3, v2}, Lcom/google/glass/home/sync/DownloadSyncHelper;->sync(Lcom/google/glass/home/sync/SyncStats;)V

    .line 78
    :try_start_0
    sget-object v3, Lcom/google/glass/home/sync/TimelineSyncHandler;->TAG:Ljava/lang/String;

    const-string v4, "Timeline download complete.  Waiting for timeline upload to complete."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 80
    sget-object v3, Lcom/google/glass/home/sync/TimelineSyncHandler;->TAG:Ljava/lang/String;

    const-string v4, "Timeline upload complete."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_0
    invoke-virtual {v2}, Lcom/google/glass/home/sync/SyncStats;->log()V

    .line 90
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/google/glass/home/sync/TimelineSyncHandler;->TAG:Ljava/lang/String;

    const-string v4, "Exception waiting for timeline upload to complete -- aborting upload."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    iget-object v3, p0, Lcom/google/glass/home/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/home/sync/UploadSyncHelper;

    invoke-virtual {v3}, Lcom/google/glass/home/sync/UploadSyncHelper;->cancelUpload()V

    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    sget-object v3, Lcom/google/glass/home/sync/TimelineSyncHandler;->TAG:Ljava/lang/String;

    const-string v4, "Exception waiting for timeline upload to complete -- aborting upload."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    iget-object v3, p0, Lcom/google/glass/home/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/home/sync/UploadSyncHelper;

    invoke-virtual {v3}, Lcom/google/glass/home/sync/UploadSyncHelper;->cancelUpload()V

    goto :goto_0
.end method

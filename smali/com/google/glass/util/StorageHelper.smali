.class public Lcom/google/glass/util/StorageHelper;
.super Ljava/lang/Object;
.source "StorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/StorageHelper$State;
    }
.end annotation


# static fields
.field private static final FULL_FILTER:Landroid/content/IntentFilter; = null

.field private static final LOW_FILTER:Landroid/content/IntentFilter; = null

.field protected static final MEDIUM_THRESHOLD:F = 0.3f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final mediumThreshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/util/StorageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/StorageHelper;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/StorageHelper;->FULL_FILTER:Landroid/content/IntentFilter;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/StorageHelper;->LOW_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->calculateMediumThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/StorageHelper;->mediumThreshold:J

    .line 50
    return-void
.end method

.method public static initializeThresholds(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 59
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 60
    .local v3, resolver:Landroid/content/ContentResolver;
    sget v5, Lcom/google/glass/common/R$integer;->sys_storage_threshold_percentage:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 61
    .local v2, percent:I
    sget v5, Lcom/google/glass/common/R$integer;->sys_storage_threshold_bytes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 62
    .local v0, bytes:I
    const-string v5, "sys_storage_threshold_percentage"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    const-string v5, "sys_storage_full_threshold_bytes"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0           #bytes:I
    .end local v2           #percent:I
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #resources:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/SecurityException;
    sget-object v5, Lcom/google/glass/util/StorageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isExternalStorageMedium()Z
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/util/StorageHelper;->mediumThreshold:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateMediumThreshold()J
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, path:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v7, v7

    mul-long v3, v5, v7

    .line 145
    .local v3, totalMemory:J
    long-to-float v5, v3

    const v6, 0x3e99999a

    mul-float/2addr v5, v6

    float-to-long v5, v5

    return-wide v5

    .line 146
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #totalMemory:J
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/google/glass/util/StorageHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get stats for path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    throw v0
.end method

.method public getAvailableBytesInExternalStorage()J
    .locals 9

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, path:Ljava/lang/String;
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 76
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 77
    .local v0, bytesAvailable:J
    sget-object v5, Lcom/google/glass/util/StorageHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total size in bytes available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-wide v0

    .line 79
    .end local v0           #bytesAvailable:J
    .end local v4           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/google/glass/util/StorageHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get stats for path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    throw v2
.end method

.method public getExternalStorageState()Lcom/google/glass/util/StorageHelper$State;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/glass/util/StorageHelper;->isExternalStorageFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/google/glass/util/StorageHelper$State;->FULL:Lcom/google/glass/util/StorageHelper$State;

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/glass/util/StorageHelper;->isExternalStorageLow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/google/glass/util/StorageHelper$State;->LOW:Lcom/google/glass/util/StorageHelper$State;

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/util/StorageHelper;->isExternalStorageMedium()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lcom/google/glass/util/StorageHelper$State;->MEDIUM:Lcom/google/glass/util/StorageHelper$State;

    goto :goto_0

    .line 96
    :cond_2
    sget-object v0, Lcom/google/glass/util/StorageHelper$State;->GOOD:Lcom/google/glass/util/StorageHelper$State;

    goto :goto_0
.end method

.method public getHumanReadableByteCount()Ljava/lang/String;
    .locals 14

    .prologue
    .line 129
    const/16 v4, 0x400

    .line 130
    .local v4, unit:I
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v0

    .line 131
    .local v0, availableBytes:J
    int-to-long v5, v4

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    :goto_0
    return-object v5

    .line 134
    :cond_0
    long-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v2, v5

    .line 135
    .local v2, exp:I
    const-string v5, "KMGTPE"

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, pre:Ljava/lang/String;
    const-string v5, "%.1f %sB"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-double v8, v0

    int-to-double v10, v4

    int-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected isExternalStorageFull(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    sget-object v1, Lcom/google/glass/util/StorageHelper;->FULL_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isExternalStorageLow(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    sget-object v1, Lcom/google/glass/util/StorageHelper;->LOW_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialogIfFull()Z
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->getExternalStorageState()Lcom/google/glass/util/StorageHelper$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/StorageHelper$State;->FULL:Lcom/google/glass/util/StorageHelper$State;

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->showFullStorageDialog()V

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showFullStorageDialog()V
    .locals 5

    .prologue
    .line 119
    new-instance v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    iget-object v3, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;
    iget-object v3, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->full_storage_dialog_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->storage_dialog_sub_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, subMessage:Ljava/lang/String;
    sget v3, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->DEFAULT_ICON:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 124
    iget-object v3, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 125
    return-void
.end method

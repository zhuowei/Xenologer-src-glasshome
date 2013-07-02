.class public Lcom/google/glass/home/sync/StylesheetUpdater;
.super Ljava/lang/Object;
.source "StylesheetUpdater.java"


# static fields
.field private static final DIRECTORY:Ljava/lang/String; = "stylesheets"

.field private static final FINGERPRINT_FILENAME:Ljava/lang/String; = "base_style.css.fingerprint"

.field private static final FINGERPRINT_TEMP_FILENAME:Ljava/lang/String; = "base_style.css.fingerprint.tmp"

#the value of this static final field might be set in the static constructor
.field private static final MIN_UPDATE_INTERVAL_MS:J = 0x0L

.field private static final STYLESHEET_FILENAME:Ljava/lang/String; = "base_style.css"

.field private static final STYLESHEET_TEMP_FILENAME:Ljava/lang/String; = "base_style.css.tmp"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final application:Lcom/google/glass/home/HomeApplication;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final baseDir:Ljava/io/File;

.field private lastUpdateElapsedRealtime:J

.field private final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/home/sync/StylesheetUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/StylesheetUpdater;->TAG:Ljava/lang/String;

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/sync/StylesheetUpdater;->MIN_UPDATE_INTERVAL_MS:J

    return-void
.end method

.method constructor <init>(Lcom/google/glass/home/HomeApplication;Ljava/util/concurrent/Executor;)V
    .locals 3
    .parameter "application"
    .parameter "backgroundExecutor"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 46
    sget-wide v0, Lcom/google/glass/home/sync/StylesheetUpdater;->MIN_UPDATE_INTERVAL_MS:J

    neg-long v0, v0

    iput-wide v0, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->lastUpdateElapsedRealtime:J

    .line 49
    iput-object p1, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->application:Lcom/google/glass/home/HomeApplication;

    .line 50
    iput-object p2, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/glass/home/HomeApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stylesheets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->baseDir:Ljava/io/File;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/sync/StylesheetUpdater;Lcom/google/googlex/glass/common/proto/ResourceResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/home/sync/StylesheetUpdater;->handleResponse(Lcom/google/googlex/glass/common/proto/ResourceResponse;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/sync/StylesheetUpdater;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/home/sync/StylesheetUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getFingerprint()J
    .locals 6

    .prologue
    const-wide/16 v1, 0x0

    .line 142
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->baseDir:Ljava/io/File;

    const-string v5, "base_style.css"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    :goto_0
    return-wide v1

    .line 146
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->baseDir:Ljava/io/File;

    const-string v5, "base_style.css.fingerprint"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/primitives/Longs;->fromByteArray([B)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/home/sync/StylesheetUpdater;->TAG:Ljava/lang/String;

    const-string v4, "Could not load fingerprint: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleResponse(Lcom/google/googlex/glass/common/proto/ResourceResponse;)V
    .locals 6
    .parameter "responseProto"

    .prologue
    .line 95
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 97
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    if-ne v3, v4, :cond_1

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->lastUpdateElapsedRealtime:J

    .line 100
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->hasData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 102
    .local v0, data:[B
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getFingerprint()J

    move-result-wide v1

    .line 103
    .local v1, fingerprint:J
    sget-object v3, Lcom/google/glass/home/sync/StylesheetUpdater;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stylesheet updated! size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fingerprint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/home/sync/StylesheetUpdater;->writeStylesheet([BJ)V

    .line 111
    .end local v0           #data:[B
    .end local v1           #fingerprint:J
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v3, Lcom/google/glass/home/sync/StylesheetUpdater;->TAG:Ljava/lang/String;

    const-string v4, "No change."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_1
    sget-object v3, Lcom/google/glass/home/sync/StylesheetUpdater;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeStylesheet([BJ)V
    .locals 9
    return-void
.end method


# virtual methods
.method public checkForUpdates()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v7}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "stylesheets"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .local v0, baseDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "base_style2.css"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .local v2, cssFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 36
    .end local v0           #baseDir:Ljava/io/File;
    .end local v2           #cssFile:Ljava/io/File;
    :goto_0
    return-void

    .line 23
    .restart local v0       #baseDir:Ljava/io/File;
    .restart local v2       #cssFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 24
    iget-object v7, p0, Lcom/google/glass/home/sync/StylesheetUpdater;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v7}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "base_style.css"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 25
    .local v4, input:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 26
    .local v6, size:I
    new-array v1, v6, [B

    .line 27
    .local v1, buffer:[B
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 28
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 29
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 30
    .local v5, output:Ljava/io/FileOutputStream;
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 31
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    .end local v0           #baseDir:Ljava/io/File;
    .end local v1           #buffer:[B
    .end local v2           #cssFile:Ljava/io/File;
    .end local v4           #input:Ljava/io/InputStream;
    .end local v5           #output:Ljava/io/FileOutputStream;
    .end local v6           #size:I
    :catch_0
    move-exception v3

    .line 33
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

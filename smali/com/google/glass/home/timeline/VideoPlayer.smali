.class public Lcom/google/glass/home/timeline/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field private static final MAX_STREAM_URL_LENGTH:I = 0x10000

.field private static final PLAY_STOP_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String;

.field private static final VALID_STREAM_URL_SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final destroyedSurfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final eventLogger:Lcom/google/glass/home/timeline/VideoEventLogger;

.field private isPlayerError:Z

.field private final listener:Lcom/google/glass/home/timeline/VideoPlayerListener;

.field private playRequest:Lcom/google/glass/util/SerialAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/util/SerialAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private shouldCallStartCallback:Z

.field private shouldStartPlayback:Z

.field private final videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

.field private videoPlayer:Landroid/media/MediaPlayer;

.field private final videoView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/home/timeline/VideoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    .line 43
    const-string v0, "http"

    const-string v1, "https"

    const-string v2, "rtsp"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/VideoPlayer;->VALID_STREAM_URL_SCHEMES:Ljava/util/Set;

    .line 49
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/VideoPlayer;->PLAY_STOP_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/VideoPlayerListener;Lcom/google/googlex/glass/common/proto/Attachment;)V
    .locals 3
    .parameter "videoView"
    .parameter "bitmapFactory"
    .parameter "listener"
    .parameter "videoAttachment"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->destroyedSurfaces:Ljava/util/Set;

    .line 89
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 90
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoView:Landroid/view/TextureView;

    .line 91
    iput-object p2, p0, Lcom/google/glass/home/timeline/VideoPlayer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 92
    iput-object p3, p0, Lcom/google/glass/home/timeline/VideoPlayer;->listener:Lcom/google/glass/home/timeline/VideoPlayerListener;

    .line 93
    iput-object p4, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    .line 94
    new-instance v0, Lcom/google/glass/home/timeline/VideoEventLogger;

    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/timeline/VideoEventLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->eventLogger:Lcom/google/glass/home/timeline/VideoEventLogger;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/VideoPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->shouldCallStartCallback:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/home/timeline/VideoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/VideoPlayer;->shouldCallStartCallback:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/home/timeline/VideoPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoPlayer;->releaseDestroyedSurfaces()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoPlayerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->listener:Lcom/google/glass/home/timeline/VideoPlayerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoEventLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->eventLogger:Lcom/google/glass/home/timeline/VideoEventLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/VideoPlayer;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->destroyedSurfaces:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/view/TextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/VideoPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->shouldStartPlayback:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/home/timeline/VideoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/VideoPlayer;->shouldStartPlayback:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/home/timeline/VideoPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoPlayer;->playInternal()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/home/timeline/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/glass/home/timeline/VideoPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->isPlayerError:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/glass/home/timeline/VideoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/VideoPlayer;->isPlayerError:Z

    return p1
.end method

.method private playInternal()V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 178
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->playRequest:Lcom/google/glass/util/SerialAsyncTask;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Already playing."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Lcom/google/glass/home/timeline/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoPlayer$2;-><init>(Lcom/google/glass/home/timeline/VideoPlayer;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->playRequest:Lcom/google/glass/util/SerialAsyncTask;

    .line 291
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->playRequest:Lcom/google/glass/util/SerialAsyncTask;

    sget-object v1, Lcom/google/glass/home/timeline/VideoPlayer;->PLAY_STOP_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SerialAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static readVideoStreamUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 384
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x10000

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 386
    :cond_0
    sget-object v7, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not read file of size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as video URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    :goto_0
    return-object v6

    .line 391
    :cond_2
    :try_start_0
    const-string v7, "utf8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/google/common/io/Files;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v4

    .line 392
    .local v4, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 393
    .local v3, line:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 396
    const-string v7, "#"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 400
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 401
    .local v5, uri:Landroid/net/Uri;
    sget-object v7, Lcom/google/glass/home/timeline/VideoPlayer;->VALID_STREAM_URL_SCHEMES:Ljava/util/Set;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 402
    sget-object v7, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scheme \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' not supported for streaming."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 407
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read video stream URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method private releaseDestroyedSurfaces()V
    .locals 4

    .prologue
    .line 367
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 369
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoPlayer;->destroyedSurfaces:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 370
    .local v1, surface:Landroid/graphics/SurfaceTexture;
    sget-object v2, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v3, "Releasing surface."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 373
    .end local v1           #surface:Landroid/graphics/SurfaceTexture;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoPlayer;->destroyedSurfaces:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 374
    return-void
.end method


# virtual methods
.method public isVideoStreamUrl()Z
    .locals 2

    .prologue
    .line 101
    const-string v0, "video/vnd.google-glass.stream-url"

    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public play()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 107
    sget-object v0, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Play requested."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->eventLogger:Lcom/google/glass/home/timeline/VideoEventLogger;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/VideoEventLogger;->onPlaybackRequested()V

    .line 111
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->playRequest:Lcom/google/glass/util/SerialAsyncTask;

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 118
    iput-boolean v2, p0, Lcom/google/glass/home/timeline/VideoPlayer;->shouldCallStartCallback:Z

    .line 119
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoView:Landroid/view/TextureView;

    new-instance v1, Lcom/google/glass/home/timeline/VideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/VideoPlayer$1;-><init>(Lcom/google/glass/home/timeline/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 165
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->videoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Surface texture already available."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput-boolean v2, p0, Lcom/google/glass/home/timeline/VideoPlayer;->shouldStartPlayback:Z

    .line 168
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoPlayer;->playInternal()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->shouldStartPlayback:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 297
    sget-object v0, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Stop requested."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iput-boolean v2, p0, Lcom/google/glass/home/timeline/VideoPlayer;->shouldStartPlayback:Z

    .line 303
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->playRequest:Lcom/google/glass/util/SerialAsyncTask;

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lcom/google/glass/home/timeline/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->playRequest:Lcom/google/glass/util/SerialAsyncTask;

    invoke-virtual {v0, v2}, Lcom/google/glass/util/SerialAsyncTask;->cancel(Z)Z

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer;->playRequest:Lcom/google/glass/util/SerialAsyncTask;

    .line 313
    new-instance v0, Lcom/google/glass/home/timeline/VideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoPlayer$3;-><init>(Lcom/google/glass/home/timeline/VideoPlayer;)V

    sget-object v1, Lcom/google/glass/home/timeline/VideoPlayer;->PLAY_STOP_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/timeline/VideoPlayer$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

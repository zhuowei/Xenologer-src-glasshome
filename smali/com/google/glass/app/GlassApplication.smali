.class public Lcom/google/glass/app/GlassApplication;
.super Landroid/app/Application;
.source "GlassApplication.java"


# static fields
.field public static final CACHED_FILES_DIRECTORY:Ljava/lang/String; = null

.field private static final DCIM_DIRECTORY:Ljava/lang/String; = null

.field private static final MAX_BITMAP_CACHE_SIZE:I = 0x40

.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x2710

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x200000000L

.field private static final MAX_URL_CACHE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private connectionState:Lcom/google/glass/util/InetConnectionState;

.field private profileImageUrlCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private screenHeightPixels:I

.field private screenWidthPixels:I

.field private secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field protected ttsHelper:Lcom/google/glass/util/TtsHelper;

.field private userEventHelper:Lcom/google/glass/logging/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "glass_cached_files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/app/GlassApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;
    .locals 3
    .parameter "context"

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    .local v0, applicationContext:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/app/GlassApplication;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Lcom/google/glass/app/GlassApplication;

    .end local v0           #applicationContext:Landroid/content/Context;
    return-object v0

    .line 192
    .restart local v0       #applicationContext:Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the GlassApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clearLastTextSynthesized()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->clearLastTextSynthesized()V

    .line 214
    return-void
.end method

.method public getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method public getConnectionState()Lcom/google/glass/util/InetConnectionState;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->connectionState:Lcom/google/glass/util/InetConnectionState;

    return-object v0
.end method

.method public getLastTextSynthesized()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->getLastTextSynthesized()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMaxBitmapCacheSize()I
    .locals 1

    .prologue
    .line 282
    const/16 v0, 0x40

    return v0
.end method

.method protected getMaxUrlCacheSize()I
    .locals 1

    .prologue
    .line 291
    const/16 v0, 0x40

    return v0
.end method

.method public getProfileImageUrlCache()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->profileImageUrlCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public getScreenHeightPixels()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/google/glass/app/GlassApplication;->screenHeightPixels:I

    return v0
.end method

.method public getScreenWidthPixels()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/google/glass/app/GlassApplication;->screenWidthPixels:I

    return v0
.end method

.method public getSecondaryRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method public getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 121
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 124
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Lcom/google/glass/util/HiddenApiHelper;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 126
    new-instance v2, Lcom/google/glass/util/TtsHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/util/TtsHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    .line 129
    new-instance v2, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v2, p0}, Lcom/google/glass/sound/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 132
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 133
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/google/glass/app/GlassApplication;->screenWidthPixels:I

    .line 134
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/google/glass/app/GlassApplication;->screenHeightPixels:I

    .line 135
    new-instance v2, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/google/glass/app/GlassApplication;->screenWidthPixels:I

    iget v5, p0, Lcom/google/glass/app/GlassApplication;->screenHeightPixels:I

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getMaxBitmapCacheSize()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 138
    new-instance v2, Landroid/util/LruCache;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getMaxUrlCacheSize()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->profileImageUrlCache:Landroid/util/LruCache;

    .line 140
    new-instance v2, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 144
    new-instance v1, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>()V

    .line 145
    .local v1, httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;
    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v2, v3, v1, v7, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 147
    new-instance v2, Lcom/google/glass/app/GlassApplication$1;

    iget-object v3, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v2, p0, v3}, Lcom/google/glass/app/GlassApplication$1;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication$1;->start()V

    .line 150
    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v2, v3, v1, v7, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 152
    new-instance v2, Lcom/google/glass/app/GlassApplication$2;

    iget-object v3, p0, Lcom/google/glass/app/GlassApplication;->secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v2, p0, v3}, Lcom/google/glass/app/GlassApplication$2;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication$2;->start()V

    .line 157
    new-instance v2, Lcom/google/glass/util/InetConnectionState;

    invoke-direct {v2, p0}, Lcom/google/glass/util/InetConnectionState;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->connectionState:Lcom/google/glass/util/InetConnectionState;

    .line 160
    invoke-static {p0}, Lcom/google/glass/location/GlassLocationManager;->init(Landroid/content/Context;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupDcimFileWriter()V

    .line 166
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupCachedFilesManager()V

    .line 169
    new-instance v2, Lcom/google/glass/entity/EntityHelper;

    invoke-direct {v2}, Lcom/google/glass/entity/EntityHelper;-><init>()V

    invoke-static {v2}, Lcom/google/glass/entity/EntityHelper;->setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V

    .line 170
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/app/GlassApplication$3;

    invoke-direct {v3, p0}, Lcom/google/glass/app/GlassApplication$3;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 179
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/entity/EntityHelper;->registerSyncChanged(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method public setConnectionStateForTest(Lcom/google/glass/util/InetConnectionState;)V
    .locals 0
    .parameter "connectionState"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 254
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication;->connectionState:Lcom/google/glass/util/InetConnectionState;

    .line 255
    return-void
.end method

.method protected setupCachedFilesManager()V
    .locals 5

    .prologue
    .line 297
    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    const-wide v2, 0x200000000L

    const/16 v4, 0x2710

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V

    .line 299
    return-void
.end method

.method protected setupDcimFileWriter()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/google/glass/util/FileSaver;

    sget-object v1, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/glass/util/FileSaver;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/glass/util/FileSaver;->setSharedInstance(Lcom/google/glass/util/FileSaver;)V

    .line 305
    return-void
.end method

.method public speakText(Ljava/lang/String;)V
    .locals 1
    .parameter "textToSynthesize"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 1
    .parameter "textToSynthesize"
    .parameter "listener"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 222
    return-void
.end method

.method public stopSpeaking()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 199
    return-void
.end method

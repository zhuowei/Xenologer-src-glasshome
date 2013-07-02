.class public Lcom/google/glass/app/GlassApplication;
.super Landroid/app/Application;
.source "GlassApplication.java"


# static fields
.field public static final CACHED_FILES_DIRECTORY:Ljava/lang/String; = null

.field public static final DCIM_DIRECTORY:Ljava/lang/String; = null

.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x2710

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x200000000L

.field private static final MAX_URL_CACHE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

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
    .line 40
    const-class v0, Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->TAG:Ljava/lang/String;

    .line 50
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

    .line 55
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
    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/app/GlassApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;
    .locals 3
    .parameter "context"

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    .local v0, applicationContext:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/app/GlassApplication;

    if-eqz v1, :cond_0

    .line 183
    check-cast v0, Lcom/google/glass/app/GlassApplication;

    .end local v0           #applicationContext:Landroid/content/Context;
    return-object v0

    .line 185
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
    .line 211
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->clearLastTextSynthesized()V

    .line 212
    return-void
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 4

    .prologue
    .line 273
    new-instance v0, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/app/GlassApplication;->screenWidthPixels:I

    iget v3, p0, Lcom/google/glass/app/GlassApplication;->screenHeightPixels:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public getConnectionState()Lcom/google/glass/util/InetConnectionState;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->connectionState:Lcom/google/glass/util/InetConnectionState;

    return-object v0
.end method

.method public getLastTextSynthesized()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->getLastTextSynthesized()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 268
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->profileImageUrlCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public getScreenHeightPixels()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/google/glass/app/GlassApplication;->screenHeightPixels:I

    return v0
.end method

.method public getScreenWidthPixels()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/google/glass/app/GlassApplication;->screenWidthPixels:I

    return v0
.end method

.method public getSecondaryRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method public getTtsHelper()Lcom/google/glass/util/TtsHelper;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/google/glass/util/TtsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TtsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    return-object v0
.end method

.method public getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    return-object v0
.end method

.method public isSpeaking()Z
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 111
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 114
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Lcom/google/glass/util/HiddenApiHelper;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 118
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/google/glass/app/GlassApplication;->screenWidthPixels:I

    .line 119
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/google/glass/app/GlassApplication;->screenHeightPixels:I

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    .line 124
    new-instance v2, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v2, p0}, Lcom/google/glass/sound/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 126
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/google/glass/app/GlassApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->audioManager:Landroid/media/AudioManager;

    .line 128
    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->profileImageUrlCache:Landroid/util/LruCache;

    .line 130
    new-instance v2, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 134
    new-instance v1, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>()V

    .line 135
    .local v1, httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;
    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 137
    new-instance v2, Lcom/google/glass/app/GlassApplication$1;

    iget-object v3, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v2, p0, v3}, Lcom/google/glass/app/GlassApplication$1;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication$1;->start()V

    .line 140
    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 142
    new-instance v2, Lcom/google/glass/app/GlassApplication$2;

    iget-object v3, p0, Lcom/google/glass/app/GlassApplication;->secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v2, p0, v3}, Lcom/google/glass/app/GlassApplication$2;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication$2;->start()V

    .line 147
    new-instance v2, Lcom/google/glass/util/InetConnectionState;

    invoke-direct {v2, p0}, Lcom/google/glass/util/InetConnectionState;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->connectionState:Lcom/google/glass/util/InetConnectionState;

    .line 150
    invoke-static {p0}, Lcom/google/glass/location/GlassLocationManager;->init(Landroid/content/Context;)V

    .line 153
    invoke-static {p0}, Lcom/google/glass/maps/MapHelper;->initialize(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupDcimFileWriter()V

    .line 159
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupCachedFilesManager()V

    .line 162
    new-instance v2, Lcom/google/glass/entity/EntityHelper;

    invoke-direct {v2}, Lcom/google/glass/entity/EntityHelper;-><init>()V

    invoke-static {v2}, Lcom/google/glass/entity/EntityHelper;->setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V

    .line 163
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/app/GlassApplication$3;

    invoke-direct {v3, p0}, Lcom/google/glass/app/GlassApplication$3;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 172
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/entity/EntityHelper;->registerSyncChanged(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public setConnectionStateForTest(Lcom/google/glass/util/InetConnectionState;)V
    .locals 0
    .parameter "connectionState"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 257
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication;->connectionState:Lcom/google/glass/util/InetConnectionState;

    .line 258
    return-void
.end method

.method public setSoundManagerForTest(Lcom/google/glass/sound/SoundManager;)V
    .locals 0
    .parameter "soundManager"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 263
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 264
    return-void
.end method

.method protected setupCachedFilesManager()V
    .locals 5

    .prologue
    .line 290
    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    const-wide v2, 0x200000000L

    const/16 v4, 0x2710

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V

    .line 292
    return-void
.end method

.method protected setupDcimFileWriter()V
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lcom/google/glass/util/FileSaver;

    sget-object v1, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/glass/util/FileSaver;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/glass/util/FileSaver;->setSharedInstance(Lcom/google/glass/util/FileSaver;)V

    .line 298
    return-void
.end method

.method public speakText(Ljava/lang/String;)V
    .locals 1
    .parameter "textToSynthesize"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 1
    .parameter "textToSynthesize"
    .parameter "listener"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 220
    return-void
.end method

.method public stopSpeaking()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 197
    return-void
.end method

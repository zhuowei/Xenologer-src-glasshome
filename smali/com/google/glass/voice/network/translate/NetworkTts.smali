.class public Lcom/google/glass/voice/network/translate/NetworkTts;
.super Ljava/lang/Object;
.source "NetworkTts.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field static final CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type; = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String; = null

.field private static final REQUEST_DEFAULT_QUERY_PARAMETERS:Ljava/lang/String; = "ie=utf-8&client=glass"

.field public static final REQUEST_HOST:Ljava/lang/String; = "translate.google.com"

.field public static final REQUEST_PATH:Ljava/lang/String; = "/translate_tts"

.field private static final REQUEST_SCHEME:Ljava/lang/String; = "http"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TARGET_LANG:Ljava/lang/String; = "tl"

.field private static final TARGET_TEXT:Ljava/lang/String; = "text"

.field private static networkTtsSupportedLanguages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static player:Landroid/media/MediaPlayer;

.field private static sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;


# instance fields
.field private loader:Lcom/google/glass/util/CachedFilesManager$Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/util/CachedFilesManager$Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->AUDIO:Lcom/google/glass/util/CachedFilesManager$Type;

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 73
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sq"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "zh-CN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "zh-TW"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "eo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hi"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ht"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ku"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sw"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "cy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/HashSet;

    .line 125
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/HashSet;

    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/google/glass/voice/network/translate/NetworkTts$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/translate/NetworkTts$1;-><init>(Lcom/google/glass/voice/network/translate/NetworkTts;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->loader:Lcom/google/glass/util/CachedFilesManager$Loader;

    return-void
.end method

.method static synthetic access$000()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static formatCacheFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 313
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getHeaders()Ljava/util/Map;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 301
    .local v0, defaultHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-object v0
.end method

.method public static getNetworkTtsUri(Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;)Ljava/lang/String;
    .locals 3
    .parameter "result"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedTextLanguageDisplay()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, displayLanguage:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/voice/network/translate/Languages;->getLanguageShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, targetLanguageCode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/glass/voice/network/translate/NetworkTts;->getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"
    .parameter "languageCode"

    .prologue
    .line 264
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    :cond_0
    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network TTS not supported for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v1, 0x0

    .line 276
    :goto_0
    return-object v1

    .line 269
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 270
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "translate.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/translate_tts"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ie=utf-8&client=glass"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "tl"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 276
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/google/glass/voice/network/translate/NetworkTts;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-direct {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;

    .line 169
    :cond_0
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;

    return-object v0
.end method

.method public static isLanguageSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "languageCode"

    .prologue
    .line 292
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTtsPlaying()Z
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSharedInstance(Lcom/google/glass/voice/network/translate/NetworkTts;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 173
    sput-object p0, Lcom/google/glass/voice/network/translate/NetworkTts;->sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;

    .line 174
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mediaPlayer"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 323
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    .line 324
    return-void
.end method

.method public requestTtsAndPlay(Ljava/lang/String;)Z
    .locals 3
    .parameter "networkUri"

    .prologue
    .line 195
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->isOnSerialInstanceThread()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 198
    invoke-static {p1}, Lcom/google/glass/voice/network/translate/NetworkTts;->formatCacheFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/network/translate/NetworkTts;->streamFromCache(Ljava/lang/String;)Z

    move-result v0

    .line 199
    .local v0, gotData:Z
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/translate/NetworkTts;->streamFromServer(Ljava/lang/String;)Z

    move-result v0

    .line 204
    :cond_0
    if-nez v0, :cond_1

    .line 207
    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    const-string v2, "Could not obtain TTS from either local cache or network"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    return v0
.end method

.method public stopSpeaking()V
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->isOnSerialInstanceThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 332
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 334
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 335
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    .line 337
    :cond_0
    return-void
.end method

.method streamFromCache(Ljava/lang/String;)Z
    .locals 5
    .parameter "cacheFileName"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 219
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    sget-object v2, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v0, v2, p1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, filePath:Ljava/lang/String;
    sget-object v2, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v0, v2, p1}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    sget-object v2, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Streaming from cache file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->loader:Lcom/google/glass/util/CachedFilesManager$Loader;

    invoke-virtual {v2, v1, v3}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 225
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method streamFromServer(Ljava/lang/String;)Z
    .locals 7
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 234
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Streaming from the TTS server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher()Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v2

    .line 238
    .local v2, dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, p1, v4, v5}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v3

    .line 241
    .local v3, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v3, :cond_1

    .line 242
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    const-string v5, "No results returned from TTS server"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 243
    :cond_1
    iget v4, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v5, 0x194

    if-ne v4, v5, :cond_2

    .line 244
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    const-string v5, "TTS not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_2
    iget v4, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    .line 246
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTS Server error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_3
    iget-object v4, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v4, v4

    if-lez v4, :cond_0

    .line 248
    invoke-static {p1}, Lcom/google/glass/voice/network/translate/NetworkTts;->formatCacheFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, cacheFileName:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes of audio data to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    .line 251
    .local v1, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v5, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-static {v5}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 255
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->streamFromCache(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1
.end method

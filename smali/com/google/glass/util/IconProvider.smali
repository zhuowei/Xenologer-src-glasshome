.class public Lcom/google/glass/util/IconProvider;
.super Ljava/lang/Object;
.source "IconProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/IconProvider$Loader;,
        Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;
    }
.end annotation


# static fields
.field private static final MAX_MEMORY_CACHE_ENTRIES:I = 0x10

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final height:I

.field private final loaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/IconProvider$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/glass/util/IconProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/IconProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;II)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/util/IconProvider;->memoryCache:Landroid/util/LruCache;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/HashMap;

    .line 183
    iput-object p1, p0, Lcom/google/glass/util/IconProvider;->context:Landroid/content/Context;

    .line 184
    iput p2, p0, Lcom/google/glass/util/IconProvider;->width:I

    .line 185
    iput p3, p0, Lcom/google/glass/util/IconProvider;->height:I

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/IconProvider;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->memoryCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/IconProvider;Lcom/google/glass/util/IconProvider$Loader;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->onLoaderDone(Lcom/google/glass/util/IconProvider$Loader;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/util/IconProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/util/IconProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->loadFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/util/IconProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/glass/util/IconProvider;->width:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/util/IconProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/glass/util/IconProvider;->height:I

    return v0
.end method

.method public static buildDrawableUri(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "drawableId"

    .prologue
    .line 313
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, packageName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private download(Ljava/lang/String;)[B
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 270
    sget-object v3, Lcom/google/glass/util/IconProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x0

    .line 273
    .local v1, connection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 274
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_1

    .line 275
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 286
    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_0
    return-object v3

    .line 286
    :cond_1
    if-eqz v1, :cond_2

    .line 287
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v3, v4

    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, e:Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/google/glass/util/IconProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException downloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    if-eqz v1, :cond_3

    .line 287
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v3, v4

    goto :goto_0

    .line 281
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 283
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_2
    sget-object v3, Lcom/google/glass/util/IconProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI was invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    if-eqz v1, :cond_4

    .line 287
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v3, v4

    goto :goto_0

    .line 286
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_5

    .line 287
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v3
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "uri"

    .prologue
    .line 293
    const-wide/16 v0, 0x0

    .line 294
    .local v0, hash:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 295
    const-wide/16 v3, 0x1f

    mul-long/2addr v3, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "uri"

    .prologue
    .line 224
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 225
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/glass/util/IconProvider$1;

    invoke-direct {v5, p0}, Lcom/google/glass/util/IconProvider$1;-><init>(Lcom/google/glass/util/IconProvider;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->load(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 234
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 235
    sget-object v2, Lcom/google/glass/util/IconProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded from disk cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 237
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/google/glass/util/IconProvider;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 241
    .end local v1           #d:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .line 240
    :cond_0
    sget-object v2, Lcom/google/glass/util/IconProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load from cached files manager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "uri"

    .prologue
    .line 255
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 256
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->download(Ljava/lang/String;)[B

    move-result-object v0

    .line 257
    .local v0, data:[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 258
    :cond_0
    const/4 v1, 0x0

    .line 266
    :goto_0
    return-object v1

    .line 260
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/IconProvider;->writeToDiskCache(Ljava/lang/String;[B)V

    .line 266
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private onLoaderDone(Lcom/google/glass/util/IconProvider$Loader;)V
    .locals 2
    .parameter "loader"

    .prologue
    .line 301
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 302
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void
.end method

.method private writeToDiskCache(Ljava/lang/String;[B)V
    .locals 5
    .parameter "uri"
    .parameter "data"

    .prologue
    .line 246
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 247
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    .line 249
    .local v0, saved:Z
    if-nez v0, :cond_0

    .line 250
    sget-object v1, Lcom/google/glass/util/IconProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write to cached files manager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "iconUri"

    .prologue
    .line 197
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 199
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 220
    :cond_1
    :goto_0
    return-object v0

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/google/glass/util/IconProvider;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 205
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 210
    new-instance v2, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;

    iget v3, p0, Lcom/google/glass/util/IconProvider;->width:I

    iget v4, p0, Lcom/google/glass/util/IconProvider;->height:I

    invoke-direct {v2, v3, v4}, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;-><init>(II)V

    .line 211
    .local v2, result:Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;
    iget-object v3, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/IconProvider$Loader;

    .line 212
    .local v1, loader:Lcom/google/glass/util/IconProvider$Loader;
    if-nez v1, :cond_3

    .line 213
    new-instance v1, Lcom/google/glass/util/IconProvider$Loader;

    .end local v1           #loader:Lcom/google/glass/util/IconProvider$Loader;
    invoke-direct {v1, p0, p1}, Lcom/google/glass/util/IconProvider$Loader;-><init>(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)V

    .line 214
    .restart local v1       #loader:Lcom/google/glass/util/IconProvider$Loader;
    iget-object v3, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v1, v2}, Lcom/google/glass/util/IconProvider$Loader;->addListener(Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;)V

    .line 216
    invoke-virtual {v1}, Lcom/google/glass/util/IconProvider$Loader;->startLoad()V

    :goto_1
    move-object v0, v2

    .line 220
    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v1, v2}, Lcom/google/glass/util/IconProvider$Loader;->addListener(Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;)V

    goto :goto_1
.end method

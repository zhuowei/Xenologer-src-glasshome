.class public Lcom/google/glass/html/ResourceLoadingWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ResourceLoadingWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/ResourceLoadingWebViewClient$5;,
        Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;,
        Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_SCHEME:Ljava/lang/String; = "attachment"

.field private static final CID_SCHEME:Ljava/lang/String; = "cid"

.field private static final DATA_SCHEME:Ljava/lang/String; = "data"

.field private static final FILE_SCHEME:Ljava/lang/String; = "file"

.field private static final FILE_WHITELIST:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLASS_SCHEME:Ljava/lang/String; = "glass"

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;

.field private final item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private final loadUncachedResources:Z

.field private final mapHelper:Lcom/google/glass/maps/MapHelper;

.field private final resourceLoadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

.field private final thumbnailer:Lcom/google/glass/html/Thumbnailer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/system/glass_fonts/Roboto-Light.ttf"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/system/glass_fonts/Roboto-Thin.ttf"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/data/data/com.google.glass.home/files/stylesheets/base_style.css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->FILE_WHITELIST:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "bitmapFactory"
    .parameter "mapHelper"
    .parameter "loadUncachedResources"
    .parameter
    .parameter "resourceLoadedCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/maps/MapHelper;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p6, resourceLoadTasks:Ljava/util/List;,"Ljava/util/List<Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;>;"
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 104
    iput-object p3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 105
    iput-object p4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mapHelper:Lcom/google/glass/maps/MapHelper;

    .line 106
    iput-boolean p5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadUncachedResources:Z

    .line 107
    iput-object p6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadTasks:Ljava/util/List;

    .line 108
    iput-object p7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    .line 109
    new-instance v0, Lcom/google/glass/html/Thumbnailer;

    invoke-direct {v0}, Lcom/google/glass/html/Thumbnailer;-><init>()V

    iput-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->getMaxScreenDimension(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/Thumbnailer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/maps/MapHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mapHelper:Lcom/google/glass/maps/MapHelper;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findAttachmentForAttachmentUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, indexString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL is empty: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-object v3

    .line 287
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 293
    .local v1, index:I
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 294
    :cond_1
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index out of bounds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    .end local v1           #index:I
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse attachment index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #index:I
    :cond_2
    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v3, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    goto :goto_0
.end method

.method private findAttachmentForCidUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 303
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, cidString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL is empty: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 315
    :goto_0
    return-object v0

    .line 309
    :cond_0
    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 310
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_2
    move-object v0, v3

    .line 315
    goto :goto_0
.end method

.method private static getMaxScreenDimension(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 350
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private loadAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter "attachment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, resourceLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 228
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/CachedBitmapFactory;->cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {v2, p1, v4}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 231
    sget-object v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->$SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult:[I

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    invoke-virtual {v3, p1, v0, v4}, Lcom/google/glass/html/Thumbnailer;->createThumbnail(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/String;Z)Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 247
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/googlex/glass/common/proto/Attachment;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 254
    :goto_0
    :pswitch_0
    return-object v0

    .line 235
    .restart local v0       #path:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    invoke-virtual {v1, p1}, Lcom/google/glass/html/Thumbnailer;->getThumbnailFile(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, v1

    .line 237
    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadHttpResource(Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter "httpResourceTask"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, resourceLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-virtual {p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->checkCache()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, filePath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 267
    new-instance v1, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    return-object v0
.end method

.method private loadMap(Ljava/lang/String;Ljava/util/List;)[B
    .locals 3
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 324
    .local p2, resourceLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->newBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setUri(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v1

    .line 325
    .local v1, request:Lcom/google/glass/proto/MapRenderRequest;
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mapHelper:Lcom/google/glass/maps/MapHelper;

    invoke-virtual {v2, v1}, Lcom/google/glass/maps/MapHelper;->getCachedMapPng(Lcom/google/glass/proto/MapRenderRequest;)[B

    move-result-object v0

    .line 326
    .local v0, mapPngData:[B
    if-eqz v0, :cond_0

    .line 343
    .end local v0           #mapPngData:[B
    :goto_0
    return-object v0

    .line 329
    .restart local v0       #mapPngData:[B
    :cond_0
    new-instance v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/glass/proto/MapRenderRequest;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 21
    .parameter "view"
    .parameter "url"

    .prologue
    .line 114
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 115
    new-instance v14, Lcom/google/glass/html/Timer;

    invoke-direct {v14}, Lcom/google/glass/html/Timer;-><init>()V

    .line 119
    .local v14, timer:Lcom/google/glass/html/Timer;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v11, resourceLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v3, 0x0

    .line 122
    .local v3, byteData:[B
    const/4 v8, 0x0

    .line 123
    .local v8, filePath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 124
    .local v4, contentType:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 125
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 126
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, scheme:Ljava/lang/String;
    const-string v16, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 130
    const/16 v16, 0x0

    .line 217
    .end local v13           #scheme:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    :goto_0
    return-object v16

    .line 131
    .restart local v13       #scheme:Ljava/lang/String;
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_0
    const-string v16, "file"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 133
    sget-object v16, Lcom/google/glass/html/ResourceLoadingWebViewClient;->FILE_WHITELIST:Ljava/util/Map;

    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 134
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 135
    sget-object v16, Lcom/google/glass/html/ResourceLoadingWebViewClient;->FILE_WHITELIST:Ljava/util/Map;

    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #contentType:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 163
    .end local v13           #scheme:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    .restart local v4       #contentType:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 165
    .local v5, data:Ljava/io/InputStream;
    if-eqz v3, :cond_a

    .line 166
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v5           #data:Ljava/io/InputStream;
    .local v6, data:Ljava/io/InputStream;
    move-object v5, v6

    .line 170
    .end local v6           #data:Ljava/io/InputStream;
    .restart local v5       #data:Ljava/io/InputStream;
    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    .line 171
    if-nez v4, :cond_3

    .line 172
    invoke-static {v5}, Lcom/google/glass/html/ContentTypes;->sniff(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 174
    :cond_3
    sget-object v16, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Loaded: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v16, Landroid/webkit/WebResourceResponse;

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v7

    .line 178
    .local v7, e:Ljava/io/IOException;
    sget-object v16, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error reading: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    if-eqz v5, :cond_4

    .line 181
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    .end local v7           #e:Ljava/io/IOException;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadUncachedResources:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 190
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Runnable;

    .line 191
    .local v12, runnable:Ljava/lang/Runnable;
    new-instance v16, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 137
    .end local v5           #data:Ljava/io/InputStream;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #runnable:Ljava/lang/Runnable;
    .restart local v13       #scheme:Ljava/lang/String;
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_5
    const-string v16, "attachment"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 139
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->findAttachmentForAttachmentUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v2

    .line 140
    .local v2, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    if-eqz v2, :cond_1

    .line 141
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 144
    .end local v2           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_6
    const-string v16, "cid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 146
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->findAttachmentForCidUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v2

    .line 147
    .restart local v2       #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    if-eqz v2, :cond_1

    .line 148
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 149
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 151
    .end local v2           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_7
    const-string v16, "http"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, "https"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 153
    :cond_8
    new-instance v9, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/net/Uri;)V

    .line 154
    .local v9, httpResourceTask:Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadHttpResource(Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 155
    goto/16 :goto_1

    .end local v9           #httpResourceTask:Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;
    :cond_9
    const-string v16, "glass"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 156
    invoke-static {v15}, Lcom/google/glass/maps/MapHelper;->isGlassMapUri(Landroid/net/Uri;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadMap(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    .line 158
    const-string v4, "image/png"

    goto/16 :goto_1

    .line 167
    .end local v13           #scheme:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    .restart local v5       #data:Ljava/io/InputStream;
    :cond_a
    if-eqz v8, :cond_2

    .line 168
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v5           #data:Ljava/io/InputStream;
    .restart local v6       #data:Ljava/io/InputStream;
    move-object v5, v6

    .end local v6           #data:Ljava/io/InputStream;
    .restart local v5       #data:Ljava/io/InputStream;
    goto/16 :goto_2

    .line 216
    :cond_b
    sget-object v16, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Returning empty resource for: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v16, Landroid/webkit/WebResourceResponse;

    const-string v17, ""

    const-string v18, ""

    new-instance v19, Ljava/io/ByteArrayInputStream;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v16 .. v19}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 182
    .restart local v7       #e:Ljava/io/IOException;
    :catch_1
    move-exception v16

    goto/16 :goto_3
.end method

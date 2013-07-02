.class public abstract Lcom/google/glass/util/ImageProxyDownloadTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "ImageProxyDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIMENSION_NOT_SET:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/util/ImageProxyDownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V
    .locals 2
    .parameter "context"
    .parameter "imageUrl"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    .line 62
    iput p4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    .line 63
    iput-object p5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 64
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 65
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    .line 66
    .local v0, app:Lcom/google/glass/app/GlassApplication;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 67
    return-void
.end method

.method private downloadImage(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;)Ljava/lang/String;
    .locals 9
    .parameter "filename"
    .parameter "type"

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 133
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 135
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    .line 137
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    iget v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    if-eq v6, v7, :cond_0

    .line 138
    iget v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    .line 140
    :cond_0
    iget v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    if-eq v6, v7, :cond_1

    .line 141
    iget v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    .line 143
    :cond_1
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->setRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->setCropType(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v3

    .line 147
    .local v3, request:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    const/4 v4, 0x0

    .line 150
    .local v4, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;>;"
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v7, Lcom/google/glass/net/ServerConstants$Action;->DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v8, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v6, v7, v3, v8}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;)Lcom/google/glass/net/ProtoResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 157
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 158
    :cond_2
    sget-object v6, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    const-string v7, "No response - network may be disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-object v2

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/InterruptedException;
    sget-object v6, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    const-string v7, "Interrupted while downloading image from clientproxy"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    .line 164
    .local v5, responseProto:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    if-eq v6, v7, :cond_4

    .line 166
    sget-object v6, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_4
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 172
    :cond_5
    sget-object v6, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No image download data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/util/ImageProxyDownloadTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 178
    sget-object v6, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Image download cancelled for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    :cond_7
    iget-object v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v6, p2, p1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, filePath:Ljava/lang/String;
    sget-object v6, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saving "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " under "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v7

    invoke-virtual {v6, p2, p1, v7}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    goto/16 :goto_0
.end method

.method public static getFilename(Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v1, name:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->getNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public checkCache()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 87
    iget-object v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v2

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    iget v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    iget-object v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-static {v3, v4, v5, v6}, Lcom/google/glass/util/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, filename:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 94
    .local v1, type:Lcom/google/glass/util/CachedFilesManager$Type;
    iget-object v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v3, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v2, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "ip"

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/glass/util/ImageProxyDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;
    .locals 6
    .parameter "isCancelled"

    .prologue
    .line 115
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 116
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x0

    .line 128
    :goto_0
    return-object v2

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    iget v4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    iget-object v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-static {v2, v3, v4, v5}, Lcom/google/glass/util/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, filename:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 123
    .local v1, type:Lcom/google/glass/util/CachedFilesManager$Type;
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v2, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/ImageProxyDownloadTask;->downloadImage(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v2, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected loadContentFromCache()Ljava/lang/String;
    .locals 6

    .prologue
    .line 102
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 103
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const/4 v2, 0x0

    .line 109
    :goto_0
    return-object v2

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    iget v4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    iget-object v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-static {v2, v3, v4, v5}, Lcom/google/glass/util/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, filename:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 109
    .local v1, type:Lcom/google/glass/util/CachedFilesManager$Type;
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v2, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setImageDimensions(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 195
    iput p1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    .line 196
    iput p2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    .line 197
    return-void
.end method

.method protected setImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object p1
.end method

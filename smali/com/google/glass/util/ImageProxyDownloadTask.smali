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
    .line 22
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
    .line 55
    invoke-direct {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    .line 57
    iput p3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    .line 58
    iput p4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    .line 59
    iput-object p5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 60
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 61
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    .line 62
    .local v0, app:Lcom/google/glass/app/GlassApplication;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 63
    return-void
.end method

.method private downloadImage(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;)Ljava/lang/String;
    .locals 8
    .parameter "filename"
    .parameter "type"

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 124
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 126
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    .line 128
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    iget v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    if-eq v5, v6, :cond_0

    .line 129
    iget v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    .line 131
    :cond_0
    iget v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    if-eq v5, v6, :cond_1

    .line 132
    iget v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    .line 134
    :cond_1
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->setRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->setCropType(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v2

    .line 138
    .local v2, request:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    iget-object v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v6, Lcom/google/glass/net/ServerConstants$Action;->DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v7, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v5, v6, v2, v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v3

    .line 140
    .local v3, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;>;"
    invoke-virtual {v3}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    .line 142
    .local v4, responseProto:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;
    if-nez v4, :cond_2

    .line 143
    sget-object v5, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    const-string v6, "No response - network may be disconnected"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-object v1

    .line 147
    :cond_2
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    move-result-object v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    if-eq v5, v6, :cond_3

    .line 149
    sget-object v5, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 155
    :cond_4
    sget-object v5, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No image download data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/util/ImageProxyDownloadTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 161
    sget-object v5, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Image download cancelled for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_6
    iget-object v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v5, p2, p1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, filePath:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/util/ImageProxyDownloadTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saving "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " under "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v6

    invoke-virtual {v5, p2, p1, v6}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    goto/16 :goto_0
.end method

.method private static getFilename(Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, name:Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public checkCache()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 78
    iget-object v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v2

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    iget v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    iget-object v6, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-static {v3, v4, v5, v6}, Lcom/google/glass/util/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, filename:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 85
    .local v1, type:Lcom/google/glass/util/CachedFilesManager$Type;
    iget-object v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v3, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v2, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic loadContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/glass/util/ImageProxyDownloadTask;->loadContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadContent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 106
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 107
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const/4 v2, 0x0

    .line 119
    :goto_0
    return-object v2

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    iget v4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    iget-object v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-static {v2, v3, v4, v5}, Lcom/google/glass/util/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, filename:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 114
    .local v1, type:Lcom/google/glass/util/CachedFilesManager$Type;
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v2, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/ImageProxyDownloadTask;->downloadImage(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v2, v1, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected loadContentFromCache()Ljava/lang/String;
    .locals 6

    .prologue
    .line 93
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 94
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const/4 v2, 0x0

    .line 100
    :goto_0
    return-object v2

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    iget v4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    iget-object v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-static {v2, v3, v4, v5}, Lcom/google/glass/util/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, filename:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 100
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
    .line 178
    iput p1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    .line 179
    iput p2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    .line 180
    return-void
.end method

.method protected setImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object p1
.end method

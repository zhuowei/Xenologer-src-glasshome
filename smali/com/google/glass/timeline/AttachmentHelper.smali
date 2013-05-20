.class public Lcom/google/glass/timeline/AttachmentHelper;
.super Ljava/lang/Object;
.source "AttachmentHelper.java"


# static fields
.field public static final EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authUtils:Lcom/google/glass/util/AuthUtils;

.field private final context:Landroid/content/Context;

.field private uploadSession:Lcom/google/glass/net/upload/UploadSession;

.field private uploader:Lcom/google/glass/net/upload/ResumableUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v0, p1}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->authUtils:Lcom/google/glass/util/AuthUtils;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/AuthUtils;)V
    .locals 0
    .parameter "context"
    .parameter "authUtils"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 82
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/google/glass/timeline/AttachmentHelper;->authUtils:Lcom/google/glass/util/AuthUtils;

    .line 84
    return-void
.end method

.method private getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abortResumableInsert()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/UploadSession;->cancel()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/ResumableUploader;->abortUpload()V

    .line 259
    :cond_1
    return-void
.end method

.method public getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;Lcom/google/googlex/glass/common/proto/Attachment;)[B
    .locals 7
    .parameter "fileName"
    .parameter "type"
    .parameter "attachment"

    .prologue
    const/4 v3, 0x0

    .line 357
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 362
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, filePath:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 388
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    new-instance v4, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v4}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 390
    .end local v2           #filePath:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 366
    :cond_1
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 367
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    invoke-virtual {v0, p2, p1}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 369
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 374
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 375
    .local v1, content:Lcom/google/protobuf/ByteString;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 376
    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v4

    invoke-virtual {v0, p2, p1, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 383
    .end local v1           #content:Lcom/google/protobuf/ByteString;
    :cond_2
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #filePath:Ljava/lang/String;
    goto :goto_0

    .line 378
    .end local v2           #filePath:Ljava/lang/String;
    .restart local v1       #content:Lcom/google/protobuf/ByteString;
    :cond_3
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get attachment from server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAttachmentFromServer(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 10
    .parameter "attachmentId"

    .prologue
    const/4 v0, 0x0

    .line 270
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requesting attachment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from server."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v3

    .line 275
    .local v3, requestBuilder:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    iget-object v7, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 276
    .local v6, windowService:Landroid/view/WindowManager;
    if-eqz v6, :cond_0

    .line 277
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 278
    .local v1, display:Landroid/view/Display;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->setScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    .line 282
    .end local v1           #display:Landroid/view/Display;
    :cond_0
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v2

    .line 285
    .local v2, request:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    invoke-virtual {p0}, Lcom/google/glass/timeline/AttachmentHelper;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v7

    sget-object v8, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_GET:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v9, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v7, v8, v2, v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v4

    .line 289
    .local v4, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_2

    .line 302
    :cond_1
    :goto_0
    return-object v0

    .line 295
    :cond_2
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    .line 296
    .local v5, responseProto:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    sget-object v7, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 297
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 298
    .local v0, content:Lcom/google/protobuf/ByteString;
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Successfully get attachment from server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public insertAttachmentToServer(Ljava/lang/String;Lcom/google/protobuf/ByteString;Ljava/lang/String;J)Ljava/lang/String;
    .locals 8
    .parameter "mimeType"
    .parameter "content"
    .parameter "filename"
    .parameter "creationTime"

    .prologue
    const/4 v0, 0x0

    .line 97
    sget-object v5, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uploading attachment of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes to server, mimeType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " filename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v2

    .line 108
    .local v2, requestBuilder:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v5

    if-nez v5, :cond_0

    .line 109
    new-instance v5, Lcom/google/glass/util/SettingsSecure;

    iget-object v6, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v6, "android_id"

    invoke-virtual {v5, v6}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    .line 112
    :cond_0
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v1

    .line 115
    .local v1, request:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    invoke-virtual {p0}, Lcom/google/glass/timeline/AttachmentHelper;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v5

    sget-object v6, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_INSERT:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v7, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v5, v6, v1, v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v3

    .line 119
    .local v3, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    :cond_1
    :goto_0
    return-object v0

    .line 125
    :cond_2
    invoke-virtual {v3}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    .line 126
    .local v4, responseProto:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;
    sget-object v5, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 127
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, attachmentId:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully inserted attachment to server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getAttachmentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertAttachmentViaResumableUpload(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .parameter "mimeType"
    .parameter "file"

    .prologue
    .line 149
    new-instance v9, Lcom/google/glass/net/upload/SessionTracker;

    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/google/glass/net/upload/SessionTracker;-><init>(Landroid/content/Context;)V

    .line 150
    .local v9, tracker:Lcom/google/glass/net/upload/SessionTracker;
    invoke-virtual {v9, p2}, Lcom/google/glass/net/upload/SessionTracker;->getSessionUri(Ljava/io/File;)Ljava/net/URI;

    move-result-object v6

    .line 152
    .local v6, sessionUri:Ljava/net/URI;
    if-nez v6, :cond_0

    .line 153
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting upload of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    new-instance v0, Lcom/google/glass/net/upload/ResumableUploader;

    invoke-static {}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher()Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getResumableUploadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    iget-object v5, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/net/upload/ResumableUploader;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Ljava/net/URI;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Ljava/net/URI;)V

    iput-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/ResumableUploader;->upload()J

    move-result-wide v10

    .line 165
    .local v10, uploadedBytes:J
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully uploaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    invoke-virtual {v9, p2}, Lcom/google/glass/net/upload/SessionTracker;->clearSessionUri(Ljava/io/File;)Z

    .line 192
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/ResumableUploader;->getLastAttachmentId()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, attachmentId:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 194
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Missing attachment ID. Assuming failed upload session and starting over."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v7, 0x0

    .line 200
    .end local v7           #attachmentId:Ljava/lang/String;
    .end local v10           #uploadedBytes:J
    :goto_1
    return-object v7

    .line 156
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming upload of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    :catch_0
    move-exception v8

    .line 167
    .local v8, e:Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;
    invoke-direct {p0}, Lcom/google/glass/timeline/AttachmentHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 168
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unrecoverable exception while doing an upload -- clearing session URI"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    invoke-virtual {v9, p2}, Lcom/google/glass/net/upload/SessionTracker;->clearSessionUri(Ljava/io/File;)Z

    .line 171
    const/4 v7, 0x0

    goto :goto_1

    .line 172
    .end local v8           #e:Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;
    :catch_1
    move-exception v8

    .line 173
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Error while uploading"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/ResumableUploader;->getSessionUri()Ljava/net/URI;

    move-result-object v12

    .line 176
    .local v12, uploaderSessionUri:Ljava/net/URI;
    if-nez v12, :cond_1

    .line 177
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/timeline/AttachmentHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 180
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to upload attachment -- storing session URI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v9, p2, v12}, Lcom/google/glass/net/upload/SessionTracker;->setSessionUri(Ljava/io/File;Ljava/net/URI;)Z

    goto :goto_2

    .line 198
    .end local v8           #e:Ljava/lang/Exception;
    .end local v12           #uploaderSessionUri:Ljava/net/URI;
    .restart local v7       #attachmentId:Ljava/lang/String;
    .restart local v10       #uploadedBytes:J
    :cond_2
    sget-object v0, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New attachment ID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .parameter "mimeType"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v3, Lcom/google/glass/net/upload/SessionTracker;

    iget-object v1, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    invoke-direct {v3, v1}, Lcom/google/glass/net/upload/SessionTracker;-><init>(Landroid/content/Context;)V

    .line 217
    .local v3, tracker:Lcom/google/glass/net/upload/SessionTracker;
    new-instance v0, Lcom/google/glass/net/upload/SessionManager;

    invoke-static {}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher()Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentHelper;->authUtils:Lcom/google/glass/util/AuthUtils;

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getResumableUploadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iget-object v7, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/upload/SessionManager;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/util/AuthUtils;Lcom/google/glass/net/upload/SessionTracker;Ljava/net/URI;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 221
    .local v0, manager:Lcom/google/glass/net/upload/SessionManager;
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->init()V

    .line 223
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->isUploadSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadSession()Lcom/google/glass/net/upload/UploadSession;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    .line 225
    iget-object v1, p0, Lcom/google/glass/timeline/AttachmentHelper;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v1}, Lcom/google/glass/net/upload/UploadSession;->upload()V

    .line 228
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadResult()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v8

    .line 230
    .local v8, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v8, :cond_1

    .line 231
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Somehow we completed the upload successfully and no response was returned! BUG!"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_1
    iget-object v1, v8, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-nez v1, :cond_2

    .line 236
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Somehow we completed successfully, but the body is null! BUG!"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, v8, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public mergeAttachments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, attachments1:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    .local p2, attachments2:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v3, mergedAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 322
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 323
    .local v0, attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 327
    .local v1, attachment2:Lcom/google/googlex/glass/common/proto/Attachment;
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    if-ne v1, v4, :cond_1

    .line 321
    .end local v0           #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .restart local v0       #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v0           #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .restart local v0       #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 332
    .end local v0           #attachment1:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v1           #attachment2:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 333
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    :cond_4
    :goto_3
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 339
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->TAG:Ljava/lang/String;

    const-string v5, "Removed one instance of an empty attachment."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 334
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 335
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 341
    :cond_6
    return-object v3
.end method

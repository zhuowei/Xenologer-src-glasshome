.class public Lcom/google/glass/timeline/AttachmentUploader;
.super Ljava/lang/Object;
.source "AttachmentUploader.java"


# static fields
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
    .line 41
    const-class v0, Lcom/google/glass/timeline/AttachmentUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v0, p1}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->authUtils:Lcom/google/glass/util/AuthUtils;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/AuthUtils;)V
    .locals 0
    .parameter "context"
    .parameter "authUtils"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 69
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/google/glass/timeline/AttachmentUploader;->authUtils:Lcom/google/glass/util/AuthUtils;

    .line 71
    return-void
.end method

.method private getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

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
    .line 246
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/UploadSession;->cancel()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/ResumableUploader;->abortUpload()V

    .line 254
    :cond_1
    return-void
.end method

.method getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public insertAttachmentToServer(Ljava/lang/String;Lcom/google/protobuf/ByteString;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "mimeType"
    .parameter "content"
    .parameter "filename"
    .parameter "creationTime"
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/timeline/UploadException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 86
    sget-object v8, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uploading attachment of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes to server, mimeType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", source: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v8

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v5

    .line 98
    .local v5, requestBuilder:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v8

    if-nez v8, :cond_0

    .line 99
    new-instance v8, Lcom/google/glass/util/SettingsSecure;

    iget-object v9, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v9, "android_id"

    invoke-virtual {v8, v9}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    .line 102
    :cond_0
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v4

    .line 105
    .local v4, request:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    invoke-virtual {p0}, Lcom/google/glass/timeline/AttachmentUploader;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v8

    sget-object v9, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_INSERT:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v10, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v8, v9, v4, v10}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v6

    .line 109
    .local v6, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v8

    if-nez v8, :cond_3

    .line 110
    :cond_1
    if-nez v6, :cond_2

    sget-object v3, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 112
    .local v3, errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    :goto_0
    new-instance v8, Lcom/google/glass/timeline/UploadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed to upload."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, p1, v9}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 110
    .end local v3           #errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    :cond_2
    invoke-virtual {v6}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v3

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v6}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    .line 118
    .local v7, responseProto:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;
    sget-object v8, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 119
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getAttachmentId()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, attachmentId:Ljava/lang/String;
    sget-object v8, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully inserted attachment to server: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getAttachmentId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz v2, :cond_4

    .line 123
    return-object v2

    .line 126
    .end local v2           #attachmentId:Ljava/lang/String;
    :cond_4
    new-instance v8, Lcom/google/glass/timeline/UploadException;

    sget-object v9, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed to upload with server response code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, p1, v10}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v8
.end method

.method public insertAttachmentViaResumableUpload(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .parameter "mimeType"
    .parameter "file"

    .prologue
    .line 144
    new-instance v9, Lcom/google/glass/net/upload/SessionTracker;

    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/google/glass/net/upload/SessionTracker;-><init>(Landroid/content/Context;)V

    .line 145
    .local v9, tracker:Lcom/google/glass/net/upload/SessionTracker;
    invoke-virtual {v9, p2}, Lcom/google/glass/net/upload/SessionTracker;->getSessionUri(Ljava/io/File;)Ljava/net/URI;

    move-result-object v6

    .line 147
    .local v6, sessionUri:Ljava/net/URI;
    if-nez v6, :cond_0

    .line 148
    sget-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

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

    .line 155
    :goto_0
    new-instance v0, Lcom/google/glass/net/upload/ResumableUploader;

    invoke-static {}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher()Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getResumableUploadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    iget-object v5, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/net/upload/ResumableUploader;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Ljava/net/URI;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Ljava/net/URI;)V

    iput-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/ResumableUploader;->upload()J

    move-result-wide v10

    .line 160
    .local v10, uploadedBytes:J
    sget-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

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

    .line 185
    invoke-virtual {v9, p2}, Lcom/google/glass/net/upload/SessionTracker;->clearSessionUri(Ljava/io/File;)Z

    .line 187
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/ResumableUploader;->getLastAttachmentId()Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, attachmentId:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 189
    sget-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

    const-string v1, "Missing attachment ID. Assuming failed upload session and starting over."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v7, 0x0

    .line 195
    .end local v7           #attachmentId:Ljava/lang/String;
    .end local v10           #uploadedBytes:J
    :goto_1
    return-object v7

    .line 151
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

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

    .line 161
    :catch_0
    move-exception v8

    .line 162
    .local v8, e:Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;
    invoke-direct {p0}, Lcom/google/glass/timeline/AttachmentUploader;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 163
    sget-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

    const-string v1, "Unrecoverable exception while doing an upload -- clearing session URI"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    invoke-virtual {v9, p2}, Lcom/google/glass/net/upload/SessionTracker;->clearSessionUri(Ljava/io/File;)Z

    .line 166
    const/4 v7, 0x0

    goto :goto_1

    .line 167
    .end local v8           #e:Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;
    :catch_1
    move-exception v8

    .line 168
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

    const-string v1, "Error while uploading"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploader:Lcom/google/glass/net/upload/ResumableUploader;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/ResumableUploader;->getSessionUri()Ljava/net/URI;

    move-result-object v12

    .line 171
    .local v12, uploaderSessionUri:Ljava/net/URI;
    if-nez v12, :cond_1

    .line 172
    sget-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/timeline/AttachmentUploader;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 175
    sget-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

    const-string v1, "Failed to upload attachment -- storing session URI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v9, p2, v12}, Lcom/google/glass/net/upload/SessionTracker;->setSessionUri(Ljava/io/File;Ljava/net/URI;)Z

    goto :goto_2

    .line 193
    .end local v8           #e:Ljava/lang/Exception;
    .end local v12           #uploaderSessionUri:Ljava/net/URI;
    .restart local v7       #attachmentId:Ljava/lang/String;
    .restart local v10       #uploadedBytes:J
    :cond_2
    sget-object v0, Lcom/google/glass/timeline/AttachmentUploader;->TAG:Ljava/lang/String;

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
    .line 211
    new-instance v3, Lcom/google/glass/net/upload/SessionTracker;

    iget-object v1, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-direct {v3, v1}, Lcom/google/glass/net/upload/SessionTracker;-><init>(Landroid/content/Context;)V

    .line 212
    .local v3, tracker:Lcom/google/glass/net/upload/SessionTracker;
    new-instance v0, Lcom/google/glass/net/upload/SessionManager;

    invoke-static {}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher()Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->authUtils:Lcom/google/glass/util/AuthUtils;

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getResumableUploadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iget-object v7, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/upload/SessionManager;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/util/AuthUtils;Lcom/google/glass/net/upload/SessionTracker;Ljava/net/URI;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 216
    .local v0, manager:Lcom/google/glass/net/upload/SessionManager;
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->init()V

    .line 218
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->isUploadSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadSession()Lcom/google/glass/net/upload/UploadSession;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    .line 220
    iget-object v1, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v1}, Lcom/google/glass/net/upload/UploadSession;->upload()V

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadResult()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v8

    .line 225
    .local v8, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v8, :cond_1

    .line 226
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Somehow we completed the upload successfully and no response was returned! BUG!"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    iget-object v1, v8, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-nez v1, :cond_2

    .line 231
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Somehow we completed successfully, but the body is null! BUG!"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, v8, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.class public Lcom/google/glass/net/upload/ResumableUploader;
.super Ljava/lang/Object;
.source "ResumableUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;,
        Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;,
        Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;
    }
.end annotation


# static fields
.field static final CX_GOOG_UPLOAD_COMMAND:Ljava/lang/String; = "X-Goog-Upload-Command"

.field static final CX_GOOG_UPLOAD_CONTENT_LENGTH:Ljava/lang/String; = "X-Goog-Upload-Content-Length"

.field static final CX_GOOG_UPLOAD_CONTENT_TYPE:Ljava/lang/String; = "X-Goog-Upload-Content-Type"

.field static final CX_GOOG_UPLOAD_OFFSET:Ljava/lang/String; = "X-Goog-Upload-Offset"

.field static final CX_GOOG_UPLOAD_PROTOCOL:Ljava/lang/String; = "X-Goog-Upload-Protocol"

.field static final FINALIZED_SESSION:J = -0x2L

.field static final INVALID_OR_MISSING_SESSION:J = -0x1L

.field static final SX_GOOG_UPLOAD_SIZE_RECEIVED:Ljava/lang/String; = "X-Goog-Upload-Size-Received"

.field static final SX_GOOG_UPLOAD_STATUS:Ljava/lang/String; = "X-Goog-Upload-Status"

.field static final SX_GOOG_UPLOAD_URL:Ljava/lang/String; = "X-Goog-Upload-URL"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authUtils:Lcom/google/glass/util/AuthUtils;

.field private final baseUploadUri:Ljava/net/URI;

.field private context:Landroid/content/Context;

.field private currentRequest:Lcom/google/glass/net/PendingHttpRequest;

.field private deviceId:Ljava/lang/String;

.field private dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private final fileMimeType:Ljava/lang/String;

.field private final fileToUpload:Ljava/io/File;

.field private lastAttachmentId:Ljava/lang/String;

.field private sessionUri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/net/upload/ResumableUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/HttpRequestDispatcher;Ljava/net/URI;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Ljava/net/URI;)V
    .locals 1
    .parameter "dispatcher"
    .parameter "baseUploadUri"
    .parameter "fileToUpload"
    .parameter "fileMimeType"
    .parameter "context"
    .parameter "sessionUri"

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/google/glass/net/upload/ResumableUploader;->baseUploadUri:Ljava/net/URI;

    .line 204
    iput-object p3, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileToUpload:Ljava/io/File;

    .line 205
    iput-object p4, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileMimeType:Ljava/lang/String;

    .line 206
    iput-object p6, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    .line 207
    iput-object p5, p0, Lcom/google/glass/net/upload/ResumableUploader;->context:Landroid/content/Context;

    .line 208
    iput-object p1, p0, Lcom/google/glass/net/upload/ResumableUploader;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 210
    new-instance v0, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v0, p5}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/net/upload/ResumableUploader;->setAuthUtils(Lcom/google/glass/util/AuthUtils;)V

    .line 211
    return-void
.end method

.method private createHeaders(Ljava/util/Map;Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, authHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 586
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 587
    const-string v1, "X-Goog-Upload-Command"

    invoke-virtual {p2}, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->toCommandString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v1, "X-Goog-Last-Modified"

    iget-object v2, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileToUpload:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v1, "X-Goog-Upload-File-Name"

    iget-object v2, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileToUpload:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v1, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->START:Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;

    if-ne p2, v1, :cond_0

    .line 595
    const-string v1, "X-Goog-Upload-Protocol"

    const-string v2, "resumable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v1, "X-Goog-Upload-Content-Type"

    iget-object v2, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileMimeType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_0
    return-object v0
.end method

.method private getUploadStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 613
    const/4 v2, 0x0

    .line 616
    .local v2, headerValue:Ljava/lang/String;
    :try_start_0
    iget-object v3, p1, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v5, "X-Goog-Upload-Status"

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 617
    if-nez v2, :cond_0

    .line 618
    sget-object v3, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    const-string v5, "Upload server didn\'t give us an upload status!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 627
    :goto_0
    return-object v3

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROTOCOL FAILURE! Upload server returned a status we don\'t recognize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 624
    goto :goto_0

    .line 627
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-class v3, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    goto :goto_0
.end method


# virtual methods
.method public abortUpload()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/net/upload/ResumableUploader;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/glass/net/upload/ResumableUploader;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->cancel()V

    .line 239
    :cond_0
    return-void
.end method

.method doUpload(Ljava/util/Map;J)Z
    .locals 12
    .parameter
    .parameter "offset"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 529
    .local p1, authHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doing upload via PUT to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-object v0, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->UPLOAD:Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/net/upload/ResumableUploader;->createHeaders(Ljava/util/Map;Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;)Ljava/util/Map;

    move-result-object v2

    .line 532
    .local v2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "X-Goog-Upload-Offset"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/google/glass/net/upload/ResumableUploader;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v1, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileToUpload:Ljava/io/File;

    iget-object v4, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileMimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileToUpload:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long v7, v5, p2

    move-wide v5, p2

    invoke-interface/range {v0 .. v8}, Lcom/google/glass/net/HttpRequestDispatcher;->putWithFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;JJ)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/ResumableUploader;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    .line 536
    iget-object v0, p0, Lcom/google/glass/net/upload/ResumableUploader;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v10

    .line 538
    .local v10, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    iget-object v0, p0, Lcom/google/glass/net/upload/ResumableUploader;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Lorg/apache/http/client/ClientProtocolException;

    const-string v1, "Upload was cancelled."

    invoke-direct {v0, v1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    if-nez v10, :cond_1

    .line 543
    new-instance v0, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;

    const-string v1, "Connection failed or no response received from server!"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;-><init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1
    iget v9, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    .line 547
    .local v9, httpStatusCode:I
    const/16 v0, 0x190

    if-lt v9, v0, :cond_4

    const/16 v0, 0x1f4

    if-ge v9, v0, :cond_4

    .line 548
    const/16 v0, 0x193

    if-eq v9, v0, :cond_2

    const/16 v0, 0x191

    if-ne v9, v0, :cond_3

    .line 550
    :cond_2
    new-instance v0, Lorg/apache/http/auth/InvalidCredentialsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad credentials or credentials expired. Last response was: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_3
    new-instance v0, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status returned was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " instead of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "200 OK. Last response was: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;-><init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_4
    invoke-direct {p0, v10}, Lcom/google/glass/net/upload/ResumableUploader;->getUploadStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    move-result-object v11

    .line 560
    .local v11, status:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;
    sget-object v0, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;->FINAL:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    if-ne v0, v11, :cond_5

    if-eqz v10, :cond_5

    iget-object v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v0, :cond_5

    .line 561
    new-instance v0, Ljava/lang/String;

    iget-object v1, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/google/glass/net/upload/ResumableUploader;->lastAttachmentId:Ljava/lang/String;

    .line 562
    sget-object v0, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    const-string v1, "Upload completed successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v0, 0x1

    .line 570
    :goto_0
    return v0

    .line 566
    :cond_5
    sget-object v0, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;->ACTIVE:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    if-ne v0, v11, :cond_6

    const/16 v0, 0xc8

    if-ne v0, v9, :cond_6

    .line 567
    sget-object v0, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    const-string v1, "Upload did not complete, but uploaded bytes were received -- returning false."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastAttachmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/glass/net/upload/ResumableUploader;->lastAttachmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    return-object v0
.end method

.method queryForSessionOffset(Ljava/util/Map;)J
    .locals 10
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .local p1, authHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, -0x1

    .line 365
    iget-object v7, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-wide v0

    .line 369
    :cond_1
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;

    invoke-direct {p0, p1, v7}, Lcom/google/glass/net/upload/ResumableUploader;->createHeaders(Ljava/util/Map;Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;)Ljava/util/Map;

    move-result-object v4

    .line 371
    .local v4, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/glass/net/upload/ResumableUploader;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v8, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Lcom/google/glass/net/HttpRequestDispatcher;->put(Ljava/lang/String;Ljava/util/Map;)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v5

    .line 373
    .local v5, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v5, :cond_2

    .line 374
    new-instance v7, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;

    const-string v8, "Connection failed or no response received from server!"

    invoke-direct {v7, p0, v8}, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;-><init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;)V

    throw v7

    .line 377
    :cond_2
    iget v3, v5, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    .line 378
    .local v3, httpStatusCode:I
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query for session status returned "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0, v5}, Lcom/google/glass/net/upload/ResumableUploader;->getUploadStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    move-result-object v6

    .line 381
    .local v6, status:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Session status is currently set to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/16 v7, 0x190

    if-lt v3, v7, :cond_6

    const/16 v7, 0x1f4

    if-ge v3, v7, :cond_6

    .line 387
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;->FINAL:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    if-ne v6, v7, :cond_3

    .line 388
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    const-string v8, "Received \'final\' and a 400 series error when querying for session status."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :cond_3
    const/16 v7, 0x193

    if-eq v3, v7, :cond_4

    const/16 v7, 0x191

    if-ne v3, v7, :cond_5

    .line 394
    :cond_4
    new-instance v7, Lorg/apache/http/auth/InvalidCredentialsException;

    const-string v8, "Bad credentials or credentials expired."

    invoke-direct {v7, v8}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 397
    :cond_5
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No previous session was established with the URL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    :cond_6
    const/16 v7, 0xc8

    if-ne v3, v7, :cond_b

    .line 405
    if-nez v6, :cond_7

    .line 406
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Assuming no session with URL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exists since there\'s no "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "valid status."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 411
    :cond_7
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;->CANCELLED:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    if-ne v6, v7, :cond_8

    .line 412
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Session at URL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was previously cancelled."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 416
    :cond_8
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;->FINAL:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    if-ne v6, v7, :cond_9

    if-eqz v5, :cond_9

    iget-object v7, v5, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v7, :cond_9

    .line 417
    new-instance v7, Ljava/lang/String;

    iget-object v8, v5, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v7, p0, Lcom/google/glass/net/upload/ResumableUploader;->lastAttachmentId:Ljava/lang/String;

    .line 418
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received \'final\' when querying and found attachment ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/net/upload/ResumableUploader;->lastAttachmentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-wide/16 v0, -0x2

    goto/16 :goto_0

    .line 422
    :cond_9
    iget-object v7, v5, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v8, "X-Goog-Upload-Size-Received"

    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 423
    iget-object v7, v5, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v8, "X-Goog-Upload-Size-Received"

    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 424
    .local v2, headerValue:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 426
    .local v0, bytesReceived:J
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upstream server got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes from a previous session."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 430
    .end local v0           #bytesReceived:J
    .end local v2           #headerValue:Ljava/lang/String;
    :cond_a
    sget-object v7, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    const-string v8, "Upstream server never got any bytes -- assuming zero offset."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    .line 434
    :cond_b
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Couldn\'t get session offset"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method setAuthUtils(Lcom/google/glass/util/AuthUtils;)V
    .locals 0
    .parameter "authUtils"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/glass/net/upload/ResumableUploader;->authUtils:Lcom/google/glass/util/AuthUtils;

    .line 216
    return-void
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/glass/net/upload/ResumableUploader;->deviceId:Ljava/lang/String;

    .line 221
    return-void
.end method

.method startNewSession(Ljava/util/Map;)Ljava/net/URI;
    .locals 10
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/InvalidCredentialsException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    .local p1, authHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->START:Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;

    invoke-direct {p0, p1, v6}, Lcom/google/glass/net/upload/ResumableUploader;->createHeaders(Ljava/util/Map;Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;)Ljava/util/Map;

    move-result-object v2

    .line 457
    .local v2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "X-Goog-Upload-Content-Length"

    iget-object v7, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileToUpload:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/glass/net/upload/ResumableUploader;->baseUploadUri:Ljava/net/URI;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileToUpload:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, startUri:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/net/upload/ResumableUploader;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v2, v7}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v3

    .line 462
    .local v3, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v3, :cond_0

    .line 463
    new-instance v6, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;

    const-string v7, "Connection failed or no response received from server!"

    invoke-direct {v6, p0, v7}, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;-><init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;)V

    throw v6

    .line 466
    :cond_0
    iget v1, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    .line 467
    .local v1, httpStatusCode:I
    invoke-direct {p0, v3}, Lcom/google/glass/net/upload/ResumableUploader;->getUploadStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    move-result-object v5

    .line 469
    .local v5, status:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;
    sget-object v6, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query to start new session returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v6, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;->FINAL:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    if-ne v5, v6, :cond_1

    .line 473
    new-instance v6, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to start a new session, but server replied with a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " response and with a session status of final!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;-><init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;)V

    throw v6

    .line 477
    :cond_1
    sget-object v6, Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;->ACTIVE:Lcom/google/glass/net/upload/ResumableUploader$UploadStatus;

    if-ne v5, v6, :cond_3

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_3

    .line 479
    iget-object v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v7, "X-Goog-Upload-URL"

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 480
    new-instance v6, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;

    const-string v7, "No X-Goog-Upload-URL present in successful session start response!"

    invoke-direct {v6, p0, v7}, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;-><init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;)V

    throw v6

    .line 485
    :cond_2
    :try_start_0
    new-instance v7, Ljava/net/URI;

    iget-object v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v8, "X-Goog-Upload-URL"

    invoke-virtual {v6, v8}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    iget-object v6, p0, Lcom/google/glass/net/upload/ResumableUploader;->sessionUri:Ljava/net/URI;

    return-object v6

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v7, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "X-Goog-Upload-URL didn\'t contain a valid URI?! sessionUri contained "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v9, "X-Goog-Upload-URL"

    invoke-virtual {v6, v9}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, p0, v6, v0}, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;-><init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 493
    .end local v0           #e:Ljava/net/URISyntaxException;
    :cond_3
    const/16 v6, 0x190

    if-lt v1, v6, :cond_6

    const/16 v6, 0x1f4

    if-ge v1, v6, :cond_6

    .line 494
    const/16 v6, 0x193

    if-eq v1, v6, :cond_4

    const/16 v6, 0x191

    if-ne v1, v6, :cond_5

    .line 496
    :cond_4
    new-instance v6, Lorg/apache/http/auth/InvalidCredentialsException;

    const-string v7, "Bad credentials or credentials expired."

    invoke-direct {v6, v7}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 499
    :cond_5
    new-instance v6, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got a 400 series error ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "can\'t retry since we don\'t know what to change!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;-><init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;)V

    throw v6

    .line 503
    :cond_6
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Couldn\'t start new session"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public upload()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;,
            Lorg/apache/http/auth/InvalidCredentialsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x1

    const-wide/16 v8, -0x2

    .line 281
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 284
    iget-object v10, p0, Lcom/google/glass/net/upload/ResumableUploader;->deviceId:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 285
    new-instance v10, Lcom/google/glass/util/SettingsSecure;

    iget-object v11, p0, Lcom/google/glass/net/upload/ResumableUploader;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v11, "android_id"

    invoke-virtual {v10, v11}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/glass/net/upload/ResumableUploader;->setDeviceId(Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v10, p0, Lcom/google/glass/net/upload/ResumableUploader;->authUtils:Lcom/google/glass/util/AuthUtils;

    invoke-virtual {v10}, Lcom/google/glass/util/AuthUtils;->createAuthHeaders()Ljava/util/Map;

    move-result-object v0

    .line 290
    .local v0, authHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 291
    new-instance v8, Lorg/apache/http/auth/InvalidCredentialsException;

    const-string v9, "Unable to create auth headers."

    invoke-direct {v8, v9}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 294
    :cond_1
    iget-object v10, p0, Lcom/google/glass/net/upload/ResumableUploader;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v7

    .line 295
    .local v7, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    invoke-virtual {p0, v0}, Lcom/google/glass/net/upload/ResumableUploader;->queryForSessionOffset(Ljava/util/Map;)J

    move-result-wide v4

    .line 296
    .local v4, offset:J
    cmp-long v10, v4, v12

    if-nez v10, :cond_3

    .line 300
    const-wide/16 v4, 0x0

    .line 303
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/net/upload/ResumableUploader;->startNewSession(Ljava/util/Map;)Ljava/net/URI;
    :try_end_0
    .catch Lorg/apache/http/auth/InvalidCredentialsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    sget-object v10, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v7, v10}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 323
    :goto_1
    invoke-virtual {p0, v0, v4, v5}, Lcom/google/glass/net/upload/ResumableUploader;->doUpload(Ljava/util/Map;J)Z

    move-result v6

    .line 324
    .local v6, uploadFinalized:Z
    invoke-virtual {p0, v0}, Lcom/google/glass/net/upload/ResumableUploader;->queryForSessionOffset(Ljava/util/Map;)J

    move-result-wide v2

    .line 326
    .local v2, newOffset:J
    if-nez v6, :cond_2

    cmp-long v8, v8, v2

    if-nez v8, :cond_5

    .line 327
    :cond_2
    sget-object v8, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v7, v8}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 328
    sget-object v8, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upload of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/glass/net/upload/ResumableUploader;->fileToUpload:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " completed -- uploaded "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v2           #newOffset:J
    .end local v6           #uploadFinalized:Z
    :goto_2
    return-wide v2

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, e:Lorg/apache/http/auth/InvalidCredentialsException;
    iget-object v10, p0, Lcom/google/glass/net/upload/ResumableUploader;->authUtils:Lcom/google/glass/util/AuthUtils;

    invoke-virtual {v10}, Lcom/google/glass/util/AuthUtils;->invalidateAuthToken()V

    .line 306
    iget-object v10, p0, Lcom/google/glass/net/upload/ResumableUploader;->authUtils:Lcom/google/glass/util/AuthUtils;

    invoke-virtual {v10}, Lcom/google/glass/util/AuthUtils;->createAuthHeaders()Ljava/util/Map;

    move-result-object v0

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/glass/net/upload/ResumableUploader;->startNewSession(Ljava/util/Map;)Ljava/net/URI;

    goto :goto_0

    .line 314
    .end local v1           #e:Lorg/apache/http/auth/InvalidCredentialsException;
    :cond_3
    cmp-long v10, v4, v8

    if-nez v10, :cond_4

    .line 317
    sget-object v10, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    const-string v11, "Trying to resume a finalize session"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v8

    .line 318
    goto :goto_2

    .line 320
    :cond_4
    sget-object v10, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v7, v10}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    goto :goto_1

    .line 332
    .restart local v2       #newOffset:J
    .restart local v6       #uploadFinalized:Z
    :cond_5
    cmp-long v8, v2, v12

    if-nez v8, :cond_6

    .line 333
    sget-object v8, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    const-string v9, "Upload session went invalid in the middle of an upload!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v8, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;

    const-string v9, "Upload session invalidated in the middle of upload!"

    invoke-direct {v8, p0, v9}, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;-><init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;)V

    throw v8

    .line 337
    :cond_6
    sget-object v8, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upload did not finalize -- attempting to finish by retrying at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    cmp-long v8, v4, v2

    if-nez v8, :cond_7

    .line 340
    sget-object v8, Lcom/google/glass/net/upload/ResumableUploader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upload progress seems stalled -- stuck at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_7
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Failed to perform upload"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

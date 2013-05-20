.class public Lcom/google/glass/net/upload/UploadSession;
.super Ljava/lang/Object;
.source "UploadSession.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authUtils:Lcom/google/glass/util/AuthUtils;

.field private currentRequest:Lcom/google/glass/net/PendingHttpRequest;

.field private final dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private final fileToUpload:Ljava/io/File;

.field private final logTag:Ljava/lang/String;

.field private final manager:Lcom/google/glass/net/upload/SessionManager;

.field private final mimeType:Ljava/lang/String;

.field private final offset:J

.field private final uploadUri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/UploadSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/util/AuthUtils;Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/net/upload/SessionManager;Ljava/net/URI;Ljava/io/File;JLjava/lang/String;)V
    .locals 2
    .parameter "authUtils"
    .parameter "dispatcher"
    .parameter "manager"
    .parameter "uploadUri"
    .parameter "fileToUpload"
    .parameter "offset"
    .parameter "mimeType"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/glass/net/upload/UploadSession;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logTag:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/google/glass/net/upload/UploadSession;->authUtils:Lcom/google/glass/util/AuthUtils;

    .line 54
    iput-object p2, p0, Lcom/google/glass/net/upload/UploadSession;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 55
    iput-object p3, p0, Lcom/google/glass/net/upload/UploadSession;->manager:Lcom/google/glass/net/upload/SessionManager;

    .line 57
    iput-object p4, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    .line 58
    iput-object p5, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    .line 59
    iput-object p8, p0, Lcom/google/glass/net/upload/UploadSession;->mimeType:Ljava/lang/String;

    .line 60
    iput-wide p6, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    .line 61
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logTag:Ljava/lang/String;

    const-string v1, "Cancel requested -- breaking upload."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->cancel()V

    .line 124
    return-void
.end method

.method getOffset()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 69
    iget-wide v0, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    return-wide v0
.end method

.method public upload()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 75
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->authUtils:Lcom/google/glass/util/AuthUtils;

    sget-object v1, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->UPLOAD:Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;

    iget-object v3, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    invoke-static {v0, v1, v3}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/util/AuthUtils;Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;Ljava/io/File;)Ljava/util/Map;

    move-result-object v9

    .line 77
    .local v9, baseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 78
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "X-Goog-Upload-Offset"

    iget-wide v3, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-interface {v2, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading file via PUT for session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    iget-object v4, p0, Lcom/google/glass/net/upload/UploadSession;->mimeType:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    iget-object v7, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-wide v11, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    sub-long/2addr v7, v11

    invoke-interface/range {v0 .. v8}, Lcom/google/glass/net/HttpRequestDispatcher;->putWithFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;JJ)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    .line 85
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v10

    .line 87
    .local v10, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Upload was cancelled."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    if-nez v10, :cond_1

    .line 92
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Connection failed or no response received from server!"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iget v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v1, 0x193

    if-eq v0, v1, :cond_2

    iget v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_3

    .line 98
    :cond_2
    new-instance v0, Lorg/apache/http/auth/InvalidCredentialsException;

    const-string v1, "Bad credentials or credentials expired."

    invoke-direct {v0, v1}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    iget v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    .line 102
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scotty returned with an unexpected status code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_4
    iget-object v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "X-Goog-Upload-Status"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scotty did not respond with an upload status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_5
    invoke-static {v10}, Lcom/google/glass/net/upload/ScottyHelper;->getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-eq v0, v1, :cond_6

    .line 110
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scotty did not finalize our upload session as requested: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_6
    iget-object v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v0, :cond_7

    iget-object v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v0, v0

    if-nez v0, :cond_8

    .line 115
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client proxy did not respond with an upload id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->manager:Lcom/google/glass/net/upload/SessionManager;

    invoke-virtual {v0, v10}, Lcom/google/glass/net/upload/SessionManager;->onUploadSuccess(Lcom/google/glass/net/SimplifiedHttpResponse;)V

    .line 119
    return-void
.end method

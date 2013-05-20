.class public Lcom/google/glass/net/upload/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authUtils:Lcom/google/glass/util/AuthUtils;

.field private final baseUploadUri:Ljava/net/URI;

.field private final context:Landroid/content/Context;

.field private final dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private final fileMimeType:Ljava/lang/String;

.field private final fileToUpload:Ljava/io/File;

.field private lastOffset:J

.field private final logTag:Ljava/lang/String;

.field private final sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

.field private sessionUri:Ljava/net/URI;

.field private uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/google/glass/net/upload/SessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/SessionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/util/AuthUtils;Lcom/google/glass/net/upload/SessionTracker;Ljava/net/URI;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "dispatcher"
    .parameter "authUtils"
    .parameter "sessionTracker"
    .parameter "baseUploadUri"
    .parameter "fileToUpload"
    .parameter "fileMimeType"
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/glass/net/upload/SessionManager;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->logTag:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/google/glass/net/upload/SessionManager;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 75
    iput-object p2, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/util/AuthUtils;

    .line 76
    iput-object p3, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    .line 77
    iput-object p4, p0, Lcom/google/glass/net/upload/SessionManager;->baseUploadUri:Ljava/net/URI;

    .line 78
    iput-object p5, p0, Lcom/google/glass/net/upload/SessionManager;->fileToUpload:Ljava/io/File;

    .line 79
    iput-object p6, p0, Lcom/google/glass/net/upload/SessionManager;->fileMimeType:Ljava/lang/String;

    .line 80
    iput-object p7, p0, Lcom/google/glass/net/upload/SessionManager;->context:Landroid/content/Context;

    .line 81
    return-void
.end method


# virtual methods
.method establishNewSession()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->fileToUpload:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/google/glass/net/upload/SessionTracker;->clearSessionUri(Ljava/io/File;)Z

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 231
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/glass/net/upload/SessionManager;->lastOffset:J

    .line 233
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->logTag:Ljava/lang/String;

    const-string v2, "Establishing new session."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v1, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->START:Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;

    invoke-virtual {p0, v1}, Lcom/google/glass/net/upload/SessionManager;->makeRequest(Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v0

    .line 236
    .local v0, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    invoke-static {v0}, Lcom/google/glass/net/upload/ScottyHelper;->getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->ACTIVE:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-eq v1, v2, :cond_0

    .line 237
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scotty didn\'t return a state of ACTIVE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_0
    iget-object v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v2, "X-Goog-Upload-URL"

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scotty didn\'t tell us where to upload the file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_1
    iget-object v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v2, "X-Goog-Upload-URL"

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 243
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session established at URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->fileToUpload:Ljava/io/File;

    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/net/upload/SessionTracker;->setSessionUri(Ljava/io/File;Ljava/net/URI;)Z

    .line 246
    return-void
.end method

.method public getUploadResult()Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    return-object v0
.end method

.method public getUploadSession()Lcom/google/glass/net/upload/UploadSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/google/glass/net/upload/SessionManager;->establishNewSession()V

    .line 254
    :cond_0
    new-instance v0, Lcom/google/glass/net/upload/UploadSession;

    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/util/AuthUtils;

    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    iget-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->fileToUpload:Ljava/io/File;

    iget-wide v6, p0, Lcom/google/glass/net/upload/SessionManager;->lastOffset:J

    iget-object v8, p0, Lcom/google/glass/net/upload/SessionManager;->fileMimeType:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/net/upload/UploadSession;-><init>(Lcom/google/glass/util/AuthUtils;Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/net/upload/SessionManager;Ljava/net/URI;Ljava/io/File;JLjava/lang/String;)V

    return-object v0
.end method

.method public init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 107
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/glass/net/upload/SessionManager;->lastOffset:J

    .line 108
    iput-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    .line 110
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->fileToUpload:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/google/glass/net/upload/SessionTracker;->getSessionUri(Ljava/io/File;)Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 112
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logTag:Ljava/lang/String;

    const-string v3, "Session not previously established for -- will establish a new session."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v2, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;

    invoke-virtual {p0, v2}, Lcom/google/glass/net/upload/SessionManager;->makeRequest(Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v0

    .line 119
    .local v0, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    iget v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v3, 0x194

    if-ne v2, v3, :cond_1

    .line 120
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scotty has no knowledge of session at URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- will establish a new session."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v0}, Lcom/google/glass/net/upload/ScottyHelper;->getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-result-object v1

    .line 127
    .local v1, sessionStatus:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->CANCELLED:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-ne v1, v2, :cond_4

    .line 128
    :cond_2
    iget-object v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v2, v2

    if-lez v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous session is in status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and the body is populated."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    goto :goto_0

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous session is in status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and no body was received -- will establish a new session."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object v5, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    goto/16 :goto_0

    .line 141
    :cond_4
    iget-object v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v3, "X-Goog-Upload-Size-Received"

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 142
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session is ACTIVE, but no bytes received header found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionManager;->logTag:Ljava/lang/String;

    const-string v3, "Previous session verified -- will re-use existing session."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v3, "X-Goog-Upload-Size-Received"

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/net/upload/SessionManager;->lastOffset:J

    goto/16 :goto_0
.end method

.method public isUploadSuccessful()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeRequest(Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;)Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 9
    .parameter "command"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x193

    const/16 v6, 0x191

    .line 167
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->baseUploadUri:Ljava/net/URI;

    .line 168
    .local v1, requestUri:Ljava/net/URI;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 170
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;

    if-ne p1, v3, :cond_1

    .line 171
    const-string v3, "Session URI is null for a QUERY command -- did you call SessionManager#init?"

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    invoke-static {v3, v4}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 180
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/util/AuthUtils;

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->fileToUpload:Ljava/io/File;

    invoke-static {v3, p1, v4}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/util/AuthUtils;Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;Ljava/io/File;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 182
    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v8}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v2

    .line 185
    .local v2, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v2, :cond_2

    .line 186
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Connection failed or no response from server."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    .end local v2           #response:Lcom/google/glass/net/SimplifiedHttpResponse;
    :cond_1
    sget-object v3, Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;->START:Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;

    if-ne p1, v3, :cond_0

    .line 175
    const-string v3, "X-Goog-Upload-Protocol"

    const-string v4, "resumable"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v3, "X-Goog-Upload-Content-Type"

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->fileMimeType:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v3, "X-Goog-Upload-Content-Length"

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->fileToUpload:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    .restart local v2       #response:Lcom/google/glass/net/SimplifiedHttpResponse;
    :cond_2
    iget v3, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    if-eq v3, v7, :cond_3

    iget v3, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    if-ne v3, v6, :cond_6

    .line 191
    :cond_3
    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/util/AuthUtils;

    invoke-virtual {v3}, Lcom/google/glass/util/AuthUtils;->invalidateAuthToken()V

    .line 192
    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->authUtils:Lcom/google/glass/util/AuthUtils;

    iget-object v4, p0, Lcom/google/glass/net/upload/SessionManager;->fileToUpload:Ljava/io/File;

    invoke-static {v3, p1, v4}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/util/AuthUtils;Lcom/google/glass/net/upload/ResumableUploader$UploadCommand;Ljava/io/File;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 194
    iget-object v3, p0, Lcom/google/glass/net/upload/SessionManager;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v8}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v2

    .line 196
    if-nez v2, :cond_4

    .line 197
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Connection failed or no response from server."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_4
    iget v3, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    if-eq v3, v7, :cond_5

    iget v3, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    if-ne v3, v6, :cond_6

    .line 202
    :cond_5
    new-instance v3, Lorg/apache/http/auth/InvalidCredentialsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Credentials are invalid even after refresh: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :cond_6
    return-object v2
.end method

.method onUploadSuccess(Lcom/google/glass/net/SimplifiedHttpResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->logTag:Ljava/lang/String;

    const-string v1, "UploadSession reported upload completed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-object p1, p0, Lcom/google/glass/net/upload/SessionManager;->uploadResult:Lcom/google/glass/net/SimplifiedHttpResponse;

    .line 272
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionManager;->sessionTracker:Lcom/google/glass/net/upload/SessionTracker;

    iget-object v1, p0, Lcom/google/glass/net/upload/SessionManager;->fileToUpload:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/google/glass/net/upload/SessionTracker;->clearSessionUri(Ljava/io/File;)Z

    .line 273
    return-void
.end method

.method setSessionUri(Ljava/net/URI;)V
    .locals 0
    .parameter "sessionUri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 89
    iput-object p1, p0, Lcom/google/glass/net/upload/SessionManager;->sessionUri:Ljava/net/URI;

    .line 90
    return-void
.end method

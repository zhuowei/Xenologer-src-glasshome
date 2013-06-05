.class public Lcom/google/glass/timeline/UploadException;
.super Ljava/io/IOException;
.source "UploadException.java"


# instance fields
.field private errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "mimeType"
    .parameter "message"

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, Lcom/google/glass/timeline/UploadException;->mimeType:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/google/glass/timeline/UploadException;->errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "errorCode"
    .parameter "mimeType"
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iput-object p2, p0, Lcom/google/glass/timeline/UploadException;->mimeType:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/google/glass/timeline/UploadException;->errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 39
    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/timeline/UploadException;->errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/timeline/UploadException;->mimeType:Ljava/lang/String;

    return-object v0
.end method

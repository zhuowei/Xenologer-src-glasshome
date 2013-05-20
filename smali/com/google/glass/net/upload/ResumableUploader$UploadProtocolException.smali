.class public Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;
.super Lorg/apache/http/ProtocolException;
.source "ResumableUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/upload/ResumableUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadProtocolException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/upload/ResumableUploader;


# direct methods
.method public constructor <init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;->this$0:Lcom/google/glass/net/upload/ResumableUploader;

    .line 177
    invoke-direct {p0, p2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/upload/ResumableUploader;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "message"
    .parameter "e"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/glass/net/upload/ResumableUploader$UploadProtocolException;->this$0:Lcom/google/glass/net/upload/ResumableUploader;

    .line 181
    invoke-direct {p0, p2, p3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    return-void
.end method

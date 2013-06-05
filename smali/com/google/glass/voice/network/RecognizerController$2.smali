.class Lcom/google/glass/voice/network/RecognizerController$2;
.super Ljava/io/PipedInputStream;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController;-><init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$2;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized read([BII)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/PipedInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :goto_0
    monitor-exit p0

    return v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PipedInputStream read Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 203
    :catch_1
    move-exception v1

    .line 210
    const/4 v1, -0x1

    goto :goto_0
.end method

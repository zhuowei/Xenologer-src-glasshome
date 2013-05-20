.class public Lcom/google/glass/voice/MockMicrophoneInputStream;
.super Lcom/google/glass/voice/MicrophoneInputStream;
.source "MockMicrophoneInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/voice/MockMicrophoneInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "sampleRate"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/MicrophoneInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    return-void
.end method


# virtual methods
.method public feedCannedAudio(Ljava/io/InputStream;)V
    .locals 2
    .parameter "cannedAudioInputStream"

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Canned audio input stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    sget-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v1, "received canned audio input stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method protected isMock()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public read([BII)I
    .locals 6
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 38
    iget-object v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 39
    .local v0, cannedAudioInputStream:Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 41
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 42
    .local v3, readReturn:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 43
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/glass/voice/MockMicrophoneInputStream;->onRawBytesRead([BII)V

    .line 63
    .end local v3           #readReturn:I
    :goto_0
    return v3

    .line 46
    .restart local v3       #readReturn:I
    :cond_0
    sget-object v4, Lcom/google/glass/voice/MockMicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v5, "finished reading from canned audio, passing zeros"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 50
    iget-object v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v3           #readReturn:I
    :cond_1
    :goto_1
    move v2, p2

    .local v2, i:I
    :goto_2
    add-int v4, p2, p3

    if-ge v2, v4, :cond_2

    .line 58
    const/4 v4, 0x0

    aput-byte v4, p1, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 52
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/MockMicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v5, "Error reading canned audio, passing zeros instead"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 61
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/voice/MockMicrophoneInputStream;->onRawBytesRead([BII)V

    move v3, p3

    .line 63
    goto :goto_0
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v1, "starting listening"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->listening:Z

    .line 28
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v1, "stopping listening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->listening:Z

    .line 34
    return-void
.end method

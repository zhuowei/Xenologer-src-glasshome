.class public Lcom/google/glass/voice/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT:I = 0x2

.field public static final AUDIO_SOURCE:I = 0x6

.field private static final BUFFER_SIZE_SECONDS:I = 0x4

.field public static final CHANNEL_CONFIG:I = 0x10

.field public static final MAX_AMPLITUDE:D = 32767.0

.field private static final MICROSECONDS_BETWEEN_AMPLITUDE:J = 0xc350L

.field public static final MICROSECONDS_PER_SAMPLE_16_KHZ:F = 62.5f

.field public static final MICROSECONDS_PER_SAMPLE_8_KHZ:F = 125.0f

.field public static final SAMPLE_RATE_16000_HZ:I = 0x3e80

.field public static final SAMPLE_RATE_8000_HZ:I = 0x1f40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private final listener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;

.field protected listening:Z

.field private microsecondsFromStart:J

.field private final microsecondsPerSample:F

.field private microsecondsSinceLastAmplitude:J

.field private final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "sampleRate"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    const-wide/32 v0, 0xc350

    iput-wide v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    .line 91
    iput-object p2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;

    .line 92
    iput p3, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    .line 94
    invoke-static {p3}, Lcom/google/glass/voice/MicrophoneInputStream;->determineMicrosecondsPerSample(I)F

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsPerSample:F

    .line 95
    return-void
.end method

.method private calculateAmplitude([BII)D
    .locals 8
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    .line 121
    .local v0, amplitude:D
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v4, p2, p3

    add-int/lit8 v4, v4, -0x2

    if-ge v2, v4, :cond_0

    .line 122
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v2

    and-int v3, v4, v5

    .line 123
    .local v3, value:I
    mul-int v4, v3, v3

    int-to-double v4, v4

    add-double/2addr v0, v4

    .line 121
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 125
    .end local v3           #value:I
    :cond_0
    div-int/lit8 v4, p3, 0x2

    int-to-double v4, v4

    div-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x40dfffc000000000L

    div-double v0, v4, v6

    .line 126
    return-wide v0
.end method

.method public static determineMicrosecondsPerSample(I)F
    .locals 3
    .parameter "sampleRate"

    .prologue
    .line 80
    const/16 v0, 0x3e80

    if-ne p0, v0, :cond_0

    .line 81
    const/high16 v0, 0x427a

    .line 83
    :goto_0
    return v0

    .line 82
    :cond_0
    const/16 v0, 0x1f40

    if-ne p0, v0, :cond_1

    .line 83
    const/high16 v0, 0x42fa

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected sample rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private releaseMicrophone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 113
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v2, "audioRecord.release() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object v4, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v2, "Error stopping audio record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 113
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v2, "audioRecord.release() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object v4, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 113
    sget-object v2, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v3, "audioRecord.release() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object v4, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    throw v1
.end method


# virtual methods
.method public getMicrosecondsSoFar()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsFromStart:J

    return-wide v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    return v0
.end method

.method public declared-synchronized isListening()Z
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isMock()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method protected onRawBytesRead([BII)V
    .locals 8
    .parameter "b"
    .parameter "offset"
    .parameter "readByteCount"

    .prologue
    .line 140
    div-int/lit8 v0, p3, 0x2

    int-to-long v0, v0

    iget v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsPerSample:F

    float-to-long v2, v2

    mul-long v6, v0, v2

    .line 141
    .local v6, microsecondsForRead:J
    iget-wide v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsFromStart:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsFromStart:J

    .line 144
    iget-wide v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    .line 145
    iget-wide v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/MicrophoneInputStream;->calculateAmplitude([BII)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;->onAmplitudeChanged(D)V

    .line 147
    const-wide/32 v0, 0xc350

    iput-wide v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;

    iget-wide v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsFromStart:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;->onTimestampedAudioData(J[BII)V

    .line 152
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    iget v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    div-int/lit8 v2, v2, 0xa

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 161
    .local v0, readReturn:I
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 162
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v2, "ERROR_INVALID_OPERATION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v0           #readReturn:I
    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 164
    .restart local v0       #readReturn:I
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 165
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    const-string v2, "ERROR_BAD_VALUE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v0           #readReturn:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 167
    .restart local v0       #readReturn:I
    :cond_2
    if-eqz v0, :cond_0

    .line 168
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/voice/MicrophoneInputStream;->onRawBytesRead([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized startListening()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/voice/MicrophoneInputException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 185
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting listening on MicrophoneInputStream with sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    .line 190
    .local v6, minHardwareBufferSize:I
    iget v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 193
    .local v5, bufferSize:I
    sget-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating AudioRecord with sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    .line 198
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->releaseMicrophone()V

    .line 200
    new-instance v0, Lcom/google/glass/voice/MicrophoneInputException;

    const-string v1, "Couldn\'t create AudioRecord"

    invoke-direct {v0, v1}, Lcom/google/glass/voice/MicrophoneInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v5           #bufferSize:I
    .end local v6           #minHardwareBufferSize:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    .restart local v5       #bufferSize:I
    .restart local v6       #minHardwareBufferSize:I
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 204
    sget-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->releaseMicrophone()V

    .line 208
    new-instance v0, Lcom/google/glass/voice/MicrophoneInputException;

    const-string v1, "Couldn\'t start recording"

    invoke-direct {v0, v1}, Lcom/google/glass/voice/MicrophoneInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopListening()V
    .locals 3

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping listening: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z

    .line 217
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->releaseMicrophone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

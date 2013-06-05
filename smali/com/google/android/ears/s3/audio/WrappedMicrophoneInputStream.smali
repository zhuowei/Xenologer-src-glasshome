.class public Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;
.super Lcom/google/android/speech/audio/MicrophoneInputStream;
.source "WrappedMicrophoneInputStream.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "WrappedMicrophoneInputStream"


# instance fields
.field private final mAudioLevelGenerator:Lcom/google/android/ears/s3/audio/AudioLevelGenerator;

.field private final mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "WrappedMicrophoneInputStream"

    invoke-static {v0}, Lcom/google/android/ears/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->LOGV:Z

    return-void
.end method

.method public constructor <init>(IIZLcom/google/android/ears/s3/audio/AudioListener;)V
    .locals 3
    .parameter "sampleRateHz"
    .end parameter
    .parameter "minBufferSize"
    .end parameter
    .parameter "noiseSuppression"
    .end parameter
    .parameter "audioListener"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/speech/audio/MicrophoneInputStream;-><init>(IIZLcom/google/common/base/Supplier;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mStarted:Z

    .line 31
    iput-object p4, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    .line 32
    new-instance v0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;

    invoke-direct {v0, p4}, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;-><init>(Lcom/google/android/ears/s3/audio/AudioListener;)V

    iput-object v0, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mAudioLevelGenerator:Lcom/google/android/ears/s3/audio/AudioLevelGenerator;

    .line 33
    sget-boolean v0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->LOGV:Z

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "WrappedMicrophoneInputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a WrappedMicrophoneInputStreamsample rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream;->close()V

    .line 62
    iget-object v0, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mStarted:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mStarted:Z

    .line 64
    iget-object v0, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    invoke-interface {v0}, Lcom/google/android/ears/s3/audio/AudioListener;->onStop()V

    .line 66
    :cond_0
    return-void
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/speech/audio/MicrophoneInputStream;->read([BII)I

    move-result v0

    .line 46
    .local v0, read:I
    iget-boolean v1, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mStarted:Z

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mStarted:Z

    .line 48
    iget-object v1, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    invoke-interface {v1}, Lcom/google/android/ears/s3/audio/AudioListener;->onStart()V

    .line 53
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;->mAudioLevelGenerator:Lcom/google/android/ears/s3/audio/AudioLevelGenerator;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->update([BII)V

    .line 56
    :cond_1
    return v0
.end method

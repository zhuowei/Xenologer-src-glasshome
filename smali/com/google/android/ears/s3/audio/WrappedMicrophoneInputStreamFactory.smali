.class public Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStreamFactory;
.super Ljava/lang/Object;
.source "WrappedMicrophoneInputStreamFactory.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# instance fields
.field private final mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;


# direct methods
.method public constructor <init>(Lcom/google/android/ears/s3/audio/AudioListener;)V
    .locals 0
    .parameter "audioListener"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStreamFactory;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    .line 20
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;

    const/16 v1, 0x2b11

    const v2, 0x50bfe

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStreamFactory;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;-><init>(IIZLcom/google/android/ears/s3/audio/AudioListener;)V

    return-object v0
.end method

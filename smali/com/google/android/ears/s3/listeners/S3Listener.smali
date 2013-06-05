.class public Lcom/google/android/ears/s3/listeners/S3Listener;
.super Ljava/lang/Object;
.source "S3Listener.java"

# interfaces
.implements Lcom/google/android/speech/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/speech/callback/Callback",
        "<",
        "Lcom/google/speech/s3/S3$S3Response;",
        "Lcom/google/android/speech/exception/RecognizeException;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "S3Listener"


# instance fields
.field private final mListener:Lcom/google/android/ears/s3/listeners/SoundSearchListener;


# direct methods
.method public constructor <init>(Lcom/google/android/ears/s3/listeners/SoundSearchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/ears/s3/listeners/S3Listener;->mListener:Lcom/google/android/ears/s3/listeners/SoundSearchListener;

    .line 26
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 62
    const-string v0, "S3Listener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/speech/exception/RecognizeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    instance-of v0, p1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/ears/s3/listeners/S3Listener;->mListener:Lcom/google/android/ears/s3/listeners/SoundSearchListener;

    sget-object v1, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->NETWORK_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    invoke-interface {v0, v1}, Lcom/google/android/ears/s3/listeners/SoundSearchListener;->onError(Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;)V

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/ears/s3/listeners/S3Listener;->mListener:Lcom/google/android/ears/s3/listeners/SoundSearchListener;

    sget-object v1, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->LOOKUP_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    invoke-interface {v0, v1}, Lcom/google/android/ears/s3/listeners/SoundSearchListener;->onError(Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;)V

    .line 70
    return-void

    .line 65
    :cond_1
    instance-of v0, p1, Lcom/google/android/speech/exception/AudioRecognizeException;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/ears/s3/listeners/S3Listener;->mListener:Lcom/google/android/ears/s3/listeners/SoundSearchListener;

    sget-object v1, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->AUDIO_CAPTURE_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    invoke-interface {v0, v1}, Lcom/google/android/ears/s3/listeners/SoundSearchListener;->onError(Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Lcom/google/android/speech/exception/RecognizeException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/ears/s3/listeners/S3Listener;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    return-void
.end method

.method public onResult(Lcom/google/speech/s3/S3$S3Response;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasSoundSearchServiceEventExtension()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getSoundSearchServiceEventExtension()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    move-result-object v1

    .line 34
    .local v1, event:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    invoke-virtual {v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->hasResultsResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getDetectedCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, detectedCountryCode:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/ears/s3/listeners/S3Listener;->mListener:Lcom/google/android/ears/s3/listeners/SoundSearchListener;

    invoke-virtual {v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getResultList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/google/android/ears/s3/listeners/SoundSearchListener;->onSoundSearchResult(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0           #detectedCountryCode:Ljava/lang/String;
    .end local v1           #event:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/ears/s3/listeners/S3Listener;->mListener:Lcom/google/android/ears/s3/listeners/SoundSearchListener;

    invoke-interface {v2}, Lcom/google/android/ears/s3/listeners/SoundSearchListener;->onDone()V

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v2, "S3Listener"

    const-string v3, "Error encountered: S3_STATUS_DONE_ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/google/android/ears/s3/listeners/S3Listener;->mListener:Lcom/google/android/ears/s3/listeners/SoundSearchListener;

    sget-object v3, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->LOOKUP_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    invoke-interface {v2, v3}, Lcom/google/android/ears/s3/listeners/SoundSearchListener;->onError(Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;)V

    goto :goto_0

    .line 54
    :pswitch_3
    const-string v2, "S3Listener"

    const-string v3, "NOT_STARTED received"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/google/android/ears/s3/listeners/S3Listener;->mListener:Lcom/google/android/ears/s3/listeners/SoundSearchListener;

    sget-object v3, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->LOOKUP_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    invoke-interface {v2, v3}, Lcom/google/android/ears/s3/listeners/SoundSearchListener;->onError(Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Lcom/google/speech/s3/S3$S3Response;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/ears/s3/listeners/S3Listener;->onResult(Lcom/google/speech/s3/S3$S3Response;)V

    return-void
.end method

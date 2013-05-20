.class public Lcom/google/android/speech/message/S3ResponseProcessor;
.super Ljava/lang/Object;
.source "S3ResponseProcessor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "S3ResponseProcessor"


# instance fields
.field private final mAudioBytes:Ljava/io/ByteArrayOutputStream;

.field private final mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 1
    .parameter "logger"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mAudioBytes:Ljava/io/ByteArrayOutputStream;

    .line 41
    iput-object p1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 42
    return-void
.end method

.method private processDone(Lcom/google/android/speech/listeners/RecognitionEventListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 140
    invoke-interface {p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onDone()V

    .line 141
    return-void
.end method

.method public static processMajelServiceEvent(Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 5
    .parameter "majelServiceEvent"

    .prologue
    .line 144
    new-instance v1, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-direct {v1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;-><init>()V

    .line 145
    .local v1, response:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getCompressedMajelResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/speech/network/IoUtils;->uncompress([B)[B

    move-result-object v2

    .line 150
    .local v2, uncompressed:[B
    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v1, v2}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v2           #uncompressed:[B
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->clearCompressedMajelResponse()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 161
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->setMajel(Lcom/google/majel/proto/MajelProtos$MajelResponse;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 166
    :goto_1
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/io/IOException;
    const-string v3, "S3ResponseProcessor"

    const-string v4, "Could not gunzip response."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v1, 0x0

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getMajel()Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v1

    goto :goto_1
.end method

.method private processMajelServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)V
    .locals 2
    .parameter "callback"
    .parameter "majelServiceEvent"

    .prologue
    .line 114
    invoke-static {p2}, Lcom/google/android/speech/message/S3ResponseProcessor;->processMajelServiceEvent(Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v0

    .line 116
    .local v0, response:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3MajelResultReceived()V

    .line 118
    invoke-interface {p1, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    .line 120
    :cond_0
    return-void
.end method

.method private processPinholeOutputEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 0
    .parameter "callback"
    .parameter "output"

    .prologue
    .line 93
    invoke-interface {p1, p2}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 94
    return-void
.end method

.method private processRecognizerEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)V
    .locals 3
    .parameter "callback"
    .parameter "recognizerEvent"

    .prologue
    .line 132
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    .line 133
    .local v0, recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3RecognitionCompleted()V

    .line 136
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 137
    return-void
.end method

.method private processSoundSearchEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;)V
    .locals 1
    .parameter "callback"
    .parameter "soundSearchServiceEvent"

    .prologue
    .line 124
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3SoundSearchResultReceived()V

    .line 126
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 128
    :cond_0
    return-void
.end method

.method private processTtsServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;)V
    .locals 4
    .parameter "callback"
    .parameter "ttsServiceEvent"

    .prologue
    .line 102
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getEndOfData()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mAudioBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3TtsReceived()V

    .line 105
    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mAudioBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMediaDataResult([B)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getAudio()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v0

    .line 108
    .local v0, data:[B
    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mAudioBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public process(Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/listeners/RecognitionEventListener;)V
    .locals 2
    .parameter "response"
    .parameter "callback"

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasTtsServiceEventExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getTtsServiceEventExtension()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/speech/message/S3ResponseProcessor;->processTtsServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;)V

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/speech/message/S3ResponseProcessor;->processRecognizerEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)V

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasMajelServiceEventExtension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getMajelServiceEventExtension()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/speech/message/S3ResponseProcessor;->processMajelServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)V

    .line 63
    :cond_3
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasSoundSearchServiceEventExtension()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getSoundSearchServiceEventExtension()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/speech/message/S3ResponseProcessor;->processSoundSearchEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;)V

    .line 68
    :cond_4
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasPinholeOutputExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getPinholeOutputExtension()Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/speech/message/S3ResponseProcessor;->processPinholeOutputEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/speech/message/S3ResponseProcessor;->processDone(Lcom/google/android/speech/listeners/RecognitionEventListener;)V

    goto :goto_0

    .line 78
    :pswitch_2
    new-instance v0, Lcom/google/android/speech/exception/ServerRecognizeException;

    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/speech/exception/ServerRecognizeException;-><init>(I)V

    invoke-interface {p2, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 83
    :pswitch_3
    const-string v0, "S3ResponseProcessor"

    const-string v1, "NOT_STARTED received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/google/android/speech/exception/ServerRecognizeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/speech/exception/ServerRecognizeException;-><init>(I)V

    invoke-interface {p2, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

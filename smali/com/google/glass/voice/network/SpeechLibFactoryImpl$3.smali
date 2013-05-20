.class Lcom/google/glass/voice/network/SpeechLibFactoryImpl$3;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/logger/SpeechLibLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$3;->this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logAudioPathEstablished(I)V
    .locals 0
    .parameter "audioInputType"

    .prologue
    .line 169
    return-void
.end method

.method public logEndOfSpeech()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public logNoSpeechDetected()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public logS3ConnectionDone()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public logS3ConnectionError()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public logS3ConnectionOpen()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public logS3ConnectionOpenLatency()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public logS3MajelResultReceived()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public logS3RecognitionCompleted()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public logS3SendEndOfData()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public logS3SoundSearchResultReceived()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public logS3TtsReceived()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public recordSpeechEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 217
    return-void
.end method

.method public recordSpeechEvent(ILjava/lang/Object;)V
    .locals 0
    .parameter "event"
    .parameter "data"

    .prologue
    .line 221
    return-void
.end method

.class public Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
.super Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.source "BroadcastingVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/voice/network/VoiceInputCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$RemoteVoiceInputCallbackOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster",
        "<",
        "Lcom/google/glass/voice/network/IVoiceInputCallback;",
        ">;",
        "Lcom/google/glass/voice/network/VoiceInputCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

.field private final voiceEngine:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "voiceEngine"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 38
    return-void
.end method

.method private declared-synchronized maybeAttachCallbackToEngine()V
    .locals 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->beginBroadcast()I

    move-result v0

    .line 197
    .local v0, callbackConut:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1, p0}, Lcom/google/glass/voice/VoiceEngine;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->finishBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 196
    .end local v0           #callbackConut:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized maybeDetachCallbackFromEngine()V
    .locals 2

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->beginBroadcast()I

    move-result v0

    .line 205
    .local v0, callbackCount:I
    if-nez v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceEngine;->detachVoiceInputCallback()V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->finishBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 204
    .end local v0           #callbackCount:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 143
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$11;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$11;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/glass/voice/network/SpeechException;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 149
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 1
    .parameter "resultDoc"

    .prologue
    .line 123
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$9;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$9;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 129
    return-void
.end method

.method public onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 113
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$8;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$8;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 119
    return-void
.end method

.method public onRecognitionResult(Ljava/lang/CharSequence;F)V
    .locals 1
    .parameter "text"
    .parameter "confidence"

    .prologue
    .line 103
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$7;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Ljava/lang/CharSequence;F)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 109
    return-void
.end method

.method public bridge synthetic onRegister(Landroid/os/IInterface;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->onRegister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public declared-synchronized onRegister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->maybeAttachCallbackToEngine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 133
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$10;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$10;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 139
    return-void
.end method

.method public bridge synthetic onUnregister(Landroid/os/IInterface;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->onUnregister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public declared-synchronized onUnregister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->beginBroadcast()I

    move-result v0

    .line 186
    .local v0, callbackCount:I
    if-nez v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceEngine;->endpointNetworkRecognizer()V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->finishBroadcast()V

    .line 192
    invoke-direct {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->maybeDetachCallbackFromEngine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 185
    .end local v0           #callbackCount:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    .line 157
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/glass/voice/network/SpeechLevelSource;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 168
    return-void
.end method

.method public showDone()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$5;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$5;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 88
    return-void
.end method

.method public showListening()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 48
    return-void
.end method

.method public showNoSpeechDetected()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$4;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 78
    return-void
.end method

.method public showRecognizing()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$3;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 68
    return-void
.end method

.method public showRecording()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$2;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 58
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    .line 93
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$6;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 99
    return-void
.end method

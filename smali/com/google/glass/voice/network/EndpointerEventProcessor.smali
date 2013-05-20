.class public Lcom/google/glass/voice/network/EndpointerEventProcessor;
.super Ljava/lang/Object;
.source "EndpointerEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/EndpointerEventProcessor$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final POST_GET_DIRECTIONS_END_SPEECH_FUZZ_FACTOR_MS:J = 0x514L

.field private static final POST_GET_DIRECTIONS_START_SPEECH_WAIT_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentProgressMs:J

.field private endOfSpeechTriggerMs:J

.field private final endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

.field private endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private final stateMachine:Lcom/google/android/searchcommon/util/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/searchcommon/util/StateMachine",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$State;",
            ">;"
        }
    .end annotation
.end field

.field private voiceService:Lcom/google/glass/voice/VoiceService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/speech/audio/EndpointerListener;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;Lcom/google/glass/voice/VoiceService;)V
    .locals 3
    .parameter "epListener"
    .parameter "endpointerParams"
    .parameter "voiceService"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-static {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->build()Lcom/google/android/searchcommon/util/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/audio/EndpointerListener;

    iput-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    .line 79
    iput-object p2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 80
    iput-object p3, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->voiceService:Lcom/google/glass/voice/VoiceService;

    .line 81
    return-void
.end method

.method private isDirections(Lcom/google/glass/voice/VoiceCommandRecognitionResult;)Z
    .locals 2
    .parameter "result"

    .prologue
    .line 230
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isWithinEndSpeechFuzzFactor(JLcom/google/glass/voice/VoiceCommandRecognitionResult;)Z
    .locals 6
    .parameter "timeMs"
    .parameter "result"

    .prologue
    const-wide/16 v4, 0x514

    .line 261
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing end of speech fuzz factor. End of speech event time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phrase duration was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->getSensoryResult()Lcom/google/glass/voice/SensoryResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/SensoryResult;->getPhraseDurationMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and fuzz factor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-virtual {p3}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->getSensoryResult()Lcom/google/glass/voice/SensoryResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/SensoryResult;->getPhraseDurationMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfAudioAsEndOfSpeech()Z
    .locals 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfAudioAsNoSpeechDetected()Z
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfSpeech(J)Z
    .locals 6
    .parameter "timeMs"

    .prologue
    const/4 v1, 0x0

    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->voiceService:Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceService;->getLastSensoryRecognitionResult()Lcom/google/glass/voice/VoiceCommandRecognitionResult;

    move-result-object v0

    .line 160
    .local v0, lastResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->NAV_CONTAMINATE_FIX:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->isDirections(Lcom/google/glass/voice/VoiceCommandRecognitionResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->isWithinEndSpeechFuzzFactor(JLcom/google/glass/voice/VoiceCommandRecognitionResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Got end of speech for directions within fuzz factor, delaying end of speech"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v3, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v2, v3}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 165
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->setEndOfSpeechTriggerPoint(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    monitor-exit p0

    return v1

    .line 168
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v2

    if-lez v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v3, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v2, v3}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 170
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    iget-object v4, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v4}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->setEndOfSpeechTriggerPoint(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    .end local v0           #lastResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 175
    .restart local v0       #lastResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized processStartOfSpeech()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const/4 v0, 0x1

    .line 154
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 150
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setEndOfSpeechTriggerPoint(J)V
    .locals 1
    .parameter "timeMs"

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endOfSpeechTriggerMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldTriggerEndOfSpeech()Z
    .locals 4

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->currentProgressMs:J

    iget-wide v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endOfSpeechTriggerMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldTriggerNoSpeechDetected()Z
    .locals 4

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->currentProgressMs:J

    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getNoSpeechDetectedTimeoutMsec()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType()Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    :cond_0
    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    const-string v2, "Received EP event without type."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getEventType()I

    move-result v0

    .line 97
    .local v0, type:I
    if-nez v0, :cond_3

    .line 98
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processStartOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/speech/audio/EndpointerListener;->onStartOfSpeech(J)V

    goto :goto_0

    .line 104
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 105
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processEndOfSpeech(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    goto :goto_0

    .line 111
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processEndOfAudioAsEndOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    .line 119
    :cond_5
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processEndOfAudioAsNoSpeechDetected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onNoSpeechDetected()V

    goto :goto_0
.end method

.method declared-synchronized updateProgress(J)V
    .locals 1
    .parameter "endMs"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->currentProgressMs:J

    .line 131
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->shouldTriggerEndOfSpeech()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v0}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->shouldTriggerNoSpeechDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v0}, Lcom/google/android/speech/audio/EndpointerListener;->onNoSpeechDetected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

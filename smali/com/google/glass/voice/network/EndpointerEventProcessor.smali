.class public Lcom/google/glass/voice/network/EndpointerEventProcessor;
.super Ljava/lang/Object;
.source "EndpointerEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;,
        Lcom/google/glass/voice/network/EndpointerEventProcessor$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentProgressMs:J

.field private endOfSpeechTriggerMs:J

.field private final endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

.field private endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private final eventPreprocessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/speech/audio/EndpointerListener;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;Ljava/util/List;)V
    .locals 3
    .parameter "epListener"
    .parameter "endpointerParams"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, eventPreprocessors:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
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

    .line 87
    iput-object p3, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    .line 88
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/audio/EndpointerListener;

    iput-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    .line 89
    iput-object p2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 90
    return-void
.end method

.method private abortProcessing(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;

    .line 143
    .local v0, eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;->process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/4 v2, 0x1

    .line 147
    .end local v0           #eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private abortProgressUpdate(J)Z
    .locals 3
    .parameter "endMs"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;

    .line 174
    .local v0, eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;->updateProgress(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v2, 0x1

    .line 178
    .end local v0           #eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPreprocessorEndOfSpeechDelay(J)Ljava/lang/Long;
    .locals 4
    .parameter "timeMs"

    .prologue
    .line 216
    iget-object v3, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;

    .line 217
    .local v0, eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;->getEndOfSpeechTriggerPoint(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, preprocessorDelay:Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 221
    .end local v0           #eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    .end local v2           #preprocessorDelay:Ljava/lang/Long;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized processEndOfAudioAsEndOfSpeech()Z
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfAudioAsNoSpeechDetected()Z
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 234
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

    .line 194
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->getPreprocessorEndOfSpeechDelay(J)Ljava/lang/Long;

    move-result-object v0

    .line 195
    .local v0, preprocessorDelay:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 196
    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preprocessor requests delay of end of speech by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v3, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v2, v3}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 199
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->setEndOfSpeechTriggerPoint(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :goto_0
    monitor-exit p0

    return v1

    .line 202
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v2

    if-lez v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v3, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v2, v3}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 204
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

    .line 194
    .end local v0           #preprocessorDelay:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 209
    .restart local v0       #preprocessorDelay:Ljava/lang/Long;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized processStartOfSpeech()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v0, 0x1

    .line 189
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 185
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setEndOfSpeechTriggerPoint(J)V
    .locals 1
    .parameter "timeMs"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endOfSpeechTriggerMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldTriggerEndOfSpeech()Z
    .locals 4

    .prologue
    .line 250
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

    .line 252
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    const/4 v0, 0x1

    .line 255
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldTriggerNoSpeechDetected()Z
    .locals 4

    .prologue
    .line 260
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

    .line 262
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 260
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
    .line 93
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->abortProcessing(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType()Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    :cond_2
    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    const-string v2, "Received EP event without type."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getEventType()I

    move-result v0

    .line 110
    .local v0, type:I
    if-nez v0, :cond_4

    .line 111
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processStartOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/speech/audio/EndpointerListener;->onStartOfSpeech(J)V

    goto :goto_0

    .line 117
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 118
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processEndOfSpeech(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    goto :goto_0

    .line 124
    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processEndOfAudioAsEndOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    .line 132
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processEndOfAudioAsNoSpeechDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onNoSpeechDetected()V

    goto :goto_0
.end method

.method declared-synchronized updateProgress(J)V
    .locals 1
    .parameter "endMs"

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->currentProgressMs:J

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->abortProgressUpdate(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 157
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->shouldTriggerEndOfSpeech()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v0}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->shouldTriggerNoSpeechDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v0}, Lcom/google/android/speech/audio/EndpointerListener;->onNoSpeechDetected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/google/android/speech/audio/AudioController;
.super Ljava/lang/Object;
.source "AudioController.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioController"

.field public static final TEE_BUFFER_SIZE:I = 0x3e8

.field public static final TEE_KEEP_SIZE:I = 0x1f4


# instance fields
.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioRouter:Lcom/google/android/voicesearch/AudioRouter;

.field private final mAudioRoutingSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:Lcom/google/android/speech/audio/AudioSource;

.field private final mAudioStream:I

.field private final mContext:Landroid/content/Context;

.field private mListening:Z

.field private final mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

.field private mNoiseSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSettings:Lcom/google/android/speech/SpeechSettings;

.field private final mSoundManager:Lcom/google/android/speech/audio/SpeechSoundManager;

.field private final mSpeechLevelSource:Lcom/google/android/speech/SpeechLevelSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/audio/SpeechSoundManager;ILcom/google/common/base/Supplier;Lcom/google/android/voicesearch/AudioRouter;Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 1
    .parameter "context"
    .parameter "settings"
    .parameter "speechLevelSource"
    .parameter "soundManager"
    .parameter "audioStream"
    .parameter
    .parameter "audioRouter"
    .parameter "logger"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/speech/SpeechSettings;",
            "Lcom/google/android/speech/SpeechLevelSource;",
            "Lcom/google/android/speech/audio/SpeechSoundManager;",
            "I",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/voicesearch/AudioRouter;",
            "Lcom/google/android/speech/logger/SpeechLibLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p6, audioRoutingSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 79
    new-instance v0, Lcom/google/android/speech/audio/AudioController$1;

    invoke-direct {v0, p0}, Lcom/google/android/speech/audio/AudioController$1;-><init>(Lcom/google/android/speech/audio/AudioController;)V

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 111
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioController;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/google/android/speech/audio/AudioController;->mSettings:Lcom/google/android/speech/SpeechSettings;

    .line 113
    iput-object p4, p0, Lcom/google/android/speech/audio/AudioController;->mSoundManager:Lcom/google/android/speech/audio/SpeechSoundManager;

    .line 114
    iput-object p3, p0, Lcom/google/android/speech/audio/AudioController;->mSpeechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    .line 115
    iput-object p6, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRoutingSupplier:Lcom/google/common/base/Supplier;

    .line 116
    iput p5, p0, Lcom/google/android/speech/audio/AudioController;->mAudioStream:I

    .line 117
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    iput-object p7, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRouter:Lcom/google/android/voicesearch/AudioRouter;

    .line 119
    iput-object p8, p0, Lcom/google/android/speech/audio/AudioController;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/speech/audio/AudioController;)Lcom/google/android/speech/audio/SpeechSoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mSoundManager:Lcom/google/android/speech/audio/SpeechSoundManager;

    return-object v0
.end method

.method private createAudioSource(Lcom/google/android/speech/audio/AudioInputStreamFactory;)Lcom/google/android/speech/audio/AudioSource;
    .locals 6
    .parameter "inputStreamFactory"

    .prologue
    .line 302
    new-instance v0, Lcom/google/android/speech/audio/AudioSource;

    const/16 v1, 0x140

    const/16 v2, 0x1f4

    const/16 v3, 0x3e8

    iget-object v5, p0, Lcom/google/android/speech/audio/AudioController;->mSpeechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/AudioSource;-><init>(IIILcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/SpeechLevelSource;)V

    return-object v0
.end method

.method private createDefaultRawInputStreamFactoryLocked(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .locals 5
    .parameter "params"

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, startEventSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Landroid/media/MediaSyncEvent;>;"
    invoke-virtual {p1}, Lcom/google/android/speech/params/AudioInputParams;->isPlayBeepEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    new-instance v1, Lcom/google/android/speech/audio/AudioController$3;

    .end local v1           #startEventSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Landroid/media/MediaSyncEvent;>;"
    invoke-direct {v1, p0}, Lcom/google/android/speech/audio/AudioController$3;-><init>(Lcom/google/android/speech/audio/AudioController;)V

    .line 289
    .restart local v1       #startEventSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Landroid/media/MediaSyncEvent;>;"
    :cond_0
    new-instance v0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;

    invoke-virtual {p1}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/google/android/speech/audio/AudioController;->isNoiseSuppressionEnabled(Lcom/google/android/speech/params/AudioInputParams;)Z

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;-><init>(IZLcom/google/common/base/Supplier;)V

    .line 294
    .local v0, microphoneInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    new-instance v2, Lcom/google/android/speech/audio/VoiceAudioInputStreamFactory;

    iget-object v3, p0, Lcom/google/android/speech/audio/AudioController;->mSettings:Lcom/google/android/speech/SpeechSettings;

    iget-object v4, p0, Lcom/google/android/speech/audio/AudioController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/speech/audio/VoiceAudioInputStreamFactory;-><init>(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/SpeechSettings;Landroid/content/Context;)V

    return-object v2
.end method

.method private getRawInputStreamFactoryLocked(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .locals 1
    .parameter "params"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 265
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/speech/audio/AudioController;->createDefaultRawInputStreamFactoryLocked(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;

    move-result-object v0

    goto :goto_0
.end method

.method private isNoiseSuppressionEnabled(Lcom/google/android/speech/params/AudioInputParams;)Z
    .locals 2
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-virtual {p1}, Lcom/google/android/speech/params/AudioInputParams;->isNoiseSuppressionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mNoiseSuppressors:Ljava/util/List;

    if-nez v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPlatform()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/speech/audio/AudioUtils;->getNoiseSuppressors(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mNoiseSuppressors:Ljava/util/List;

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mNoiseSuppressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized createInputStreamFactory(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .locals 2
    .parameter "params"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/speech/audio/AudioController;->getRawInputStreamFactoryLocked(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;

    move-result-object v0

    .line 174
    .local v0, inputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    invoke-direct {p0, v0}, Lcom/google/android/speech/audio/AudioController;->createAudioSource(Lcom/google/android/speech/audio/AudioInputStreamFactory;)Lcom/google/android/speech/audio/AudioSource;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    .line 176
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 170
    .end local v0           #inputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized rewindInputStreamFactory(J)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .locals 2
    .parameter "recordingTimeUsec"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-boolean v0, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 197
    new-instance v0, Lcom/google/android/speech/audio/AudioSource;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    invoke-direct {v0, v1}, Lcom/google/android/speech/audio/AudioSource;-><init>(Lcom/google/android/speech/audio/AudioSource;)V

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    .line 198
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/speech/audio/AudioSource;->setStartTime(J)V

    .line 199
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCannedAudio(Ljava/lang/String;)V
    .locals 1
    .parameter "cannedAudioPath"

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/speech/audio/AudioController$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/speech/audio/AudioController$2;-><init>(Lcom/google/android/speech/audio/AudioController;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/speech/audio/AudioController;->setRawInputStreamFactory(Lcom/google/android/speech/audio/AudioInputStreamFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHeadsetEnabled(Z)V
    .locals 1
    .parameter "headsetEnabled"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRouter:Lcom/google/android/voicesearch/AudioRouter;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/AudioRouter;->setHeadsetEnabled(Z)V

    .line 322
    return-void
.end method

.method public declared-synchronized setRawInputStreamFactory(Lcom/google/android/speech/audio/AudioInputStreamFactory;)V
    .locals 1
    .parameter "rawInputStreamFactory"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioController;->mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioController;->stopListening()V

    .line 253
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource;->shutdown()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startListening(Lcom/google/android/speech/listeners/RecognitionEventListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mSpeechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    invoke-virtual {v0}, Lcom/google/android/speech/SpeechLevelSource;->reset()V

    .line 216
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v2, p0, Lcom/google/android/speech/audio/AudioController;->mAudioStream:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 219
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRoutingSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logAudioPathEstablished(I)V

    .line 221
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/audio/AudioSource;->start(Lcom/google/android/speech/listeners/RecognitionEventListener;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRouter:Lcom/google/android/voicesearch/AudioRouter;

    invoke-interface {v0}, Lcom/google/android/voicesearch/AudioRouter;->start()Z

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_1
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource;->stopListening()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRouter:Lcom/google/android/voicesearch/AudioRouter;

    invoke-interface {v0}, Lcom/google/android/voicesearch/AudioRouter;->stop()V

    .line 244
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 245
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mSpeechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    invoke-virtual {v0}, Lcom/google/android/speech/SpeechLevelSource;->reset()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_1
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

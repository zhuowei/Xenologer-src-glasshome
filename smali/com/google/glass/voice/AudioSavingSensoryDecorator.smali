.class public Lcom/google/glass/voice/AudioSavingSensoryDecorator;
.super Lcom/google/glass/voice/Sensory;
.source "AudioSavingSensoryDecorator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

.field private buf:[B

.field private delegate:Lcom/google/glass/voice/Sensory;

.field private name:Ljava/lang/String;

.field private phaseCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/glass/voice/Sensory;Ljava/lang/String;)V
    .locals 0
    .parameter "delegate"
    .parameter "name"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/voice/Sensory;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->delegate:Lcom/google/glass/voice/Sensory;

    .line 29
    iput-object p2, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static createAudioSavingSensoryDecorator(Lcom/google/glass/voice/Sensory;Ljava/lang/String;)Lcom/google/glass/voice/AudioSavingSensoryDecorator;
    .locals 1
    .parameter "delegate"
    .parameter "name"

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/AudioSavingSensoryDecorator;-><init>(Lcom/google/glass/voice/Sensory;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBuffer(I)[B
    .locals 1
    .parameter "length"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->buf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 65
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->buf:[B

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->buf:[B

    return-object v0
.end method


# virtual methods
.method public pipePhrasespot(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/VoiceCommandRecognitionResult;
    .locals 8
    .parameter "b"
    .parameter "rate"

    .prologue
    const/4 v7, 0x0

    .line 73
    iget-object v3, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    if-nez v3, :cond_0

    .line 74
    new-instance v3, Lcom/google/glass/logging/audio/BufferedAudioSaver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/glass/logging/audio/FileAudioSaver;->SAVE_TO_DISK_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->phaseCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->phaseCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pcm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, p3, v4}, Lcom/google/glass/logging/audio/BufferedAudioSaver;-><init>(JLjava/lang/String;)V

    iput-object v3, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    :try_start_0
    sget-object v3, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->TAG:Ljava/lang/String;

    const-string v4, "Preparing audio saver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3}, Lcom/google/glass/logging/audio/AudioSaver;->prepareToSaveAudio()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 87
    .local v0, availableBytes:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 89
    invoke-direct {p0, v0}, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->getBuffer(I)[B

    move-result-object v1

    .line 90
    .local v1, buf:[B
    invoke-virtual {p1, v1, v7, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 91
    iget-object v3, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3, v1, v7, v0}, Lcom/google/glass/logging/audio/AudioSaver;->saveAudio([BII)V

    .line 93
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 94
    iget-object v3, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->delegate:Lcom/google/glass/voice/Sensory;

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/glass/voice/Sensory;->pipePhrasespot(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/VoiceCommandRecognitionResult;

    move-result-object v3

    return-object v3

    .line 81
    .end local v0           #availableBytes:I
    .end local v1           #buf:[B
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method reinitialize()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->delegate:Lcom/google/glass/voice/Sensory;

    invoke-virtual {v0}, Lcom/google/glass/voice/Sensory;->reinitialize()V

    .line 57
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->finishSavingAudio()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 61
    :cond_0
    return-void
.end method

.method stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "str"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingSensoryDecorator;->delegate:Lcom/google/glass/voice/Sensory;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/Sensory;->stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

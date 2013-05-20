.class public abstract Lcom/google/glass/logging/audio/FileAudioSaver;
.super Ljava/lang/Object;
.source "FileAudioSaver.java"

# interfaces
.implements Lcom/google/glass/logging/audio/AudioSaver;


# static fields
.field public static final SAVE_TO_DISK_BASE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private destinationPath:Ljava/lang/String;

.field private final sampleRate:J

.field private saveToDiskOutputStream:Ljava/io/FileOutputStream;

.field private savingAudio:Z

.field private final sensoryResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/SensoryResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/logging/audio/FileAudioSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recorded_audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/FileAudioSaver;->SAVE_TO_DISK_BASE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "sampleRate"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sensoryResults:Ljava/util/List;

    .line 39
    iput-wide p1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sampleRate:J

    .line 40
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .parameter "sampleRate"
    .parameter "destinationPath"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sensoryResults:Ljava/util/List;

    .line 43
    iput-wide p1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sampleRate:J

    .line 44
    iput-object p3, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final finishSavingAudio()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 95
    iget-boolean v1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    if-nez v1, :cond_0

    .line 96
    sget-object v1, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v2, "finishSavingAudio() called before preparing or after finishing."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v1, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v2, "Closing out writing audio to disk"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/FileAudioSaver;->onFinishSavingAudio()V

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    iput-object v4, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    .line 110
    iput-boolean v3, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v2, "Error closing output stream for saved audio"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iput-object v4, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    .line 110
    iput-boolean v3, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    .line 110
    iput-boolean v3, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    throw v1
.end method

.method public final getDestinationPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getFileOutputStream()Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public final isSavingAudio()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    return v0
.end method

.method protected onFinishSavingAudio()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method protected onPrepareToSaveAudio()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public final onResult(Lcom/google/glass/voice/SensoryResult;)V
    .locals 1
    .parameter "sensoryResult"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sensoryResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method abstract onSaveAudio([BII)V
.end method

.method public final prepareToSaveAudio()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v1, "prepareToSaveAudio() called more than once."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sensoryResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    .line 58
    iget-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/glass/logging/audio/FileAudioSaver;->SAVE_TO_DISK_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    .line 62
    :cond_1
    sget-object v0, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting up to save audio to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    .line 65
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/FileAudioSaver;->onPrepareToSaveAudio()V

    goto :goto_0
.end method

.method public final registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V
    .locals 7
    .parameter "context"
    .parameter "savedAudioStorage"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/FileAudioSaver;->getDestinationPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sensoryResults:Ljava/util/List;

    iget-wide v4, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sampleRate:J

    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getEnabledStorageLabs()Ljava/util/List;

    move-result-object v6

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/logging/audio/SavedAudioStorage;->storeAudio(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V

    .line 126
    return-void
.end method

.method public final saveAudio([BII)V
    .locals 2
    .parameter "b"
    .parameter "offset"
    .parameter "readByteCount"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v1, "saveAudio() called before preparing or after finishing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/logging/audio/FileAudioSaver;->onSaveAudio([BII)V

    goto :goto_0
.end method

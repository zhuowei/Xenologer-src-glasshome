.class public Lcom/google/glass/logging/audio/BufferedAudioSaver;
.super Lcom/google/glass/logging/audio/FileAudioSaver;
.source "BufferedAudioSaver.java"


# static fields
.field public static final BYTES_PER_SENSORY_READ:I = 0xa0

.field public static final SAVE_TO_DISK_BUFFER_CAPACITY:I = 0x1f40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bufferedStream:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/audio/FileAudioSaver;-><init>(J)V

    .line 31
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "sampleRate"
    .parameter "destinationPath"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/logging/audio/FileAudioSaver;-><init>(JLjava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onFinishSavingAudio()V
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferedStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;->TAG:Ljava/lang/String;

    const-string v2, "Failed to flush buffered stream!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPrepareToSaveAudio()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Lcom/google/glass/logging/audio/BufferedAudioSaver;->getFileOutputStream()Ljava/io/FileOutputStream;

    move-result-object v1

    const/16 v2, 0x1f40

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferedStream:Ljava/io/BufferedOutputStream;

    .line 41
    return-void
.end method

.method onSaveAudio([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "readByteCount"

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferedStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;->TAG:Ljava/lang/String;

    const-string v2, "Failed to write to buffered stream!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

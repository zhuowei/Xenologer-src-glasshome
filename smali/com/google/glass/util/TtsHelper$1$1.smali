.class Lcom/google/glass/util/TtsHelper$1$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/TtsHelper$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/util/TtsHelper$1;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper$1;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$1$1;->this$1:Lcom/google/glass/util/TtsHelper$1;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->this$1:Lcom/google/glass/util/TtsHelper$1;

    iget-object v0, v0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0x1a

    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Releasing full wake lock from TTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->this$1:Lcom/google/glass/util/TtsHelper$1;

    iget-object v0, v0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->this$1:Lcom/google/glass/util/TtsHelper$1;

    iget-object v0, v0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTS done speaking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/google/glass/util/TtsHelper$1$1;->releaseWakeLock()V

    .line 88
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->this$1:Lcom/google/glass/util/TtsHelper$1;

    iget-object v0, v0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->this$1:Lcom/google/glass/util/TtsHelper$1;

    iget-object v0, v0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTS error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/google/glass/util/TtsHelper$1$1;->releaseWakeLock()V

    .line 78
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 3
    .parameter "utteranceId"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->this$1:Lcom/google/glass/util/TtsHelper$1;

    iget-object v0, v0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->this$1:Lcom/google/glass/util/TtsHelper$1;

    iget-object v0, v0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTS started speaking, acquiring full wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 68
    return-void
.end method

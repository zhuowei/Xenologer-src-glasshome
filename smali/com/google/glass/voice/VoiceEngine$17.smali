.class Lcom/google/glass/voice/VoiceEngine$17;
.super Ljava/lang/Thread;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->startReadingFromMicrophone(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;

.field final synthetic val$inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$17;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceEngine$17;->val$inputStream:Ljava/io/InputStream;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v3, 0xa0

    const/4 v6, 0x0

    .line 980
    new-array v0, v3, [B

    .line 981
    .local v0, data:[B
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$17;->val$inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$17;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/glass/voice/VoiceEngine;->access$1700(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 983
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$17;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #calls: Lcom/google/glass/voice/VoiceEngine;->checkPaused()V
    invoke-static {v3}, Lcom/google/glass/voice/VoiceEngine;->access$1800(Lcom/google/glass/voice/VoiceEngine;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    const/4 v2, 0x0

    .line 991
    .local v2, read:I
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$17;->val$inputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 992
    if-lez v2, :cond_1

    .line 993
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$17;->this$0:Lcom/google/glass/voice/VoiceEngine;

    const/4 v4, 0x0

    #calls: Lcom/google/glass/voice/VoiceEngine;->handleAudioData([BII)V
    invoke-static {v3, v0, v4, v2}, Lcom/google/glass/voice/VoiceEngine;->access$1900(Lcom/google/glass/voice/VoiceEngine;[BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1001
    :cond_1
    :goto_0
    if-gez v2, :cond_0

    .line 1002
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$17;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/glass/voice/VoiceEngine;->access$1700(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1006
    .end local v2           #read:I
    :cond_2
    :goto_1
    return-void

    .line 984
    :catch_0
    move-exception v1

    .line 985
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Interrupted waiting for mic read unpause"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_1

    .line 995
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v2       #read:I
    :catch_1
    move-exception v1

    .line 998
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IOException shouldn\'t happen!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

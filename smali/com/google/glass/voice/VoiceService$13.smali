.class Lcom/google/glass/voice/VoiceService$13;
.super Ljava/lang/Thread;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceService;->startReadingFromMicrophone(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;

.field final synthetic val$inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$13;->this$0:Lcom/google/glass/voice/VoiceService;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceService$13;->val$inputStream:Ljava/io/InputStream;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v3, 0xa0

    .line 1051
    new-array v0, v3, [B

    .line 1052
    .local v0, data:[B
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService$13;->val$inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/voice/VoiceService$13;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/glass/voice/VoiceService;->access$2200(Lcom/google/glass/voice/VoiceService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1056
    const/4 v2, 0x0

    .line 1058
    .local v2, read:I
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService$13;->val$inputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1064
    :goto_0
    if-gez v2, :cond_0

    .line 1068
    .end local v2           #read:I
    :cond_1
    return-void

    .line 1059
    .restart local v2       #read:I
    :catch_0
    move-exception v1

    .line 1062
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IOException shouldn\'t happen!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

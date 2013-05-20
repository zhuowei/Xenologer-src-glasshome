.class Lcom/google/glass/voice/VoiceService$12;
.super Ljava/lang/Object;
.source "VoiceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceService;->startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;

.field final synthetic val$config:Lcom/google/glass/voice/VoiceConfig;

.field final synthetic val$finalAttemptsMade:I

.field final synthetic val$retryStrategy:Lcom/google/glass/util/RetryStrategy;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$12;->this$0:Lcom/google/glass/voice/VoiceService;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceService$12;->val$config:Lcom/google/glass/voice/VoiceConfig;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceService$12;->val$retryStrategy:Lcom/google/glass/util/RetryStrategy;

    iput p4, p0, Lcom/google/glass/voice/VoiceService$12;->val$finalAttemptsMade:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 973
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying starting voice config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceService$12;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$12;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$12;->val$config:Lcom/google/glass/voice/VoiceConfig;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceService$12;->val$retryStrategy:Lcom/google/glass/util/RetryStrategy;

    iget v3, p0, Lcom/google/glass/voice/VoiceService$12;->val$finalAttemptsMade:I

    #calls: Lcom/google/glass/voice/VoiceService;->startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceService;->access$2100(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    .line 975
    return-void
.end method

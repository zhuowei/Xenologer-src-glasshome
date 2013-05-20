.class Lcom/google/glass/voice/VoiceService$10;
.super Ljava/lang/Object;
.source "VoiceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceService;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;

.field final synthetic val$command:Lcom/google/glass/voice/VoiceCommand;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$10;->this$0:Lcom/google/glass/voice/VoiceService;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceService$10;->val$command:Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$10;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$10;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$10;->val$command:Lcom/google/glass/voice/VoiceCommand;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V

    .line 813
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice command triggered while we had no listener; queueing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$10;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$10;->val$command:Lcom/google/glass/voice/VoiceCommand;

    #calls: Lcom/google/glass/voice/VoiceService;->queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceService;->access$1700(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0
.end method

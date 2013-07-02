.class Lcom/google/glass/voice/VoiceEngine$14;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;

.field final synthetic val$command:Lcom/google/glass/voice/VoiceCommand;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$14;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine$14;->val$command:Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$14;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$14;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$14;->val$command:Lcom/google/glass/voice/VoiceCommand;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V

    .line 725
    :goto_0
    return-void

    .line 722
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice command triggered while we had no listener; queueing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$14;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$14;->val$command:Lcom/google/glass/voice/VoiceCommand;

    #calls: Lcom/google/glass/voice/VoiceEngine;->queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->access$1200(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0
.end method

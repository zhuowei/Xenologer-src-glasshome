.class Lcom/google/glass/input/InputDetector$3;
.super Ljava/lang/Object;
.source "InputDetector.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/InputDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/InputDetector;


# direct methods
.method constructor <init>(Lcom/google/glass/input/InputDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/glass/input/InputDetector$3;->this$0:Lcom/google/glass/input/InputDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioData([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$3;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$800(Lcom/google/glass/input/InputDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$3;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$800(Lcom/google/glass/input/InputDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 2
    .parameter "amplitude"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$3;->this$0:Lcom/google/glass/input/InputDetector;

    #setter for: Lcom/google/glass/input/InputDetector;->voiceAmplitude:D
    invoke-static {v0, p1, p2}, Lcom/google/glass/input/InputDetector;->access$902(Lcom/google/glass/input/InputDetector;D)D

    .line 189
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$3;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$800(Lcom/google/glass/input/InputDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 190
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$3;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$800(Lcom/google/glass/input/InputDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 174
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$3;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$800(Lcom/google/glass/input/InputDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/glass/input/InputDetector$3;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/InputDetector;->access$800(Lcom/google/glass/input/InputDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

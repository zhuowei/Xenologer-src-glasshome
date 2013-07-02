.class Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
.super Lcom/google/glass/voice/IVoiceServiceListener$Stub;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalVoiceServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/VoiceInputHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1400(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAudioData([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1200(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1200(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 2
    .parameter "amplitude"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #setter for: Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D
    invoke-static {v0, p1, p2}, Lcom/google/glass/input/VoiceInputHelper;->access$1302(Lcom/google/glass/input/VoiceInputHelper;D)D

    .line 209
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1200(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1200(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1200(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1200(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1200(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

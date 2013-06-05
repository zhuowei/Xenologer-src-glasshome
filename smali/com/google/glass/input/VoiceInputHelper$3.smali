.class Lcom/google/glass/input/VoiceInputHelper$3;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/VoiceInputHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper$3;->this$0:Lcom/google/glass/input/VoiceInputHelper;

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
    .line 131
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$3;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$800(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$3;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$800(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 2
    .parameter "amplitude"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$3;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #setter for: Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D
    invoke-static {v0, p1, p2}, Lcom/google/glass/input/VoiceInputHelper;->access$902(Lcom/google/glass/input/VoiceInputHelper;D)D

    .line 142
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$3;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$800(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$3;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$800(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$3;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$800(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$3;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$800(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    return-void
.end method

.class Lcom/google/glass/voice/VoiceEngine$1;
.super Landroid/os/Handler;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 185
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$000(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received screen off broadcast, setting VoiceConfig to OFF"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v0, v1, v3}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received screen off broadcast, but screen was on, ignoring"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/voice/VoiceServiceListener;->onResampledAudioData([BII)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

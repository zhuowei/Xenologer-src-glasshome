.class Lcom/google/glass/voice/VoiceService$1;
.super Landroid/os/Handler;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$1;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$1;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received screen off broadcast, setting VoiceConfig to OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$1;->this$0:Lcom/google/glass/voice/VoiceService;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    const/4 v2, 0x0

    #calls: Lcom/google/glass/voice/VoiceService;->setConfigAsync(Lcom/google/glass/voice/VoiceConfig;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfig;Z)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received screen off broadcast, but screen was on, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$1;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$1;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/voice/VoiceServiceListener;->onResampledAudioData([BII)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

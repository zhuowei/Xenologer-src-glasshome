.class Lcom/google/glass/voice/VoiceService$3;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
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
    .line 232
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$3;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/headsetReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 235
    invoke-static {p1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    .line 236
    .local v0, isInCall:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$3;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v1}, Lcom/google/glass/voice/VoiceService;->access$500(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-eq v1, v2, :cond_0

    .line 237
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$3;->this$0:Lcom/google/glass/voice/VoiceService;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    const/4 v3, 0x1

    #calls: Lcom/google/glass/voice/VoiceService;->setConfigAsync(Lcom/google/glass/voice/VoiceConfig;Z)V
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 239
    :cond_0
    return-void
.end method

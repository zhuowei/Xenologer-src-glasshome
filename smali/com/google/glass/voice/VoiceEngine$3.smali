.class Lcom/google/glass/voice/VoiceEngine$3;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
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
    .line 215
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$3;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Ljava/lang/String;

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

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 218
    invoke-static {p1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    .line 219
    .local v0, isInCall:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$3;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$400(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-eq v1, v2, :cond_0

    .line 220
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$3;->this$0:Lcom/google/glass/voice/VoiceEngine;

    sget-object v2, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 222
    :cond_0
    return-void
.end method

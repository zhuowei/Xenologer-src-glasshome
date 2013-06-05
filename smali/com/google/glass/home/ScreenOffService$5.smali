.class Lcom/google/glass/home/ScreenOffService$5;
.super Ljava/lang/Object;
.source "ScreenOffService.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/ScreenOffService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/ScreenOffService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/ScreenOffService;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioData([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 324
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 327
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 0
    .parameter "amplitude"

    .prologue
    .line 330
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 305
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognized voice command while screen off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #calls: Lcom/google/glass/home/ScreenOffService;->triggerOkGlass()V
    invoke-static {v0}, Lcom/google/glass/home/ScreenOffService;->access$1000(Lcom/google/glass/home/ScreenOffService;)V

    .line 315
    :goto_0
    return-void

    .line 308
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #calls: Lcom/google/glass/home/ScreenOffService;->triggerReadAloud()V
    invoke-static {v0}, Lcom/google/glass/home/ScreenOffService;->access$1100(Lcom/google/glass/home/ScreenOffService;)V

    goto :goto_0

    .line 310
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #calls: Lcom/google/glass/home/ScreenOffService;->triggerReply()V
    invoke-static {v0}, Lcom/google/glass/home/ScreenOffService;->access$1200(Lcom/google/glass/home/ScreenOffService;)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown voice command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onVoiceServiceConnected()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

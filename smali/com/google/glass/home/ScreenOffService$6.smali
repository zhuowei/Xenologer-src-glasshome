.class Lcom/google/glass/home/ScreenOffService$6;
.super Ljava/lang/Object;
.source "ScreenOffService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 377
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$6;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 380
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$6;->this$0:Lcom/google/glass/home/ScreenOffService;

    check-cast p2, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    .end local p2
    #setter for: Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    invoke-static {v0, p2}, Lcom/google/glass/home/ScreenOffService;->access$1102(Lcom/google/glass/home/ScreenOffService;Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    .line 382
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$6;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/home/ScreenOffService;->access$1600(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceServiceConnected()V

    .line 383
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$6;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/home/ScreenOffService;->access$1600(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceServiceDisconnected()V

    .line 389
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$6;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    invoke-static {v0}, Lcom/google/glass/home/ScreenOffService;->access$1100(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 390
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$6;->this$0:Lcom/google/glass/home/ScreenOffService;

    #setter for: Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    invoke-static {v0, v2}, Lcom/google/glass/home/ScreenOffService;->access$1102(Lcom/google/glass/home/ScreenOffService;Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    .line 391
    return-void
.end method

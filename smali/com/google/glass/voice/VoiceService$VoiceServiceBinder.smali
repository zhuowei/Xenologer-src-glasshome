.class public Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
.super Landroid/os/Binder;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V
    .locals 2
    .parameter "voiceSearchUi"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #setter for: Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceService;->access$902(Lcom/google/glass/voice/VoiceService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 346
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    new-instance v1, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$2;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$2;-><init>(Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)V

    #calls: Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceService;->access$700(Lcom/google/glass/voice/VoiceService;Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public detachVoiceSearchUi()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    new-instance v1, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$3;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$3;-><init>(Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)V

    #calls: Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceService;->access$700(Lcom/google/glass/voice/VoiceService;Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    new-instance v1, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$4;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$4;-><init>(Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)V

    #calls: Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceService;->access$700(Lcom/google/glass/voice/VoiceService;Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public getConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService;->getVoiceConfigDescriptor()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #calls: Lcom/google/glass/voice/VoiceService;->getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$800(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    return-object v0
.end method

.method getVoiceService()Lcom/google/glass/voice/VoiceService;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    return-object v0
.end method

.method public refeedLastCommand()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService;->refeedLastCommand()V

    .line 374
    return-void
.end method

.method public setConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    .locals 1
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #calls: Lcom/google/glass/voice/VoiceService;->setConfigAsync(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    invoke-static {v0, p1, p2}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 334
    return-void
.end method

.method public setListener(Lcom/google/glass/voice/VoiceServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceService;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 321
    return-void
.end method

.method public updateConfigs()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    new-instance v1, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder$1;-><init>(Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)V

    #calls: Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceService;->access$700(Lcom/google/glass/voice/VoiceService;Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

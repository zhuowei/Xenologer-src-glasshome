.class public Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
.super Lcom/google/glass/voice/IVoiceService$Stub;
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
    .line 38
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 46
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->register(Landroid/os/IInterface;)Z

    .line 49
    return-void
.end method

.method public addVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 76
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->register(Landroid/os/IInterface;)Z

    .line 79
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$100(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->endpointNetworkRecognizer()V

    .line 91
    return-void
.end method

.method public getConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$100(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->getVoiceConfigDescriptor()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$100(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    return-object v0
.end method

.method getVoiceService()Lcom/google/glass/voice/VoiceService;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    return-object v0
.end method

.method public refeedLastCommand()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$100(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->refeedLastCommand()V

    .line 96
    return-void
.end method

.method public removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 53
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->unregister(Landroid/os/IInterface;)Z

    .line 56
    return-void
.end method

.method public removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 83
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->unregister(Landroid/os/IInterface;)Z

    .line 86
    return-void
.end method

.method public setConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    .locals 1
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    .line 60
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$100(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 63
    return-void
.end method

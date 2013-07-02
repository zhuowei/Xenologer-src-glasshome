.class Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$5;
.super Ljava/lang/Object;
.source "BroadcastingVoiceServiceListener.java"

# interfaces
.implements Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$RemoteVoiceListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

.field final synthetic val$newConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$5;->this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    iput-object p2, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$5;->val$newConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doOperation(Landroid/os/IInterface;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    check-cast p1, Lcom/google/glass/voice/IVoiceServiceListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$5;->doOperation(Lcom/google/glass/voice/IVoiceServiceListener;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$5;->val$newConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v0}, Lcom/google/glass/voice/IVoiceServiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 68
    return-void
.end method

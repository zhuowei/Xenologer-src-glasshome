.class Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$11;
.super Ljava/lang/Object;
.source "BroadcastingVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$RemoteVoiceInputCallbackOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

.field final synthetic val$exception:Lcom/google/glass/voice/network/SpeechException;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/glass/voice/network/SpeechException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$11;->this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    iput-object p2, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$11;->val$exception:Lcom/google/glass/voice/network/SpeechException;

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
    .line 143
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$11;->doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$11;->val$exception:Lcom/google/glass/voice/network/SpeechException;

    invoke-interface {p1, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 147
    return-void
.end method

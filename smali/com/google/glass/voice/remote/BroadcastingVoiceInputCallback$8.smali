.class Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$8;
.super Ljava/lang/Object;
.source "BroadcastingVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$RemoteVoiceInputCallbackOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

.field final synthetic val$response:Lcom/google/majel/proto/MajelProtos$MajelResponse;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$8;->this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    iput-object p2, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$8;->val$response:Lcom/google/majel/proto/MajelProtos$MajelResponse;

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
    .line 113
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$8;->doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

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
    .line 116
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$8;->val$response:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-virtual {v0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback;->onMajelResult([B)V

    .line 117
    return-void
.end method

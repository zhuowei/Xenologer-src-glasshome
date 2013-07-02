.class Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12$1;
.super Lcom/google/glass/voice/network/ISpeechLevelSource$Stub;
.source "BroadcastingVoiceInputCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;->doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12$1;->this$1:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;

    invoke-direct {p0}, Lcom/google/glass/voice/network/ISpeechLevelSource$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeechLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12$1;->this$1:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;

    iget-object v0, v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;->val$source:Lcom/google/glass/voice/network/SpeechLevelSource;

    invoke-interface {v0}, Lcom/google/glass/voice/network/SpeechLevelSource;->getSpeechLevel()I

    move-result v0

    return v0
.end method

.class public Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
.super Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.source "BroadcastingVoiceServiceListener.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$RemoteVoiceListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster",
        "<",
        "Lcom/google/glass/voice/IVoiceServiceListener;",
        ">;",
        "Lcom/google/glass/voice/VoiceServiceListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onAudioData([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 44
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$3;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;[BII)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 50
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$4;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;[BII)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 60
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 34
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;D)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 40
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 24
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$1;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;Lcom/google/glass/voice/VoiceCommand;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 30
    return-void
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 64
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$5;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$5;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 70
    return-void
.end method

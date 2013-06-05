.class public Lcom/google/glass/input/VoiceListenerAdapter;
.super Ljava/lang/Object;
.source "VoiceListenerAdapter.java"

# interfaces
.implements Lcom/google/glass/input/VoiceListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceAmplitudeChanged(D)Z
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "command"

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceServiceConnected()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

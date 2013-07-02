.class public Lcom/google/glass/input/VoiceListener$SimpleVoiceListener;
.super Ljava/lang/Object;
.source "VoiceListener.java"

# interfaces
.implements Lcom/google/glass/input/VoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/VoiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleVoiceListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/google/glass/input/VoiceListener$SimpleVoiceListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceAmplitudeChanged(D)Z
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "command"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    .locals 0
    .parameter "newConfig"
    .parameter "expected"

    .prologue
    .line 88
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

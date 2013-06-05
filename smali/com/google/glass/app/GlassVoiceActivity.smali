.class public abstract Lcom/google/glass/app/GlassVoiceActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "GlassVoiceActivity.java"

# interfaces
.implements Lcom/google/glass/input/VoiceListener;


# instance fields
.field private isRunning:Z

.field private shouldKeepVoiceOn:Z

.field private voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassVoiceActivity;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p0, :cond_0

    move-object p0, v0

    .line 222
    .end local p0
    :goto_0
    return-object p0

    .line 217
    .restart local p0
    :cond_0
    instance-of v1, p0, Lcom/google/glass/app/GlassVoiceActivity;

    if-eqz v1, :cond_1

    .line 218
    check-cast p0, Lcom/google/glass/app/GlassVoiceActivity;

    goto :goto_0

    .line 219
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 220
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassVoiceActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassVoiceActivity;

    move-result-object p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object p0, v0

    .line 222
    goto :goto_0
.end method


# virtual methods
.method public attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V
    .locals 1
    .parameter "voiceSearchUi"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/VoiceInputHelper;->attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V

    .line 139
    return-void
.end method

.method public bindVoiceService()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->shouldAllowVoiceInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()V

    .line 72
    :cond_0
    return-void
.end method

.method public detachVoiceSearchUi()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->detachVoiceSearchUi()V

    .line 144
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->endpointNetworkRecognizer()V

    .line 149
    return-void
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method public getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public onAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    .line 56
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->shouldKeepVoiceOn:Z

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->unbindVoiceService()V

    .line 65
    return-void
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    .line 46
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->shouldKeepVoiceOn:Z

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->bindVoiceService()V

    .line 51
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)Z
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "command"

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceServiceConnected()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice Service Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not applying initial voice config because we are paused."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->unbindVoiceService()V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 174
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->updateVoiceConfigs()V

    .line 175
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    goto :goto_0
.end method

.method public onVoiceServiceDisconnected()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->shouldKeepVoiceOn:Z

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 129
    return-void
.end method

.method public refeedLastVoiceCommand()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->refeedLastVoiceCommand()V

    .line 112
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 94
    return-void
.end method

.method protected shouldAllowVoiceInput()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1
    .parameter "errorDialog"

    .prologue
    .line 204
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 205
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V

    .line 206
    return-void
.end method

.method public unbindVoiceService()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->shouldAllowVoiceInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->unbindVoiceService()V

    .line 79
    :cond_0
    return-void
.end method

.method public updateVoiceConfigs()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->updateVoiceConfigs()V

    .line 89
    return-void
.end method

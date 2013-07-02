.class public abstract Lcom/google/glass/app/GlassVoiceActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "GlassVoiceActivity.java"

# interfaces
.implements Lcom/google/glass/input/VoiceListener;


# static fields
.field private static final GUARD_PHRASE_ANIMATION_DURATION_MILLIS:J = 0x1f4L


# instance fields
.field private isRunning:Z

.field private shouldKeepVoiceOn:Z

.field private voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassVoiceActivity;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 244
    if-nez p0, :cond_0

    move-object p0, v0

    .line 251
    .end local p0
    :goto_0
    return-object p0

    .line 246
    .restart local p0
    :cond_0
    instance-of v1, p0, Lcom/google/glass/app/GlassVoiceActivity;

    if-eqz v1, :cond_1

    .line 247
    check-cast p0, Lcom/google/glass/app/GlassVoiceActivity;

    goto :goto_0

    .line 248
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 249
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

    .line 251
    goto :goto_0
.end method


# virtual methods
.method public animateInGuardPhrase(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 5
    .parameter "gradient"
    .parameter "guardPhrase"

    .prologue
    const-wide/16 v3, 0x1f4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    .line 173
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 176
    invoke-virtual {p2, v2}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 177
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    .line 179
    invoke-virtual {p2}, Lcom/google/glass/widget/TypophileTextView;->bringToFront()V

    .line 180
    invoke-virtual {p2}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 181
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 182
    return-void
.end method

.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/VoiceInputHelper;->attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 141
    return-void
.end method

.method public bindVoiceService()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->shouldAllowVoiceInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()V

    .line 86
    :cond_0
    return-void
.end method

.method public detachVoiceInputCallback()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->detachVoiceInputCallback()V

    .line 146
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->endpointNetworkRecognizer()V

    .line 151
    return-void
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 110
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
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper;

    invoke-static {p0}, Lcom/google/glass/input/VoiceInputHelper;->newUserActivityObserver(Landroid/content/Context;)Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    iput-boolean v4, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    .line 70
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPause: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->shouldKeepVoiceOn:Z

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->unbindVoiceService()V

    .line 79
    return-void
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 59
    iput-boolean v2, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    .line 60
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResume: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iput-boolean v4, p0, Lcom/google/glass/app/GlassVoiceActivity;->shouldKeepVoiceOn:Z

    .line 64
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->bindVoiceService()V

    .line 65
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)Z
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "command"

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    .locals 0
    .parameter "newConfig"
    .parameter "expected"

    .prologue
    .line 230
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice Service Connected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not applying initial voice config because we are paused."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->unbindVoiceService()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 196
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    goto :goto_0
.end method

.method public onVoiceServiceDisconnected()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public overrideVoiceInputHelper(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceInputHelper;
    .locals 1
    .parameter "override"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 45
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 46
    .local v0, temp:Lcom/google/glass/input/VoiceInputHelper;
    iput-object p1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 47
    return-object v0
.end method

.method public preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->shouldKeepVoiceOn:Z

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 131
    return-void
.end method

.method public refeedLastVoiceCommand()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->refeedLastVoiceCommand()V

    .line 120
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 103
    return-void
.end method

.method protected shouldAllowVoiceInput()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1
    .parameter "errorDialog"

    .prologue
    .line 225
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 226
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V

    .line 227
    return-void
.end method

.method public unbindVoiceService()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->shouldAllowVoiceInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->unbindVoiceService()V

    .line 93
    :cond_0
    return-void
.end method

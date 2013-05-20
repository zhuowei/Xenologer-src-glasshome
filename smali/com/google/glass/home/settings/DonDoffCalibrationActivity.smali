.class public Lcom/google/glass/home/settings/DonDoffCalibrationActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "DonDoffCalibrationActivity.java"


# static fields
.field private static final MAXIMUM_CALIBRATION_TIME_MS:J


# instance fields
.field private backgroundVideoView:Landroid/widget/VideoView;

.field private doCalibrationTimeout:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isCalibrating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->MAXIMUM_CALIBRATION_TIME_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$1;-><init>(Lcom/google/glass/home/settings/DonDoffCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->doCalibrationTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/settings/DonDoffCalibrationActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    return-void
.end method

.method private beginDonDoffCalibrationInterval()Z
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Begin don/doff calibration interval..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {p0}, Lcom/google/glass/util/HiddenApiHelper;->beginDonDoffCalibrationInterval(Landroid/content/Context;)Z

    move-result v0

    .line 190
    .local v0, success:Z
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "... done beginning don/doff calibration interval!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-boolean v0, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->isCalibrating:Z

    .line 192
    return v0
.end method

.method private endDonDoffCalibrationInterval()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 197
    iget-boolean v1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->isCalibrating:Z

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return v3

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "End don/doff calibration interval..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {p0}, Lcom/google/glass/util/HiddenApiHelper;->endDonDoffCalibrationInterval(Landroid/content/Context;)Z

    move-result v0

    .line 203
    .local v0, success:Z
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "... done ending don/doff calibration interval!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pauseBackgroundVideo()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 88
    return-void
.end method

.method private showConfirmationMessageThenFinish()V
    .locals 3

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->stopCalibrationTimeoutClock()V

    .line 240
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->pauseBackgroundVideo()V

    .line 243
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/glass/home/R$string;->don_doff_calibrated_confirmation:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$4;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$4;-><init>(Lcom/google/glass/home/settings/DonDoffCalibrationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 255
    return-void
.end method

.method private showErrorDialogAndFinish(I)V
    .locals 4
    .parameter "messageId"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->pauseBackgroundVideo()V

    .line 223
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$drawable;->ic_warning_large:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$3;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$3;-><init>(Lcom/google/glass/home/settings/DonDoffCalibrationActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 234
    .local v0, dialog:Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 235
    return-void
.end method

.method private startBackgroundVideo()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 84
    return-void
.end method

.method private startCalibrationTimeoutClock()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->doCalibrationTimeout:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->MAXIMUM_CALIBRATION_TIME_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void
.end method

.method private stopCalibrationTimeoutClock()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->doCalibrationTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method private updateAndSaveDonDoffCalibration()Z
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Update and save don/doff calibration data..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {p0}, Lcom/google/glass/util/HiddenApiHelper;->updateAndSaveDonDoffCalibration(Landroid/content/Context;)Z

    move-result v0

    .line 213
    .local v0, success:Z
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "... done updating and save don/doff calibration data!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v0
.end method


# virtual methods
.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "End don doff calibration interval."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->endDonDoffCalibrationInterval()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to end don/doff calibration interval."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget v0, Lcom/google/glass/home/R$string;->don_doff_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    .line 155
    :goto_0
    return v2

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->updateAndSaveDonDoffCalibration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to update and save don doff calibration."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget v0, Lcom/google/glass/home/R$string;->don_doff_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {p0, v2}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->setDonDoffDetectionEnabled(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to enable the don doff detector."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget v0, Lcom/google/glass/home/R$string;->don_doff_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 154
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showConfirmationMessageThenFinish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->handler:Landroid/os/Handler;

    .line 66
    sget v1, Lcom/google/glass/home/R$id;->don_doff_background_video_view:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    .line 67
    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$2;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$2;-><init>(Lcom/google/glass/home/settings/DonDoffCalibrationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 75
    sget v1, Lcom/google/glass/home/R$raw;->don_doff_background:I

    invoke-static {p0, v1}, Lcom/google/glass/util/IconProvider;->buildDrawableUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 79
    iput-boolean v3, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->isCalibrating:Z

    .line 80
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismisser"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 121
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->pauseBackgroundVideo()V

    .line 122
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->endDonDoffCalibrationInterval()Z

    .line 123
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->stopCalibrationTimeoutClock()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 101
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/gesture/EyeGestureUtils;->enableGazeServiceAsync(Landroid/content/Context;Z)V

    .line 103
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting don doff calibration interval..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->isCalibrating:Z

    .line 107
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->beginDonDoffCalibrationInterval()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to start wink calibration interval."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget v0, Lcom/google/glass/home/R$string;->don_doff_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->startBackgroundVideo()V

    .line 114
    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->startCalibrationTimeoutClock()V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/google/glass/home/R$layout;->don_doff_calibration_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldAllowVoiceInput()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

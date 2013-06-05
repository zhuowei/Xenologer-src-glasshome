.class public Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "HeadWakeAngleChooserActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DEFAULT_GLU_ANGLE_DEGS:F = 30.0f

.field private static final GLU_ANGLE_KEY:Ljava/lang/String; = "glu_angle_degs"

.field private static final HEAD_GESTURE_SETTINGS_KEY:Ljava/lang/String; = "head_gesture_settings"

.field private static final HEAD_WAKE_TRIGGER_HYSTERESIS_DEGREES:F = 7.0f

.field private static final MAX_PITCH_ANGLE_DEGS:F = 40.0f

.field private static final MIN_PITCH_ANGLE_DEGS:F = 10.0f


# instance fields
.field private angleTextView:Lcom/google/glass/widget/TypophileTextView;

.field private currentPitch:F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private headView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method private getGravitySensor()Landroid/hardware/Sensor;
    .locals 7

    .prologue
    const/16 v5, 0x9

    .line 220
    iget-object v4, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v4, :cond_0

    .line 221
    const/4 v2, 0x0

    .line 235
    :goto_0
    return-object v2

    .line 225
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 226
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, vendor:Ljava/lang/String;
    const-string v4, "Invensense"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MPL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #sensor:Landroid/hardware/Sensor;
    .end local v3           #vendor:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    goto :goto_0
.end method

.method public static getHeadWakeAngleDegs(Landroid/content/Context;)F
    .locals 4
    .parameter "context"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    const-string v2, "head_gesture_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/app/GlassApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "glu_angle_degs"

    const/high16 v2, 0x41f0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getHeadWakeHysteresisAngleDegs(Landroid/content/Context;)F
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    const/high16 v0, 0x40e0

    return v0
.end method

.method private onGravitySensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 240
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 241
    .local v1, x:F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v2, v4, v5

    .line 242
    .local v2, y:F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v3, v4, v5

    .line 243
    .local v3, z:F
    float-to-double v4, v3

    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    neg-float v0, v4

    .line 244
    .local v0, pitch:F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->setPitch(F)V

    .line 245
    return-void
.end method

.method private saveHeadWakeAngleDegsToSettings(F)V
    .locals 4
    .parameter "angleDegs"

    .prologue
    .line 192
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    const-string v2, "head_gesture_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/app/GlassApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing angle key: glu_angle_degs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to prefs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "head_gesture_settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glu_angle_degs"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t open shared prefs: head_gesture_settings"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPitch(F)V
    .locals 6
    .parameter "angleDegs"

    .prologue
    .line 249
    const/high16 v2, 0x4220

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 250
    const/high16 p1, 0x4220

    .line 255
    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->currentPitch:F

    .line 256
    iget-object v2, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->headView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    invoke-virtual {v2, p1}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->setHeadAngleDegs(F)V

    .line 259
    const/high16 v2, 0x3f00

    add-float/2addr v2, p1

    float-to-int v1, v2

    .line 260
    .local v1, roundedAngleDegs:I
    sget v2, Lcom/google/glass/home/R$string;->head_wake_angle_text_format:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, formattedString:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->angleTextView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    return-void

    .line 251
    .end local v0           #formattedString:Ljava/lang/String;
    .end local v1           #roundedAngleDegs:I
    :cond_1
    const/high16 v2, 0x4120

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 252
    const/high16 p1, 0x4120

    goto :goto_0
.end method

.method private showConfirmationMessageThenFinish()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/glass/home/R$string;->wake_angle_set_confirmation:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity$1;-><init>(Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 189
    return-void
.end method

.method private startSensors()V
    .locals 3

    .prologue
    .line 205
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 206
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getGravitySensor()Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->gravitySensor:Landroid/hardware/Sensor;

    .line 209
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->gravitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 213
    return-void
.end method

.method private stopSensors()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 217
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "type"

    .prologue
    .line 129
    return-void
.end method

.method public onConfirm()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 139
    iget v3, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->currentPitch:F

    invoke-direct {p0, v3}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->saveHeadWakeAngleDegsToSettings(F)V

    .line 142
    iget v3, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->currentPitch:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, eventData:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    .line 144
    .local v2, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing new GLU angle to hardware: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->currentPitch:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v3, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->currentPitch:F

    const/high16 v4, 0x40e0

    invoke-static {p0, v3, v4}, Lcom/google/glass/util/HiddenApiHelper;->setGlobalLookUpGestureParameters(Landroid/content/Context;FF)Z

    .line 153
    invoke-static {p0}, Lcom/google/glass/util/HiddenApiHelper;->isGlobalLookUpGestureEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 154
    .local v1, isHeadWakeEnabled:Z
    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Angle chooser successfully set angle, but feature is off.  Enabling!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p0, v6}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->setHeadWakeEnabledPersistent(Landroid/content/Context;Z)V

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->showConfirmationMessageThenFinish()V

    .line 161
    return v6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcom/google/glass/home/R$id;->head_wake_angle_chooser_angle_text:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->angleTextView:Lcom/google/glass/widget/TypophileTextView;

    .line 86
    sget v0, Lcom/google/glass/home/R$id;->head_wake_angle_chooser_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->headView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    .line 90
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->headView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->setHeadWakeEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->headView:Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    invoke-static {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getHeadWakeAngleDegs(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->setHeadAngleDegs(F)V

    .line 95
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismisser"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 170
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->finish()V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 111
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->stopSensors()V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 105
    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->startSensors()V

    .line 106
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sensor event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->onGravitySensorEvent(Landroid/hardware/SensorEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/google/glass/home/R$layout;->head_wake_angle_chooser_activity:I

    return v0
.end method

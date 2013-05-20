.class public Lcom/google/glass/input/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/OrientationHelper$OrientationListener;
    }
.end annotation


# static fields
.field private static final MAX_TIMESTAMP_DISCONTINUITY_IN_SECS:F = 0.25f

.field private static final MOVING_AVERAGE_ALPHA:F = 1.0E-5f

.field private static final NANOS_TO_S:F = 1.0E-9f

.field private static final REBIND_WAIT_TIME:J = 0x7d0L

.field private static final ROUNDING_PRECISION:F = 0.1f

.field private static final SENSOR_RATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final USE_INVENSENSE_MPL:Z = true

.field private static final USE_MAGNETIC_FIELD:Z


# instance fields
.field private final context:Landroid/content/Context;

.field private gravitySensor:Landroid/hardware/Sensor;

.field private gyroYMovingAverage:F

.field private gyroscopeSensor:Landroid/hardware/Sensor;

.field private volatile integratedGyroY:F

.field private lastPitch:F

.field private lastRoll:F

.field private lastTimestamp:J

.field private lastYaw:F

.field private listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

.field private offsetPitch:F

.field private offsetRoll:F

.field private offsetYaw:F

.field private final orientation:[F

.field private final rotationMatrix:[F

.field private rotationVectorSensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final tempRotationMatrix:[F

.field private triedRebinding:Z

.field private triedRebindingTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/input/OrientationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/OrientationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/OrientationHelper$OrientationListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    const/16 v1, 0x10

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    .line 57
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->tempRotationMatrix:[F

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    .line 95
    iput-object p1, p0, Lcom/google/glass/input/OrientationHelper;->context:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/input/OrientationHelper;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/input/OrientationHelper;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/input/OrientationHelper;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private callListener(FFFJ)V
    .locals 6
    .parameter "yaw"
    .parameter "pitch"
    .parameter "roll"
    .parameter "timestamp"

    .prologue
    .line 330
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 332
    iput p1, p0, Lcom/google/glass/input/OrientationHelper;->lastYaw:F

    .line 333
    iput p2, p0, Lcom/google/glass/input/OrientationHelper;->lastPitch:F

    .line 334
    iput p3, p0, Lcom/google/glass/input/OrientationHelper;->lastRoll:F

    .line 337
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetYaw:F

    sub-float/2addr p1, v0

    .line 338
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetPitch:F

    sub-float/2addr p2, v0

    .line 339
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetRoll:F

    sub-float/2addr p3, v0

    .line 347
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/input/OrientationHelper$OrientationListener;->onOrientationChanged(FFFJ)V

    .line 350
    :cond_0
    return-void
.end method

.method static getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;
    .locals 8
    .parameter "sensorManager"
    .parameter "type"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 109
    .local v3, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, vendor:Ljava/lang/String;
    const-string v5, "Invensense"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "MPL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    sget-object v5, Lcom/google/glass/input/OrientationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using sensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #vendor:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 118
    :cond_1
    sget-object v5, Lcom/google/glass/input/OrientationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find Invensese MPL sensor of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 123
    .local v0, defaultSensor:Landroid/hardware/Sensor;
    if-nez v0, :cond_2

    .line 124
    sget-object v5, Lcom/google/glass/input/OrientationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No default sensor of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v3, 0x0

    goto :goto_0

    .line 127
    :cond_2
    sget-object v5, Lcom/google/glass/input/OrientationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using default sensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 129
    goto :goto_0
.end method

.method private handleGravitySensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 155
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v0, v5

    .line 156
    .local v6, x:F
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v0, v9

    .line 157
    .local v7, y:F
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v8, v0, v4

    .line 160
    .local v8, z:F
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v9, p0, Lcom/google/glass/input/OrientationHelper;->triedRebindingTime:J

    sub-long/2addr v4, v9

    const-wide/16 v9, 0x7d0

    cmp-long v0, v4, v9

    if-lez v0, :cond_2

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received NaN values from sensor, x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->TAG:Ljava/lang/String;

    const-string v4, "Rebinding since we\'re getting NaN values"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean v9, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/input/OrientationHelper;->triedRebindingTime:J

    .line 176
    invoke-virtual {p0}, Lcom/google/glass/input/OrientationHelper;->stop()V

    .line 177
    invoke-virtual {p0}, Lcom/google/glass/input/OrientationHelper;->start()V

    .line 197
    :cond_2
    :goto_0
    return-void

    .line 182
    :cond_3
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    if-eqz v0, :cond_4

    .line 185
    iput-boolean v5, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    .line 186
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->TAG:Ljava/lang/String;

    const-string v4, "Rebinding successfully gave us valid values"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_4
    neg-float v0, v6

    float-to-double v4, v0

    float-to-double v9, v7

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 192
    .local v3, roll:F
    float-to-double v4, v8

    mul-float v0, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v0, v9

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 194
    .local v2, pitch:F
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    neg-float v0, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 196
    .local v1, yaw:F
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/input/OrientationHelper;->callListener(FFFJ)V

    goto :goto_0
.end method

.method private handleGyroscopeSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 200
    iget-wide v3, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 210
    .local v1, gyroY:F
    iget v3, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    sub-float v3, v1, v3

    const v4, 0x3dcccccd

    invoke-static {v3, v4}, Lcom/google/glass/input/OrientationHelper;->roundValueToPrecision(FF)F

    move-result v2

    .line 213
    .local v2, roundedGyroY:F
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v5, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x3089705f

    mul-float v0, v3, v4

    .line 216
    .local v0, deltaT:F
    const/high16 v3, 0x3e80

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 217
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    .line 230
    .end local v0           #deltaT:F
    .end local v1           #gyroY:F
    .end local v2           #roundedGyroY:F
    :cond_0
    :goto_0
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    .line 231
    return-void

    .line 221
    .restart local v0       #deltaT:F
    .restart local v1       #gyroY:F
    .restart local v2       #roundedGyroY:F
    :cond_1
    iget v3, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    mul-float v4, v2, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    .line 225
    const v3, 0x3727c5ac

    mul-float/2addr v3, v1

    const v4, 0x3f7fff58

    iget v5, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    goto :goto_0
.end method

.method private handleRotationSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 234
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v4}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 236
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    iget-object v4, p0, Lcom/google/glass/input/OrientationHelper;->tempRotationMatrix:[F

    invoke-static {v0, v6, v5, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 238
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->tempRotationMatrix:[F

    iget-object v4, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    invoke-static {v0, v5, v7, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 240
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    iget-object v4, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    invoke-static {v0, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 243
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 244
    .local v1, yaw:F
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    aget v0, v0, v6

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 245
    .local v2, pitch:F
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    aget v0, v0, v7

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 247
    .local v3, roll:F
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/input/OrientationHelper;->callListener(FFFJ)V

    .line 248
    return-void
.end method

.method private static roundValueToPrecision(FF)F
    .locals 1
    .parameter "value"
    .parameter "precision"

    .prologue
    .line 361
    div-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 252
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :sswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/input/OrientationHelper;->handleGravitySensorEvent(Landroid/hardware/SensorEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :sswitch_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/glass/input/OrientationHelper;->handleGyroscopeSensorEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 149
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/google/glass/input/OrientationHelper;->handleRotationSensorEvent(Landroid/hardware/SensorEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x9 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public resetTare()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 376
    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetYaw:F

    .line 377
    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetRoll:F

    .line 378
    return-void
.end method

.method public setListener(Lcom/google/glass/input/OrientationHelper$OrientationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    .line 135
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 258
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    .line 263
    new-instance v1, Lcom/google/glass/input/OrientationHelper$1;

    invoke-direct {v1, p0}, Lcom/google/glass/input/OrientationHelper$1;-><init>(Lcom/google/glass/input/OrientationHelper;)V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Landroid/hardware/SensorManager;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->context:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/input/OrientationHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 295
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 297
    new-instance v0, Lcom/google/glass/input/OrientationHelper$2;

    invoke-direct {v0, p0}, Lcom/google/glass/input/OrientationHelper$2;-><init>(Lcom/google/glass/input/OrientationHelper;)V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/input/OrientationHelper$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    return-void
.end method

.method public tare()V
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->lastYaw:F

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetYaw:F

    .line 369
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->lastRoll:F

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetRoll:F

    .line 370
    return-void
.end method

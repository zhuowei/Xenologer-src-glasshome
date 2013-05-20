.class public Lcom/google/glass/util/BatteryHelper;
.super Ljava/lang/Object;
.source "BatteryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BatteryHelper$BatteryState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final UNKNOWN_LEVEL:I = -0x1

.field private static final UNKNOWN_SCALE:I = -0x1


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BatteryHelper;->context:Landroid/content/Context;

    .line 86
    return-void
.end method


# virtual methods
.method public getChargePercent()F
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)F

    move-result v0

    return v0
.end method

.method public getChargePercent(Landroid/content/Intent;)F
    .locals 6
    .parameter "intent"

    .prologue
    const/high16 v0, -0x4080

    const/4 v4, -0x1

    .line 126
    if-nez p1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 128
    if-nez p1, :cond_1

    .line 129
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    const-string v4, "Unknown battery state."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    const-string v3, "level"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, level:I
    const-string v3, "scale"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, scale:I
    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    .line 140
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float v0, v3, v4

    .line 141
    .local v0, batteryPercent:F
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current battery percent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getCurrentState(Landroid/content/Intent;)Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState(Landroid/content/Intent;)Lcom/google/glass/util/BatteryHelper$BatteryState;
    .locals 3
    .parameter "intent"

    .prologue
    .line 98
    new-instance v0, Lcom/google/glass/util/BatteryHelper$BatteryState;

    invoke-direct {v0}, Lcom/google/glass/util/BatteryHelper$BatteryState;-><init>()V

    .line 100
    .local v0, state:Lcom/google/glass/util/BatteryHelper$BatteryState;
    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 102
    if-nez p1, :cond_0

    .line 103
    sget-object v1, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unknown battery state."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)F

    move-result v1

    iput v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isPowered(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getTimeToDischarge(Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->timeToDischarge:J

    goto :goto_0
.end method

.method public getTimeToDischarge()J
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getTimeToDischarge(Landroid/content/Intent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeToDischarge(Landroid/content/Intent;)J
    .locals 2
    .parameter "intent"

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 253
    if-nez p1, :cond_0

    .line 254
    sget-object v0, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unknown battery state."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-wide/16 v0, -0x1

    .line 259
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "time_to_empty"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public isCharged()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isCharged(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    if-nez p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 163
    if-nez p1, :cond_0

    .line 164
    sget-object v2, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    const-string v4, "Unknown battery state."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return v3

    .line 169
    :cond_0
    const-string v4, "status"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 171
    .local v1, status:I
    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 173
    .local v0, isCharged:Z
    :goto_1
    if-nez v0, :cond_1

    .line 174
    sget-object v4, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    const-string v5, "Driver is not reporting charged, checking percent."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)F

    move-result v4

    const/high16 v5, 0x42be

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    move v0, v2

    .line 178
    :cond_1
    :goto_2
    sget-object v2, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery is charged? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    .line 179
    goto :goto_0

    .end local v0           #isCharged:Z
    :cond_2
    move v0, v3

    .line 171
    goto :goto_1

    .restart local v0       #isCharged:Z
    :cond_3
    move v0, v3

    .line 175
    goto :goto_2
.end method

.method public isCharging()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isCharging(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 192
    if-nez p1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 194
    if-nez p1, :cond_0

    .line 195
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    const-string v4, "Unknown battery state."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return v2

    .line 200
    :cond_0
    const-string v3, "status"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 202
    .local v1, status:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 203
    .local v0, isCharging:Z
    :goto_1
    sget-object v2, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery currently charging? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 204
    goto :goto_0

    .end local v0           #isCharging:Z
    :cond_1
    move v0, v2

    .line 202
    goto :goto_1
.end method

.method public isPowered()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isPowered(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isPowered(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    if-nez p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 225
    if-nez p1, :cond_0

    .line 226
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->TAG:Ljava/lang/String;

    const-string v5, "Unknown battery state."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return v4

    .line 231
    :cond_0
    const-string v5, "plugged"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 232
    .local v2, isPlugged:Z
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v1

    .line 233
    .local v1, isCharging:Z
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v0

    .line 235
    .local v0, isCharged:Z
    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    :goto_2
    move v4, v3

    goto :goto_0

    .end local v0           #isCharged:Z
    .end local v1           #isCharging:Z
    .end local v2           #isPlugged:Z
    :cond_2
    move v2, v4

    .line 231
    goto :goto_1

    .restart local v0       #isCharged:Z
    .restart local v1       #isCharging:Z
    .restart local v2       #isPlugged:Z
    :cond_3
    move v3, v4

    .line 235
    goto :goto_2
.end method

.method retrieveCurrentIntent()Landroid/content/Intent;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/util/BatteryHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

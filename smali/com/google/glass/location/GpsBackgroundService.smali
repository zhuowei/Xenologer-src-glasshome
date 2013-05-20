.class public Lcom/google/glass/location/GpsBackgroundService;
.super Landroid/app/Service;
.source "GpsBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/location/GpsBackgroundService$3;,
        Lcom/google/glass/location/GpsBackgroundService$State;
    }
.end annotation


# static fields
.field public static final EXTRA_EXPECTED_STATE:Ljava/lang/String; = "expected_state"

.field private static final FULL_CHECK_TIME_MS:J = 0x493e0L

.field private static final RESTART_TIME_ON_FAILURE_MS:J = 0x6ddd00L

.field private static final RESTART_TIME_ON_SUCCESS_MS:J = 0xdbba00L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fix:Z

.field private final locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private numSatellites:I

.field state:Lcom/google/glass/location/GpsBackgroundService$State;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final statusListener:Landroid/location/GpsStatus$Listener;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/glass/location/GpsBackgroundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->UNSTARTED:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 222
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/location/GpsBackgroundService$1;-><init>(Lcom/google/glass/location/GpsBackgroundService;)V

    iput-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->statusListener:Landroid/location/GpsStatus$Listener;

    .line 252
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/location/GpsBackgroundService$2;-><init>(Lcom/google/glass/location/GpsBackgroundService;)V

    iput-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/GpsBackgroundService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/location/GpsBackgroundService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/location/GpsBackgroundService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/location/GpsBackgroundService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    return p1
.end method

.method static synthetic access$208(Lcom/google/glass/location/GpsBackgroundService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/location/GpsBackgroundService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/glass/location/GpsBackgroundService;->scheduleNextTask(J)V

    return-void
.end method

.method private expectedState(Landroid/os/Bundle;)Lcom/google/glass/location/GpsBackgroundService$State;
    .locals 2
    .parameter "bundle"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    const-string v0, "expected_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/google/glass/location/GpsBackgroundService$State;->values()[Lcom/google/glass/location/GpsBackgroundService$State;

    move-result-object v0

    const-string v1, "expected_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    .line 118
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    sget-object v1, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 74
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/google/glass/location/GpsBackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 75
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 78
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/google/glass/location/GpsBackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    .line 79
    iput-boolean v3, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    .line 80
    iput v3, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    .line 81
    return-void
.end method

.method private nextState()V
    .locals 5

    .prologue
    .line 159
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running GPS background service, state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fix:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", #satellites:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-wide/16 v0, 0x0

    .line 163
    .local v0, nextTask:J
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$3;->$SwitchMap$com$google$glass$location$GpsBackgroundService$State:[I

    iget-object v3, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    invoke-virtual {v3}, Lcom/google/glass/location/GpsBackgroundService$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 218
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/glass/location/GpsBackgroundService;->scheduleNextTask(J)V

    .line 219
    :goto_1
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->startGPS()V

    .line 167
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK1:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 168
    const-wide/32 v0, 0xea60

    .line 169
    goto :goto_0

    .line 174
    :pswitch_2
    iget-boolean v2, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    if-eqz v2, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 177
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 178
    const-wide/32 v0, 0xdbba00

    goto :goto_0

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    sget-object v3, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK1:Lcom/google/glass/location/GpsBackgroundService$State;

    if-ne v2, v3, :cond_2

    .line 182
    iget v2, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    if-nez v2, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 184
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 185
    const-wide/32 v0, 0x6ddd00

    goto :goto_0

    .line 187
    :cond_1
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK2:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 188
    const-wide/32 v0, 0xea60

    goto :goto_0

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    sget-object v3, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK2:Lcom/google/glass/location/GpsBackgroundService$State;

    if-ne v2, v3, :cond_4

    .line 193
    iget v2, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 194
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 195
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 196
    const-wide/32 v0, 0x6ddd00

    goto :goto_0

    .line 198
    :cond_3
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK4:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 199
    const-wide/32 v0, 0x1d4c0

    goto :goto_0

    .line 203
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 204
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 205
    const-wide/32 v0, 0x6ddd00

    .line 207
    goto :goto_0

    .line 213
    :pswitch_3
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private scheduleNextTask(J)V
    .locals 5
    .parameter "delay"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/glass/location/GpsBackgroundService;->nextTask()Landroid/app/PendingIntent;

    move-result-object v1

    .line 108
    .local v1, pending:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/google/glass/location/GpsBackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 109
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 110
    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/location/GpsBackgroundService;->nextWakeupTime(J)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 111
    return-void
.end method

.method private startGPS()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 123
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "Start GPS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "wake lock already held: may be released too soon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    iput-boolean v3, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    .line 134
    iput v3, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    .line 135
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->statusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 136
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/location/GpsBackgroundService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 138
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method private stopGPS()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "Stop GPS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 145
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->statusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 146
    iput-boolean v2, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    .line 147
    iput v2, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    .line 150
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "wake lock no longer held"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getSatellites(Landroid/location/GpsStatus;)Ljava/lang/Iterable;
    .locals 1
    .parameter "status"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/GpsStatus;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method nextTask()Landroid/app/PendingIntent;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 93
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/location/GpsBackgroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "expected_state"

    iget-object v3, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    invoke-virtual {v3}, Lcom/google/glass/location/GpsBackgroundService$State;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method nextWakeupTime(J)J
    .locals 2
    .parameter "delay"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "Creating GPS background service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->init()V

    .line 271
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying GPS background service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->TERMINATED:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 288
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 289
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/location/GpsBackgroundService;->expectedState(Landroid/os/Bundle;)Lcom/google/glass/location/GpsBackgroundService$State;

    move-result-object v0

    .line 276
    .local v0, expected:Lcom/google/glass/location/GpsBackgroundService$State;
    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    if-eq v1, v0, :cond_0

    .line 277
    sget-object v1, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->init()V

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->nextState()V

    .line 281
    const/4 v1, 0x1

    return v1
.end method

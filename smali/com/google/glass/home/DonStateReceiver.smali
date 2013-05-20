.class public final Lcom/google/glass/home/DonStateReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "DonStateReceiver.java"


# static fields
.field private static final INVALID_TIMESTAMP:J = -0x1L

.field public static final SOUND_ID_DONNED_OFF:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final SOUND_ID_DONNED_ON:Lcom/google/glass/sound/SoundManager$SoundId;

.field private static final TAG:Ljava/lang/String;

.field private static donnedTimestamp:J

.field private static gotFirstBroadcast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/home/DonStateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/DonStateReceiver;->TAG:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->DON:Lcom/google/glass/sound/SoundManager$SoundId;

    sput-object v0, Lcom/google/glass/home/DonStateReceiver;->SOUND_ID_DONNED_ON:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 27
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->DOFF:Lcom/google/glass/sound/SoundManager$SoundId;

    sput-object v0, Lcom/google/glass/home/DonStateReceiver;->SOUND_ID_DONNED_OFF:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 33
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/glass/home/DonStateReceiver;->donnedTimestamp:J

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/glass/home/DonStateReceiver;->gotFirstBroadcast:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method

.method private getDoffedEventTuple(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "donTimeMs"

    .prologue
    .line 125
    invoke-static {p1}, Lcom/google/glass/home/DonStateReceiver;->isDonDetectorEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 126
    .local v0, isOhdActive:Z
    const-string v2, "ohd_active"

    if-eqz v0, :cond_0

    const-string v1, "1"

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "don_time_ms"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v1, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method private getDonnedEventTuple(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 119
    invoke-static {p1}, Lcom/google/glass/home/DonStateReceiver;->isDonDetectorEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 120
    .local v0, isOhdActive:Z
    const-string v2, "ohd_active"

    if-eqz v0, :cond_0

    const-string v1, "1"

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method private static isDonDetectorEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 178
    invoke-static {p0}, Lcom/google/glass/util/HiddenApiHelper;->isDonDoffDetectorEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private logDoffedUserEvent(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, -0x1

    .line 153
    const-wide/16 v0, 0x0

    .line 156
    .local v0, timeDonnedMillis:J
    sget-wide v2, Lcom/google/glass/home/DonStateReceiver;->donnedTimestamp:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/google/glass/home/DonStateReceiver;->donnedTimestamp:J

    sub-long v0, v2, v4

    .line 158
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 159
    sget-object v2, Lcom/google/glass/home/DonStateReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Error: donned time was negative?  Logging 0 for the user event."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-wide/16 v0, 0x0

    .line 164
    :cond_0
    sput-wide v6, Lcom/google/glass/home/DonStateReceiver;->donnedTimestamp:J

    .line 165
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->DOFFED:Lcom/google/glass/logging/UserEventAction;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/DonStateReceiver;->getDoffedEventTuple(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/glass/home/DonStateReceiver;->logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/google/glass/home/DonStateReceiver;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging doffed user event with donned time ms = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public static logDonDetectorStateUserEvent(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 107
    invoke-static {p0}, Lcom/google/glass/home/DonStateReceiver;->isDonDetectorEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 108
    .local v0, detectorEnabled:Z
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v1

    .line 109
    .local v1, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    if-eqz v0, :cond_0

    .line 110
    sget-object v2, Lcom/google/glass/home/DonStateReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Logging user event for DON_DETECTOR_ENABLED."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->DON_DETECTOR_ENABLED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v2, Lcom/google/glass/home/DonStateReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Logging user event for DON_DETECTOR_DISABLED."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->DON_DETECTOR_DISABLED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    goto :goto_0
.end method

.method private logDonStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-static {p2}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Intent;)Z

    move-result v0

    .line 94
    .local v0, isDonned:Z
    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/glass/home/DonStateReceiver;->logDonnedUserEvent(Landroid/content/Context;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/home/DonStateReceiver;->logDoffedUserEvent(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private logDonnedUserEvent(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/google/glass/home/DonStateReceiver;->donnedTimestamp:J

    .line 139
    invoke-static {p1}, Lcom/google/glass/home/DonStateReceiver;->isDonDetectorEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 140
    .local v0, detectorEnabled:Z
    invoke-virtual {p0}, Lcom/google/glass/home/DonStateReceiver;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging donned user event.  detectorEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->DONNED:Lcom/google/glass/logging/UserEventAction;

    invoke-direct {p0, p1}, Lcom/google/glass/home/DonStateReceiver;->getDonnedEventTuple(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/glass/home/DonStateReceiver;->logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "11"

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/glass/home/DonStateReceiver;->logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private playSoundForDonStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    sget-boolean v1, Lcom/google/glass/home/DonStateReceiver;->gotFirstBroadcast:Z

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/DonStateReceiver;->checkDonnedState(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/glass/home/DonStateReceiver;->getSoundIdForDonnedState(Z)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v0

    .line 82
    .local v0, idToPlay:Lcom/google/glass/sound/SoundManager$SoundId;
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 84
    .end local v0           #idToPlay:Lcom/google/glass/sound/SoundManager$SoundId;
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkDonnedState(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 56
    invoke-static {p2}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Intent;)Z

    move-result v0

    .line 57
    .local v0, isDonned:Z
    sget-object v1, Lcom/google/glass/home/DonStateReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device is donned? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v0
.end method

.method protected getSoundIdForDonnedState(Z)Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1
    .parameter "isDonned"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/glass/home/DonStateReceiver;->SOUND_ID_DONNED_ON:Lcom/google/glass/sound/SoundManager$SoundId;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/home/DonStateReceiver;->SOUND_ID_DONNED_OFF:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/home/DonStateReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.glass.action.DON_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/google/glass/home/DonStateReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/DonStateReceiver;->playSoundForDonStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/DonStateReceiver;->logDonStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/glass/home/DonStateReceiver;->gotFirstBroadcast:Z

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v1, Lcom/google/glass/home/DonStateReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

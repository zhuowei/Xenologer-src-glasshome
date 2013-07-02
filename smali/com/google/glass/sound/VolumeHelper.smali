.class public Lcom/google/glass/sound/VolumeHelper;
.super Ljava/lang/Object;
.source "VolumeHelper.java"


# static fields
.field private static final DEFAULT_VALUE_BCT:I = 0x9

.field private static final DEFAULT_VALUE_EARBUD:I = 0x8

.field private static final EXTRA_HEADSET_STATE:Ljava/lang/String; = "state"

.field public static final HEADSET_STATE_PLUGGED:I = 0x1

.field public static final HEADSET_STATE_UNPLUGGED:I = 0x0

.field private static final NUM_VALUES_BCT:I = 0xa

.field private static final NUM_VALUES_EARBUDS:I = 0x10

.field private static final PREFS:Ljava/lang/String; = "VolumePrefs"

.field private static final PREF_BCT:Ljava/lang/String; = "bct"

.field private static final PREF_EARBUD:Ljava/lang/String; = "eb"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/sound/VolumeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/VolumeHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sound/VolumeHelper;->audioManager:Landroid/media/AudioManager;

    .line 44
    const-string v0, "VolumePrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sound/VolumeHelper;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 45
    return-void
.end method

.method public static getHeadsetState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 117
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/sound/VolumeHelper;->getHeadsetState(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getHeadsetState(Landroid/content/Intent;)I
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p0, :cond_0

    .line 124
    sget-object v1, Lcom/google/glass/sound/VolumeHelper;->TAG:Ljava/lang/String;

    const-string v2, "Defaulting to headset state: 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return v0

    .line 127
    :cond_0
    const-string v1, "state"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 128
    .local v0, state:I
    sget-object v1, Lcom/google/glass/sound/VolumeHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Determined headset state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getNumVolumeValues(I)I
    .locals 1
    .parameter "headsetState"

    .prologue
    .line 48
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 49
    const/16 v0, 0x10

    .line 51
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private writeToHal(I)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 111
    sget-object v0, Lcom/google/glass/sound/VolumeHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing volume to HAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/google/glass/sound/VolumeHelper;->audioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "earbuds_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method public readAudioVolume(I)I
    .locals 7
    .parameter "headsetState"

    .prologue
    const/4 v6, 0x1

    .line 57
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 61
    if-ne p1, v6, :cond_1

    .line 62
    iget-object v3, p0, Lcom/google/glass/sound/VolumeHelper;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "eb"

    const/16 v5, 0x8

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 66
    .local v2, fromPrefs:I
    :goto_0
    sget-object v3, Lcom/google/glass/sound/VolumeHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read volume from prefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/sound/VolumeHelper;->audioManager:Landroid/media/AudioManager;

    const-string v4, "earbuds_volume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, fromHal:I
    sget-object v3, Lcom/google/glass/sound/VolumeHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read volume from HAL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    if-eq v2, v1, :cond_0

    .line 84
    sget-object v3, Lcom/google/glass/sound/VolumeHelper;->TAG:Ljava/lang/String;

    const-string v4, "Volumes do not agree! Writing prefs volume to HAL."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, v2}, Lcom/google/glass/sound/VolumeHelper;->writeToHal(I)V

    .line 89
    :cond_0
    return v2

    .line 64
    .end local v1           #fromHal:I
    .end local v2           #fromPrefs:I
    :cond_1
    iget-object v3, p0, Lcom/google/glass/sound/VolumeHelper;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "bct"

    const/16 v5, 0x9

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #fromPrefs:I
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/NumberFormatException;
    if-ne p1, v6, :cond_2

    .line 75
    const/16 v1, 0x8

    .line 79
    .restart local v1       #fromHal:I
    :goto_2
    sget-object v3, Lcom/google/glass/sound/VolumeHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read HAL volume, defaulting to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 77
    .end local v1           #fromHal:I
    :cond_2
    const/16 v1, 0x9

    .restart local v1       #fromHal:I
    goto :goto_2
.end method

.method public writeAudioVolume(II)V
    .locals 4
    .parameter "headsetState"
    .parameter "volume"

    .prologue
    .line 94
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 98
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 99
    const-string v0, "eb"

    .line 103
    .local v0, pref:Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/google/glass/sound/VolumeHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing volume to prefs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/google/glass/sound/VolumeHelper;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    invoke-direct {p0, p2}, Lcom/google/glass/sound/VolumeHelper;->writeToHal(I)V

    .line 108
    return-void

    .line 101
    .end local v0           #pref:Ljava/lang/String;
    :cond_0
    const-string v0, "bct"

    .restart local v0       #pref:Ljava/lang/String;
    goto :goto_0
.end method

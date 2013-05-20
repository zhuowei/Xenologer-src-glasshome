.class public Lcom/google/glass/sound/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sound/SoundManager$ConnectionState;,
        Lcom/google/glass/sound/SoundManager$SoundId;,
        Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;
    }
.end annotation


# static fields
.field public static final FAILED_TO_PLAY_SOUND:I

.field static final SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final connection:Landroid/content/ServiceConnection;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

.field private soundManagerService:Lcom/google/glass/sound/ISoundManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManager;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.sound"

    const-string v2, "com.google.glass.sound.SoundManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/sound/SoundManager;->SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lcom/google/glass/sound/SoundManager$1;

    invoke-direct {v0, p0}, Lcom/google/glass/sound/SoundManager$1;-><init>(Lcom/google/glass/sound/SoundManager;)V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManager;->connection:Landroid/content/ServiceConnection;

    .line 227
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->context:Landroid/content/Context;

    .line 228
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    .line 229
    sget-object v0, Lcom/google/glass/sound/SoundManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    .line 230
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundManager;->bindSoundManagerServiceIfNecessary()V

    .line 231
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/sound/SoundManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/ISoundManagerService;)Lcom/google/glass/sound/ISoundManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    return-object p1
.end method


# virtual methods
.method bindSoundManagerServiceIfNecessary()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 350
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    sget-object v2, Lcom/google/glass/sound/SoundManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    if-eq v1, v2, :cond_0

    .line 351
    sget-object v1, Lcom/google/glass/sound/SoundManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We are currently "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and don\'t need to reconnect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/sound/SoundManager;->SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 357
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/sound/SoundManager;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    sget-object v1, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTING:Lcom/google/glass/sound/SoundManager$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    .line 359
    sget-object v1, Lcom/google/glass/sound/SoundManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to service, connection state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_1
    sget-object v1, Lcom/google/glass/sound/SoundManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    .line 362
    sget-object v1, Lcom/google/glass/sound/SoundManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to service failed, connection state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastSoundIdRequested()Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    .line 344
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method public isMuted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    sget-object v2, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    if-eq v1, v2, :cond_0

    .line 325
    sget-object v1, Lcom/google/glass/sound/SoundManager;->TAG:Ljava/lang/String;

    const-string v2, "SoundManagerService is not connected, returning default, unmuted."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return v0

    .line 330
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v1}, Lcom/google/glass/sound/ISoundManagerService;->isMuted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I
    .locals 1
    .parameter "soundId"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)I

    move-result v0

    return v0
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)I
    .locals 6
    .parameter "soundId"
    .parameter "listener"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, streamId:I
    iget-object v2, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    sget-object v3, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    if-eq v2, v3, :cond_0

    .line 260
    sget-object v2, Lcom/google/glass/sound/SoundManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoundManagerService is not connected, not playing sound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundManager;->bindSoundManagerServiceIfNecessary()V

    move v1, v0

    .line 281
    .end local v0           #streamId:I
    .local v1, streamId:I
    :goto_0
    return v1

    .line 266
    .end local v1           #streamId:I
    .restart local v0       #streamId:I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/sound/ISoundManagerService;->playSound(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 271
    :goto_1
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 274
    iget-object v2, p0, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/glass/sound/SoundManager$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/google/glass/sound/SoundManager$2;-><init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;Lcom/google/glass/sound/SoundManager$SoundId;)V

    #getter for: Lcom/google/glass/sound/SoundManager$SoundId;->durationMs:I
    invoke-static {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->access$200(Lcom/google/glass/sound/SoundManager$SoundId;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    move v1, v0

    .line 281
    .end local v0           #streamId:I
    .restart local v1       #streamId:I
    goto :goto_0

    .line 267
    .end local v1           #streamId:I
    .restart local v0       #streamId:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setMuted(Z)V
    .locals 3
    .parameter "isMuted"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    sget-object v1, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    if-eq v0, v1, :cond_0

    .line 310
    sget-object v0, Lcom/google/glass/sound/SoundManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundManagerService is not connected, not setting mute to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundManager;->bindSoundManagerServiceIfNecessary()V

    .line 320
    :goto_0
    return-void

    .line 316
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v0, p1}, Lcom/google/glass/sound/ISoundManagerService;->setMuted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopSound(I)V
    .locals 3
    .parameter "streamId"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    sget-object v1, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    if-eq v0, v1, :cond_0

    .line 295
    sget-object v0, Lcom/google/glass/sound/SoundManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundManagerService is not connected, not stopping sound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/google/glass/sound/SoundManager;->bindSoundManagerServiceIfNecessary()V

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v0, p1}, Lcom/google/glass/sound/ISoundManagerService;->stopSound(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

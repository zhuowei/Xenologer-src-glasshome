.class public Lcom/google/glass/input/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;,
        Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;,
        Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    }
.end annotation


# static fields
.field private static final MSG_AUDIO_DATA:I = 0x3

.field private static final MSG_RESAMPLED_AUDIO_DATA:I = 0x4

.field protected static final MSG_VOICE_AMPLITUDE:I = 0x5

.field private static final MSG_VOICE_COMMAND:I = 0x2

.field private static final MSG_VOICE_CONFIG_CHANGED:I = 0x6

.field private static final MSG_VOICE_SERVICE_CONNECTED:I = 0x0

.field private static final MSG_VOICE_SERVICE_DISCONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VOICE_SERVICE:Landroid/content/ComponentName;


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field private final inputListener:Lcom/google/glass/input/VoiceListener;

.field private final observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

.field private voiceAmplitude:D

.field private final voiceHandler:Landroid/os/Handler;

.field private voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

.field private voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

.field private voiceServiceBound:Z

.field private final voiceServiceConnection:Landroid/content/ServiceConnection;

.field private final voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.voice"

    const-string v2, "com.google.glass.voice.VoiceService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "observer"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$1;-><init>(Lcom/google/glass/input/VoiceInputHelper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Landroid/content/ServiceConnection;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBound:Z

    .line 149
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$2;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$2;-><init>(Lcom/google/glass/input/VoiceInputHelper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    .line 228
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;-><init>(Lcom/google/glass/input/VoiceInputHelper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    .line 241
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->context:Landroid/content/Context;

    .line 242
    iput-object p2, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    .line 243
    iput-object p3, p0, Lcom/google/glass/input/VoiceInputHelper;->observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    .line 244
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->releaseVoiceServiceBinder()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceAmplitude()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/glass/input/VoiceInputHelper;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/voice/IVoiceService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/IVoiceService;)Lcom/google/glass/voice/IVoiceService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/glass/input/VoiceInputHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceConnected()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceDisconnected()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/input/VoiceInputHelper;[BII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/input/VoiceInputHelper;->dispatchAudioData([BII)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/input/VoiceInputHelper;[BII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/input/VoiceInputHelper;->dispatchResampledAudioData([BII)V

    return-void
.end method

.method private dispatchAudioData([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/VoiceListener;->onAudioData([BII)Z

    .line 457
    return-void
.end method

.method private dispatchResampledAudioData([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/VoiceListener;->onResampledAudioData([BII)Z

    .line 461
    return-void
.end method

.method private dispatchVoiceAmplitude()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    iget-wide v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D

    invoke-interface {v0, v1, v2}, Lcom/google/glass/input/VoiceListener;->onVoiceAmplitudeChanged(D)Z

    .line 465
    return-void
.end method

.method private dispatchVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 5
    .parameter "command"

    .prologue
    .line 445
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Voice command triggered"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    const/4 v1, 0x4

    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v1, p1}, Lcom/google/glass/input/VoiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    .line 449
    .local v0, handled:Z
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    invoke-interface {v1, p1, v0}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Z)V

    .line 452
    :cond_0
    return v0
.end method

.method private dispatchVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/glass/input/VoiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 441
    return-void
.end method

.method private dispatchVoiceServiceConnected()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceConnected()V

    .line 433
    return-void
.end method

.method private dispatchVoiceServiceDisconnected()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceDisconnected()V

    .line 437
    return-void
.end method

.method public static newUserActivityObserver(Landroid/content/Context;)Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private releaseVoiceServiceBinder()V
    .locals 1

    .prologue
    .line 469
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 471
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper;->detachListener()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBound:Z

    .line 474
    return-void
.end method

.method private removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 5
    .parameter "voiceInputCallback"

    .prologue
    const/4 v4, 0x0

    .line 299
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-eqz v1, :cond_0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/IVoiceService;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to remove voice input callback from VoiceService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 308
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "detachVoiceInputCallback called before connection to VoiceService established"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 5
    .parameter "newVoiceInputCallback"

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-ne v1, p1, :cond_0

    .line 279
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring duplicate attachVoiceInputCallback, callback is already attached."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-eqz v1, :cond_2

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-direct {p0, v1}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 288
    :cond_1
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    .line 289
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/IVoiceService;->addVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to attach voice input callback to VoiceService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "attachVoiceInputCallback called before connection to VoiceService established"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bindVoiceService()V
    .locals 4

    .prologue
    .line 248
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 249
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Binding voice service"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, voiceService:Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 253
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 254
    return-void
.end method

.method public detachListener()V
    .locals 5

    .prologue
    .line 422
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-eqz v1, :cond_0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to detach listener"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public detachVoiceInputCallback()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring detachVoiceInputCallback when no callback attached."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-direct {p0, v0}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    goto :goto_0
.end method

.method public endpointNetworkRecognizer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 335
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-eqz v1, :cond_0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1}, Lcom/google/glass/voice/IVoiceService;->endpointNetworkRecognizer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to endpoint network recognizer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Trying to endpoint before connection to VoiceService established"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 377
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-eqz v2, :cond_0

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v2}, Lcom/google/glass/voice/IVoiceService;->getConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 386
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get voice config"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 385
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v3, "Trying to get VoiceConfig before connection to VoiceService established"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reattachListener()V
    .locals 5

    .prologue
    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to reattach listener"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public refeedLastVoiceCommand()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-eqz v1, :cond_0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1}, Lcom/google/glass/voice/IVoiceService;->refeedLastCommand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to refeed voice command"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Trying to refeed last command before connection to VoiceService established"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 351
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    .locals 5
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    const/4 v4, 0x0

    .line 360
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-eqz v1, :cond_0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1, p2}, Lcom/google/glass/voice/IVoiceService;->setConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 363
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set voice config"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Trying to change VoiceConfig before connection to VoiceService established"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unbindVoiceService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 259
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-eqz v0, :cond_0

    .line 260
    iget-boolean v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBound:Z

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 262
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unbound from voice service"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->releaseVoiceServiceBinder()V

    .line 268
    return-void

    .line 264
    :cond_1
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to unbind voice service because it is not currently bound."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

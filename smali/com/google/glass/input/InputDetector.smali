.class public Lcom/google/glass/input/InputDetector;
.super Ljava/lang/Object;
.source "InputDetector.java"


# static fields
.field private static final MAX_PITCH_ACCUMULATIONS:I = 0x14

.field private static final MSG_AUDIO_DATA:I = 0x3

.field private static final MSG_RESAMPLED_AUDIO_DATA:I = 0x4

.field protected static final MSG_VOICE_AMPLITUDE:I = 0x5

.field private static final MSG_VOICE_COMMAND:I = 0x2

.field private static final MSG_VOICE_SERVICE_CONNECTED:I = 0x0

.field private static final MSG_VOICE_SERVICE_DISCONNECTED:I = 0x1

.field private static final PITCH_DEGREES_TO_SCROLL_PIXELS:F = 45.0f

.field private static final SCROLL_VELOCITY_DAMPENING:F = 0.9f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accumulatedPitchDelta:F

.field private final context:Landroid/content/Context;

.field private hasPitch:Z

.field private headScrollVelocityY:F

.field private final inputListener:Lcom/google/glass/input/InputListener;

.field private lastHeadScrollTimeMillis:J

.field private lastPitch:F

.field private numPitchAccumulations:I

.field private final orientationHelper:Lcom/google/glass/input/OrientationHelper;

.field private final orientationListener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;

.field private voiceAmplitude:D

.field private final voiceHandler:Landroid/os/Handler;

.field private voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

.field private final voiceServiceConnection:Landroid/content/ServiceConnection;

.field private final voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V
    .locals 2
    .parameter "context"
    .parameter "inputListener"

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/google/glass/input/InputDetector$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/InputDetector$1;-><init>(Lcom/google/glass/input/InputDetector;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceConnection:Landroid/content/ServiceConnection;

    .line 129
    new-instance v0, Lcom/google/glass/input/InputDetector$2;

    invoke-direct {v0, p0}, Lcom/google/glass/input/InputDetector$2;-><init>(Lcom/google/glass/input/InputDetector;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/google/glass/input/InputDetector$3;

    invoke-direct {v0, p0}, Lcom/google/glass/input/InputDetector$3;-><init>(Lcom/google/glass/input/InputDetector;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;

    .line 193
    new-instance v0, Lcom/google/glass/input/InputDetector$4;

    invoke-direct {v0, p0}, Lcom/google/glass/input/InputDetector$4;-><init>(Lcom/google/glass/input/InputDetector;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->orientationListener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    .line 211
    iput-object p1, p0, Lcom/google/glass/input/InputDetector;->context:Landroid/content/Context;

    .line 213
    if-nez p2, :cond_0

    .line 214
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputDetector constructed with null InputListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iput-object p2, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    .line 219
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 221
    new-instance v0, Lcom/google/glass/input/OrientationHelper;

    iget-object v1, p0, Lcom/google/glass/input/InputDetector;->orientationListener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/input/OrientationHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/OrientationHelper$OrientationListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    .line 222
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/input/InputDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/input/InputDetector;->releaseVoiceServiceBinder()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/input/InputDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/glass/input/InputDetector;->hasPitch:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/input/InputDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/glass/input/InputDetector;->hasPitch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/input/InputDetector;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/google/glass/input/InputDetector;->lastPitch:F

    return v0
.end method

.method static synthetic access$1102(Lcom/google/glass/input/InputDetector;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/google/glass/input/InputDetector;->lastPitch:F

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/input/InputDetector;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/input/InputDetector;->handleHeadScroll(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/input/InputDetector;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/input/InputDetector;Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/input/InputDetector;)Lcom/google/glass/voice/VoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/input/InputDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/input/InputDetector;->dispatchVoiceServiceConnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/input/InputDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/input/InputDetector;->dispatchVoiceServiceDisconnected()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/input/InputDetector;Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/input/InputDetector;->dispatchVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/input/InputDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/input/InputDetector;->dispatchVoiceAmplitude()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/input/InputDetector;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/input/InputDetector;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/google/glass/input/InputDetector;->voiceAmplitude:D

    return-wide p1
.end method

.method private dispatchVerticalHeadScroll(FF)V
    .locals 1
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onVerticalHeadScroll(FF)Z

    .line 313
    return-void
.end method

.method private dispatchVoiceAmplitude()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    iget-wide v1, p0, Lcom/google/glass/input/InputDetector;->voiceAmplitude:D

    invoke-interface {v0, v1, v2}, Lcom/google/glass/input/InputListener;->onVoiceAmplitudeChanged(D)Z

    .line 345
    return-void
.end method

.method private dispatchVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 4
    .parameter "command"

    .prologue
    .line 325
    sget-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    const-string v1, "Voice command triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voice command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/InputListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 330
    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchVoiceServiceConnected()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->onVoiceServiceConnected()V

    .line 317
    return-void
.end method

.method private dispatchVoiceServiceDisconnected()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->onVoiceServiceDisconnected()V

    .line 321
    return-void
.end method

.method private handleHeadScroll(F)V
    .locals 7
    .parameter "deltaY"

    .prologue
    .line 357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 358
    .local v0, currentTimeMillis:J
    iget-wide v3, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 359
    iget-wide v3, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    div-float v2, p1, v3

    .line 362
    .local v2, currentVelocity:F
    const v3, 0x3dccccd0

    mul-float/2addr v3, v2

    const v4, 0x3f666666

    iget v5, p0, Lcom/google/glass/input/InputDetector;->headScrollVelocityY:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/InputDetector;->headScrollVelocityY:F

    .line 370
    iget v3, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    .line 371
    iget v3, p0, Lcom/google/glass/input/InputDetector;->numPitchAccumulations:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/input/InputDetector;->numPitchAccumulations:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    .line 373
    iget v3, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    iget v4, p0, Lcom/google/glass/input/InputDetector;->headScrollVelocityY:F

    invoke-direct {p0, v3, v4}, Lcom/google/glass/input/InputDetector;->dispatchVerticalHeadScroll(FF)V

    .line 374
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    .line 379
    .end local v2           #currentVelocity:F
    :cond_0
    iput-wide v0, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    .line 380
    return-void
.end method

.method private releaseVoiceServiceBinder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 351
    iput-object v1, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V
    .locals 2
    .parameter "voiceSearchUi"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    sget-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    const-string v1, "Trying to attachVoiceSearchUi before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindVoiceService()V
    .locals 4

    .prologue
    .line 226
    sget-object v1, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    const-string v2, "Binding voice service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/input/InputDetector;->context:Landroid/content/Context;

    const-class v2, Lcom/google/glass/voice/VoiceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, voiceService:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/input/InputDetector;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 229
    iget-object v1, p0, Lcom/google/glass/input/InputDetector;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/input/InputDetector;->voiceServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 230
    return-void
.end method

.method public detachVoiceSearchUi()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->detachVoiceSearchUi()V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    sget-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    const-string v1, "Trying to detachVoiceSearchUi before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchAudioData([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/InputListener;->onAudioData([BII)Z

    .line 337
    return-void
.end method

.method public dispatchResampledAudioData([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/InputListener;->onResampledAudioData([BII)Z

    .line 341
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->endpointNetworkRecognizer()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    sget-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    const-string v1, "Trying to endpoint before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 300
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->getConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 285
    :cond_0
    sget-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    const-string v1, "Trying to get VoiceConfig before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refeedLastVoiceCommand()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->refeedLastCommand()V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    sget-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    const-string v1, "Trying to refeed last command before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    sget-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    const-string v1, "Trying to change VoiceConfig before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startOrientationSensors()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/OrientationHelper;->start()V

    .line 305
    return-void
.end method

.method public stopOrientationSensors()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/OrientationHelper;->stop()V

    .line 309
    return-void
.end method

.method public unbindVoiceService()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/input/InputDetector;->voiceServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/input/InputDetector;->releaseVoiceServiceBinder()V

    .line 238
    return-void
.end method

.method public updateVoiceConfigs()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->updateConfigs()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    const-string v1, "Trying to update VoiceConfigs before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

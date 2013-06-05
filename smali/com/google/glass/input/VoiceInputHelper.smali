.class public Lcom/google/glass/input/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# static fields
.field private static final MSG_AUDIO_DATA:I = 0x3

.field private static final MSG_RESAMPLED_AUDIO_DATA:I = 0x4

.field protected static final MSG_VOICE_AMPLITUDE:I = 0x5

.field private static final MSG_VOICE_COMMAND:I = 0x2

.field private static final MSG_VOICE_SERVICE_CONNECTED:I = 0x0

.field private static final MSG_VOICE_SERVICE_DISCONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final inputListener:Lcom/google/glass/input/VoiceListener;

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
    .line 27
    const-class v0, Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$1;-><init>(Lcom/google/glass/input/VoiceInputHelper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Landroid/content/ServiceConnection;

    .line 82
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$2;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$2;-><init>(Lcom/google/glass/input/VoiceInputHelper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$3;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$3;-><init>(Lcom/google/glass/input/VoiceInputHelper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;

    .line 147
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->context:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    .line 149
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 150
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->releaseVoiceServiceBinder()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceConnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceDisconnected()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceAmplitude()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/input/VoiceInputHelper;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D

    return-wide p1
.end method

.method private dispatchVoiceAmplitude()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    iget-wide v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D

    invoke-interface {v0, v1, v2}, Lcom/google/glass/input/VoiceListener;->onVoiceAmplitudeChanged(D)Z

    .line 265
    return-void
.end method

.method private dispatchVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 4
    .parameter "command"

    .prologue
    .line 245
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Voice command triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

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

    .line 248
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/VoiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchVoiceServiceConnected()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceConnected()V

    .line 237
    return-void
.end method

.method private dispatchVoiceServiceDisconnected()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceDisconnected()V

    .line 241
    return-void
.end method

.method private releaseVoiceServiceBinder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 271
    iput-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method public attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V
    .locals 2
    .parameter "voiceSearchUi"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Trying to attachVoiceSearchUi before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindVoiceService()V
    .locals 4

    .prologue
    .line 155
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v2, "Binding voice service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->context:Landroid/content/Context;

    const-class v2, Lcom/google/glass/voice/VoiceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, voiceService:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 159
    return-void
.end method

.method public detachVoiceSearchUi()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->detachVoiceSearchUi()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

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
    .line 256
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/VoiceListener;->onAudioData([BII)Z

    .line 257
    return-void
.end method

.method public dispatchResampledAudioData([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/VoiceListener;->onResampledAudioData([BII)Z

    .line 261
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->endpointNetworkRecognizer()V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Trying to endpoint before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 232
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->getConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 217
    :cond_0
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Trying to get VoiceConfig before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refeedLastVoiceCommand()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->refeedLastCommand()V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Trying to refeed last command before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Trying to change VoiceConfig before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unbindVoiceService()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->releaseVoiceServiceBinder()V

    .line 167
    return-void
.end method

.method public updateVoiceConfigs()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->updateConfigs()V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->TAG:Ljava/lang/String;

    const-string v1, "Trying to update VoiceConfigs before connection to VoiceService established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class public Lcom/google/glass/home/companion/CompanionConnection;
.super Ljava/lang/Object;
.source "CompanionConnection.java"

# interfaces
.implements Lcom/google/glass/home/companion/StreamingThread$ScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/companion/CompanionConnection$2;,
        Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;
    }
.end annotation


# static fields
.field private static final OUTPUT_BUFFER_SIZE_BYTES:I = 0x10000

.field private static final TAG:Ljava/lang/String; = null

.field private static final WHAT_HANDLE_COMPANION_INFO:I = 0x11

.field private static final WHAT_HANDLE_LOCATION_FROM_COMPANION:I = 0xd

.field private static final WHAT_HANDLE_TIMELINEITEM_FROM_COMPANION:I = 0xb

.field private static final WHAT_HANDLE_TIMELINEITEM_RESPONSE:I = 0xc

.field private static final WHAT_SETUP_GLASS_WIFI:I = 0x10

.field private static final WHAT_SHOW_MESSAGE:I = 0xe

.field private static final WHAT_START_NAVIGATION:I = 0xf


# instance fields
.field private final envelopeSender:Lcom/google/glass/home/companion/EnvelopeSender;

.field private final inStream:Ljava/io/InputStream;

.field private final incomingMessageHandler:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

.field private volatile isRunning:Z

.field private final outStream:Ljava/io/OutputStream;

.field private final service:Lcom/google/glass/home/companion/CompanionService;

.field private socket:Landroid/bluetooth/BluetoothSocket;

.field private streamingThread:Lcom/google/glass/home/companion/StreamingThread;

.field private final streamingThreadLock:Ljava/lang/Object;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/glass/home/companion/CompanionConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/home/companion/CompanionService;Landroid/bluetooth/BluetoothSocket;Lcom/google/glass/util/WifiHelper;)V
    .locals 8
    .parameter "service"
    .parameter "socket"
    .parameter "wifiHelper"

    .prologue
    const/4 v7, 0x6

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->streamingThreadLock:Ljava/lang/Object;

    .line 90
    new-instance v5, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v5}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, tmpIn:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 236
    .local v4, tmpOut:Ljava/io/OutputStream;
    iput-object p2, p0, Lcom/google/glass/home/companion/CompanionConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 238
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 239
    iget-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 244
    :goto_0
    iput-object v3, p0, Lcom/google/glass/home/companion/CompanionConnection;->inStream:Ljava/io/InputStream;

    .line 245
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/high16 v6, 0x1

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    .line 248
    new-instance v5, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    invoke-direct {v5, p1, p3}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;-><init>(Lcom/google/glass/home/companion/CompanionService;Lcom/google/glass/util/WifiHelper;)V

    iput-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->incomingMessageHandler:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    .line 250
    new-instance v5, Lcom/google/glass/home/companion/EnvelopeSender;

    iget-object v6, p0, Lcom/google/glass/home/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    invoke-direct {v5, v6}, Lcom/google/glass/home/companion/EnvelopeSender;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/home/companion/EnvelopeSender;

    .line 252
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    .line 256
    :try_start_1
    sget-object v5, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    const-string v6, "Handshaking (version 6) with client.."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/home/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v5, v6}, Lcom/google/glass/companion/Proto$Envelope;->writeDelimitedTo(Ljava/io/OutputStream;)V

    .line 258
    iget-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 260
    iget-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->inStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/google/glass/companion/Proto$Envelope;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 261
    .local v1, envelope:Lcom/google/glass/companion/Proto$Envelope;
    if-nez v1, :cond_0

    .line 262
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to parse handshake envelope."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    .end local v1           #envelope:Lcom/google/glass/companion/Proto$Envelope;
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    const-string v6, "Failed to handshake: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 240
    :catch_1
    move-exception v0

    .line 241
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    const-string v6, "Unable to get BluetoothSocket input/output streams."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #envelope:Lcom/google/glass/companion/Proto$Envelope;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->getVersion()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/glass/home/companion/CompanionService;->setRemoteVersion(I)V

    .line 266
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->getVersion()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 267
    const/4 v5, 0x6

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->getVersion()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/google/glass/home/companion/CompanionService;->notifyCompanionVersionMismatch(II)V

    .line 271
    :cond_1
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->hasTimezoneC2G()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2G()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, timezone:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Companion gave us timezone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v5, 0x64

    invoke-static {p1, v2, v5}, Lcom/google/glass/util/TimeZoneUtil;->updateTimeZone(Landroid/content/Context;Ljava/lang/String;I)V

    .line 277
    .end local v2           #timezone:Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client is running version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->getVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/companion/CompanionConnection;)Lcom/google/glass/home/companion/CompanionService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/companion/CompanionConnection;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method private processTimelineItemReponse(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 5
    .parameter "envelope"

    .prologue
    const/4 v4, 0x0

    .line 403
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getTimelineItemResponseC2GList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 404
    .local v1, response:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionConnection;->incomingMessageHandler:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    const/16 v3, 0xc

    invoke-static {v2, v3, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 407
    .end local v1           #response:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_0
    return-void
.end method

.method private processTimelineItems(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 5
    .parameter "envelope"

    .prologue
    const/4 v4, 0x0

    .line 395
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getTimelineItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 396
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionConnection;->incomingMessageHandler:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    const/16 v3, 0xb

    invoke-static {v2, v3, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 399
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    iput-boolean v2, p0, Lcom/google/glass/home/companion/CompanionConnection;->isRunning:Z

    .line 287
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/home/companion/EnvelopeSender;

    invoke-virtual {v1}, Lcom/google/glass/home/companion/EnvelopeSender;->close()V

    .line 289
    invoke-virtual {p0, v2}, Lcom/google/glass/home/companion/CompanionConnection;->handleScreenshotRequest(Z)V

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 292
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close input/output streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnvelopeSender()Lcom/google/glass/home/companion/EnvelopeSender;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/home/companion/EnvelopeSender;

    return-object v0
.end method

.method public handleApiRequest(Lcom/google/glass/companion/Proto$ApiRequest;)V
    .locals 1
    .parameter "apiRequest"

    .prologue
    .line 465
    new-instance v0, Lcom/google/glass/home/companion/CompanionConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/companion/CompanionConnection$1;-><init>(Lcom/google/glass/home/companion/CompanionConnection;Lcom/google/glass/companion/Proto$ApiRequest;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 490
    return-void
.end method

.method public handleCommand(Lcom/google/glass/companion/Proto$Command$CommandType;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 453
    sget-object v1, Lcom/google/glass/companion/Proto$Command$CommandType;->UNPAIR:Lcom/google/glass/companion/Proto$Command$CommandType;

    invoke-virtual {p1, v1}, Lcom/google/glass/companion/Proto$Command$CommandType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 455
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unpairing from Companion device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-static {v0}, Lcom/google/glass/hidden/HiddenBluetoothDevice;->removeBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 462
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    sget-object v1, Lcom/google/glass/companion/Proto$Command$CommandType;->START_DEBUG:Lcom/google/glass/companion/Proto$Command$CommandType;

    invoke-virtual {p1, v1}, Lcom/google/glass/companion/Proto$Command$CommandType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-static {v1}, Lcom/google/glass/companion/DebugConnectivityChecker;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 459
    :cond_2
    sget-object v1, Lcom/google/glass/companion/Proto$Command$CommandType;->STOP_DEBUG:Lcom/google/glass/companion/Proto$Command$CommandType;

    invoke-virtual {p1, v1}, Lcom/google/glass/companion/Proto$Command$CommandType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-static {v1}, Lcom/google/glass/companion/DebugConnectivityChecker;->stop(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public handleError(Lcom/google/glass/companion/Proto$Error$ErrorType;)V
    .locals 7
    .parameter "error"

    .prologue
    .line 499
    sget-object v4, Lcom/google/glass/home/companion/CompanionConnection$2;->$SwitchMap$com$google$glass$companion$Proto$Error$ErrorType:[I

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Error$ErrorType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 509
    sget-object v4, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not handling error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return-void

    .line 501
    :pswitch_0
    sget v1, Lcom/google/glass/home/R$string;->error_google_voice_out_of_date:I

    .line 502
    .local v1, messageId:I
    sget v3, Lcom/google/glass/home/R$string;->error_google_voice_out_of_date_tip:I

    .line 512
    .local v3, subMessageId:I
    :goto_1
    iget-object v4, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v4, v1}, Lcom/google/glass/home/companion/CompanionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v4, v3}, Lcom/google/glass/home/companion/CompanionService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, subMessage:Ljava/lang/String;
    new-instance v4, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    iget-object v5, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {v4, v5}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0, v2}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #messageId:I
    .end local v2           #subMessage:Ljava/lang/String;
    .end local v3           #subMessageId:I
    :pswitch_1
    sget v1, Lcom/google/glass/home/R$string;->error_google_voice_not_installed:I

    .line 506
    .restart local v1       #messageId:I
    sget v3, Lcom/google/glass/home/R$string;->error_google_voice_not_installed_tip:I

    .line 507
    .restart local v3       #subMessageId:I
    goto :goto_1

    .line 499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleScreenshotRequest(Z)V
    .locals 3
    .parameter "start"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection;->streamingThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->isRunning:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 416
    sget-object v0, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t start screenshot since the connection is not running."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    monitor-exit v1

    .line 438
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->streamingThread:Lcom/google/glass/home/companion/StreamingThread;

    if-eqz v0, :cond_2

    .line 420
    if-eqz p1, :cond_1

    .line 421
    sget-object v0, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    const-string v2, "streamingThread is already running."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    monitor-exit v1

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 425
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->streamingThread:Lcom/google/glass/home/companion/StreamingThread;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/StreamingThread;->close()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->streamingThread:Lcom/google/glass/home/companion/StreamingThread;

    .line 428
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService;->stopScreencastAndRestorePairing()V

    .line 437
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 430
    :cond_2
    if-nez p1, :cond_3

    .line 431
    sget-object v0, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    const-string v2, "streamingThread is already stopped."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    monitor-exit v1

    goto :goto_0

    .line 435
    :cond_3
    new-instance v0, Lcom/google/glass/home/companion/StreamingThread;

    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {v0, v2, p0}, Lcom/google/glass/home/companion/StreamingThread;-><init>(Landroid/app/Service;Lcom/google/glass/home/companion/StreamingThread$ScreenShotListener;)V

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionConnection;->streamingThread:Lcom/google/glass/home/companion/StreamingThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onNewScreenShot(Lcom/google/protobuf/ByteString;)V
    .locals 4
    .parameter "newScreen"

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    sget-object v2, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    const-string v3, "streamingThread provide null data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->setScreenshotBytesG2CBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->build()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v1

    .line 447
    .local v1, screenShot:Lcom/google/glass/companion/Proto$ScreenShot;
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 449
    .local v0, envelope:Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {p0}, Lcom/google/glass/home/companion/CompanionConnection;->getEnvelopeSender()Lcom/google/glass/home/companion/EnvelopeSender;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/home/companion/EnvelopeSender;->sendOrUpdateEnvelopeAsync(ILcom/google/glass/companion/Proto$Envelope;)V

    .line 450
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    .line 299
    iput-boolean v8, p0, Lcom/google/glass/home/companion/CompanionConnection;->isRunning:Z

    .line 300
    :goto_0
    iget-boolean v8, p0, Lcom/google/glass/home/companion/CompanionConnection;->isRunning:Z

    if-eqz v8, :cond_0

    .line 302
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/home/companion/CompanionConnection;->inStream:Ljava/io/InputStream;

    invoke-static {v8}, Lcom/google/glass/companion/Proto$Envelope;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    .line 303
    .local v2, envelope:Lcom/google/glass/companion/Proto$Envelope;
    if-nez v2, :cond_1

    .line 304
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Parse envelope"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v2           #envelope:Lcom/google/glass/companion/Proto$Envelope;
    :catch_0
    move-exception v1

    .line 387
    .local v1, e:Ljava/io/IOException;
    sget-object v8, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    const-string v9, "Error parsing Companion envelope"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    return-void

    .line 307
    .restart local v2       #envelope:Lcom/google/glass/companion/Proto$Envelope;
    :cond_1
    :try_start_1
    const-string v4, "Envelope received"

    .line 308
    .local v4, logMsg:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getTimelineItemCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 309
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has TimelineItem"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-direct {p0, v2}, Lcom/google/glass/home/companion/CompanionConnection;->processTimelineItems(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 313
    :cond_2
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getTimelineItemResponseC2GCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has TimelineItemResponse"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-direct {p0, v2}, Lcom/google/glass/home/companion/CompanionConnection;->processTimelineItemReponse(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 318
    :cond_3
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationMessageC2G()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has Location"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    iget-object v8, p0, Lcom/google/glass/home/companion/CompanionConnection;->incomingMessageHandler:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    const/16 v9, 0xd

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 324
    :cond_4
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasMessageC2G()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 325
    iget-object v8, p0, Lcom/google/glass/home/companion/CompanionConnection;->incomingMessageHandler:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    const/16 v9, 0xe

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2G()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 329
    :cond_5
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasTimezoneC2G()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 330
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2G()Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, timezone:Ljava/lang/String;
    sget-object v8, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Companion changed timezone: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v8, p0, Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;

    const/16 v9, 0x64

    invoke-static {v8, v7, v9}, Lcom/google/glass/util/TimeZoneUtil;->updateTimeZone(Landroid/content/Context;Ljava/lang/String;I)V

    .line 335
    .end local v7           #timezone:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasNavigationRequestC2G()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has Navigation Request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    iget-object v8, p0, Lcom/google/glass/home/companion/CompanionConnection;->incomingMessageHandler:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    const/16 v9, 0xf

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 342
    :cond_7
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasSetupWifiC2G()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 343
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has SetupWifi Request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    iget-object v8, p0, Lcom/google/glass/home/companion/CompanionConnection;->incomingMessageHandler:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    const/16 v9, 0x10

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2G()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 348
    :cond_8
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has companion info Request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 350
    iget-object v8, p0, Lcom/google/glass/home/companion/CompanionConnection;->incomingMessageHandler:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    const/16 v9, 0x11

    invoke-static {v8, v9, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 354
    :cond_9
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasScreenshot()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 355
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v6

    .line 356
    .local v6, screenShot:Lcom/google/glass/companion/Proto$ScreenShot;
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$ScreenShot;->hasStartScreenshotRequestC2G()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 357
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has start screencast Request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/google/glass/home/companion/CompanionConnection;->handleScreenshotRequest(Z)V

    .line 361
    :cond_a
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$ScreenShot;->getStopScreenshotRequestC2G()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has stop screencast Request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 363
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/google/glass/home/companion/CompanionConnection;->handleScreenshotRequest(Z)V

    .line 367
    .end local v6           #screenShot:Lcom/google/glass/companion/Proto$ScreenShot;
    :cond_b
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasCommand()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 368
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getCommand()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    .line 369
    .local v0, command:Lcom/google/glass/companion/Proto$Command;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has command ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Command;->getCommand()Lcom/google/glass/companion/Proto$Command$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/glass/companion/Proto$Command$CommandType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Command;->getCommand()Lcom/google/glass/companion/Proto$Command$CommandType;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/glass/home/companion/CompanionConnection;->handleCommand(Lcom/google/glass/companion/Proto$Command$CommandType;)V

    .line 373
    .end local v0           #command:Lcom/google/glass/companion/Proto$Command;
    :cond_c
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasError()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 374
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getError()Lcom/google/glass/companion/Proto$Error;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$Error;->getType()Lcom/google/glass/companion/Proto$Error$ErrorType;

    move-result-object v3

    .line 375
    .local v3, error:Lcom/google/glass/companion/Proto$Error$ErrorType;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has error ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Error$ErrorType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-virtual {p0, v3}, Lcom/google/glass/home/companion/CompanionConnection;->handleError(Lcom/google/glass/companion/Proto$Error$ErrorType;)V

    .line 379
    .end local v3           #error:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :cond_d
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->hasApiRequestC2G()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 380
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v5

    .line 381
    .local v5, request:Lcom/google/glass/companion/Proto$ApiRequest;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Has api request of type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$ApiRequest;->getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-virtual {p0, v5}, Lcom/google/glass/home/companion/CompanionConnection;->handleApiRequest(Lcom/google/glass/companion/Proto$ApiRequest;)V

    .line 385
    .end local v5           #request:Lcom/google/glass/companion/Proto$ApiRequest;
    :cond_e
    sget-object v8, Lcom/google/glass/home/companion/CompanionConnection;->TAG:Ljava/lang/String;

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.class public Lcom/google/glass/home/companion/StreamingThread;
.super Ljava/lang/Thread;
.source "StreamingThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/companion/StreamingThread$ScreenShotListener;
    }
.end annotation


# static fields
.field private static final COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat; = null

.field private static final COMPRESS_QUALITY:I = 0x55

.field private static final FRAME_HEIGHT:I = 0x168

.field private static final FRAME_WIDTH:I = 0x280

.field private static TAG:Ljava/lang/String; = null

.field private static final WHAT_HANDLE_NEW_SCREEN_SHOT:I = 0x1


# instance fields
.field private frameBuffer:Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

.field private volatile isClosed:Z

.field private volatile isScreenOn:Z

.field private lastSentFrameHash:I

.field private listener:Lcom/google/glass/home/companion/StreamingThread$ScreenShotListener;

.field private onNewScreenShotHandler:Landroid/os/Handler;

.field private final screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/home/companion/StreamingThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/companion/StreamingThread;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/google/glass/home/companion/StreamingThread;->COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Lcom/google/glass/home/companion/StreamingThread$ScreenShotListener;)V
    .locals 2
    .parameter "service"
    .parameter "listener"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    new-instance v1, Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

    invoke-direct {v1}, Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/google/glass/home/companion/StreamingThread;->frameBuffer:Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/home/companion/StreamingThread;->isClosed:Z

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/home/companion/StreamingThread;->isScreenOn:Z

    .line 76
    new-instance v1, Lcom/google/glass/home/companion/StreamingThread$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/companion/StreamingThread$1;-><init>(Lcom/google/glass/home/companion/StreamingThread;)V

    iput-object v1, p0, Lcom/google/glass/home/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 95
    invoke-static {p2}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Lcom/google/glass/home/companion/StreamingThread;->service:Landroid/app/Service;

    .line 97
    iput-object p2, p0, Lcom/google/glass/home/companion/StreamingThread;->listener:Lcom/google/glass/home/companion/StreamingThread$ScreenShotListener;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, screenOnOffIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/google/glass/home/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/home/companion/StreamingThread;->start()V

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/home/companion/StreamingThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/glass/home/companion/StreamingThread;->isScreenOn:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/home/companion/StreamingThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getEmptyScreenshot()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 154
    const/16 v2, 0x280

    const/16 v3, 0x168

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 155
    .local v1, empty:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 157
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 143
    sget-object v1, Lcom/google/glass/home/companion/StreamingThread;->TAG:Ljava/lang/String;

    const-string v2, "close StreamingThread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/home/companion/StreamingThread;->isClosed:Z

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/home/companion/StreamingThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/companion/StreamingThread;->service:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/glass/home/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/home/companion/StreamingThread;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted while waiting for screen streaming thread to join."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, screenshot:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/google/glass/home/companion/StreamingThread;->TAG:Ljava/lang/String;

    const-string v3, "start of StreamingThread"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/google/glass/home/companion/StreamingThread;->isClosed:Z

    if-nez v2, :cond_4

    .line 112
    iget-boolean v2, p0, Lcom/google/glass/home/companion/StreamingThread;->isScreenOn:Z

    if-eqz v2, :cond_3

    .line 113
    if-nez v1, :cond_2

    .line 114
    const/16 v2, 0x280

    const/16 v3, 0x168

    invoke-static {v2, v3}, Lcom/google/glass/util/HiddenApiHelper;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    :goto_1
    iget-object v2, p0, Lcom/google/glass/home/companion/StreamingThread;->frameBuffer:Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;->reset()V

    .line 122
    sget-object v2, Lcom/google/glass/home/companion/StreamingThread;->COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    iget-object v4, p0, Lcom/google/glass/home/companion/StreamingThread;->frameBuffer:Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 125
    iget-object v2, p0, Lcom/google/glass/home/companion/StreamingThread;->frameBuffer:Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/home/companion/StreamingThread;->frameBuffer:Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;->size()I

    move-result v2

    iget v3, p0, Lcom/google/glass/home/companion/StreamingThread;->lastSentFrameHash:I

    if-eq v2, v3, :cond_0

    .line 128
    iget-object v2, p0, Lcom/google/glass/home/companion/StreamingThread;->frameBuffer:Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;->size()I

    move-result v2

    iput v2, p0, Lcom/google/glass/home/companion/StreamingThread;->lastSentFrameHash:I

    .line 129
    iget-object v2, p0, Lcom/google/glass/home/companion/StreamingThread;->frameBuffer:Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;->getByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/home/companion/StreamingThread;->frameBuffer:Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v4}, Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 130
    .local v0, byteString:Lcom/google/protobuf/ByteString;
    iget-object v2, p0, Lcom/google/glass/home/companion/StreamingThread;->listener:Lcom/google/glass/home/companion/StreamingThread$ScreenShotListener;

    invoke-interface {v2, v0}, Lcom/google/glass/home/companion/StreamingThread$ScreenShotListener;->onNewScreenShot(Lcom/google/protobuf/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    .end local v0           #byteString:Lcom/google/protobuf/ByteString;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v2

    .line 116
    :cond_2
    const/16 v2, 0x280

    const/16 v3, 0x168

    :try_start_1
    invoke-static {v1, v2, v3}, Lcom/google/glass/util/HiddenApiHelper;->screenshot(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 119
    :cond_3
    invoke-static {}, Lcom/google/glass/home/companion/StreamingThread;->getEmptyScreenshot()Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 135
    :cond_4
    if-eqz v1, :cond_5

    .line 136
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    :cond_5
    sget-object v2, Lcom/google/glass/home/companion/StreamingThread;->TAG:Ljava/lang/String;

    const-string v3, "end of StreamingThread"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

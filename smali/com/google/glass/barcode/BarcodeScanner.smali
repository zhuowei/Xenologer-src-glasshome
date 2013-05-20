.class public Lcom/google/glass/barcode/BarcodeScanner;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/barcode/BarcodeScanner$Builder;,
        Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;,
        Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

.field private bound:Z

.field private final camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

.field private final cameraClient:Lcom/google/glass/camera/SharedCameraClient;

.field private final cameraFrameModulus:I

.field private final context:Landroid/content/Context;

.field private firstPreviewFrameTimeNanos:J

.field private final listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

.field private previewFrameCount:I

.field private final scanTimeoutNanos:J

.field private scanning:Z

.field private shouldIgnorePreviewFrames:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/barcode/BarcodeScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IJLcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;)V
    .locals 1
    .parameter "context"
    .parameter "cameraFrameModulus"
    .parameter "scanTimeoutNanos"
    .parameter "listener"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    invoke-direct {v0}, Lcom/google/glass/camera/SharedCameraService$SharedCamera;-><init>()V

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    .line 73
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$1;

    invoke-direct {v0, p0}, Lcom/google/glass/barcode/BarcodeScanner$1;-><init>(Lcom/google/glass/barcode/BarcodeScanner;)V

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    .line 142
    iput-object p1, p0, Lcom/google/glass/barcode/BarcodeScanner;->context:Landroid/content/Context;

    .line 143
    iput p2, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraFrameModulus:I

    .line 144
    iput-wide p3, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanTimeoutNanos:J

    .line 145
    iput-object p5, p0, Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/barcode/BarcodeScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/barcode/BarcodeScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/barcode/BarcodeScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/google/glass/barcode/BarcodeScanner;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/barcode/BarcodeScanner;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/glass/barcode/BarcodeScanner;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/glass/barcode/BarcodeScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraFrameModulus:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/barcode/BarcodeScanner;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanTimeoutNanos:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/barcode/BarcodeScanner;ZLcom/google/android/libraries/barhopper/Barcode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getMillisSinceFirstPreview()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 238
    iget-wide v2, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 242
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 2
    .parameter "action"
    .parameter "eventData"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    .line 226
    .local v0, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private logFailure()V
    .locals 6

    .prologue
    .line 219
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->BARCODE_FAILED_SCAN:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "m"

    invoke-direct {p0}, Lcom/google/glass/barcode/BarcodeScanner;->getMillisSinceFirstPreview()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "f"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private logSuccess(Lcom/google/android/libraries/barhopper/Barcode;)V
    .locals 8
    .parameter "barcode"

    .prologue
    .line 230
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "m"

    invoke-direct {p0}, Lcom/google/glass/barcode/BarcodeScanner;->getMillisSinceFirstPreview()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "f"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "s"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "b"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/google/android/libraries/barhopper/Barcode;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x2c

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/barcode/BarcodeScanner$Builder;
    .locals 4

    .prologue
    .line 285
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$Builder;

    const/4 v1, 0x1

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/barcode/BarcodeScanner$Builder;-><init>(IJ)V

    return-object v0
.end method

.method private stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V
    .locals 2
    .parameter "successfulScan"
    .parameter "barcode"

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    if-eqz v0, :cond_1

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-direct {p0, p2}, Lcom/google/glass/barcode/BarcodeScanner;->logSuccess(Lcom/google/android/libraries/barhopper/Barcode;)V

    .line 213
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    .line 215
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 216
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/barcode/BarcodeScanner;->logFailure()V

    goto :goto_0

    .line 210
    :cond_1
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->TAG:Ljava/lang/String;

    const-string v1, "Duplicate stopScanning calls."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bindCamera(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 149
    iput-boolean v2, p0, Lcom/google/glass/barcode/BarcodeScanner;->bound:Z

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/camera/SharedCameraService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, cameraService:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 152
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->bound:Z

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->TAG:Ljava/lang/String;

    const-string v1, "BarcodeScanner finalized while bound to camera service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 165
    return-void
.end method

.method public setViewfinder(Landroid/view/TextureView;)V
    .locals 1
    .parameter "viewfinder"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraClient;->setViewfinder(Landroid/view/TextureView;)V

    .line 169
    return-void
.end method

.method public startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->bound:Z

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot scan unless bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraClient;->getViewfinder()Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot scan without a viewfinder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    if-eqz v0, :cond_2

    .line 181
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->TAG:Ljava/lang/String;

    const-string v1, "Duplicate startScanning calls."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    .line 187
    new-instance v0, Lcom/google/glass/barcode/BarhopperRecognizer;

    invoke-direct {v0}, Lcom/google/glass/barcode/BarhopperRecognizer;-><init>()V

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

    .line 190
    iput v2, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    .line 192
    iput-boolean v2, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    .line 195
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->startPreview(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 196
    return-void
.end method

.method public stopScanning()V
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V

    .line 200
    return-void
.end method

.method public unbindCamera(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->bound:Z

    .line 157
    return-void
.end method

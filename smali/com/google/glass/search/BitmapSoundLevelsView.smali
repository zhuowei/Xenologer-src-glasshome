.class public Lcom/google/glass/search/BitmapSoundLevelsView;
.super Landroid/view/View;
.source "BitmapSoundLevelsView.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentVolume:I

.field private destRect:Landroid/graphics/Rect;

.field private final emptyPaint:Landroid/graphics/Paint;

.field private final identityMatrix:Landroid/graphics/Matrix;

.field private final invalidateRunnable:Ljava/lang/Runnable;

.field private isTimerCancelled:Z

.field private levelSize:I

.field private levelSource:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;

.field private maxPrimaryLevel:Landroid/graphics/Bitmap;

.field private maxTrailLevel:Landroid/graphics/Bitmap;

.field private peakLevel:I

.field private peakLevelCountDown:I

.field private final primaryLevel:Landroid/graphics/Bitmap;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private final trailLevel:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/BitmapSoundLevelsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/search/BitmapSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/search/BitmapSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->emptyPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->identityMatrix:Landroid/graphics/Matrix;

    .line 66
    new-instance v0, Lcom/google/glass/search/BitmapSoundLevelsView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/search/BitmapSoundLevelsView$1;-><init>(Lcom/google/glass/search/BitmapSoundLevelsView;)V

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->invalidateRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/voice/R$drawable;->voice_search_reactive_dark:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    .line 86
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSize:I

    .line 88
    invoke-virtual {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/voice/R$drawable;->voice_search_reactive_light:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->trailLevel:Landroid/graphics/Bitmap;

    .line 90
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->trailLevel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSize:I

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->destRect:Landroid/graphics/Rect;

    .line 94
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->emptyPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 96
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->createTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->timerTask:Ljava/util/TimerTask;

    .line 97
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->createTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->timer:Ljava/util/Timer;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/search/BitmapSoundLevelsView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->invalidateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->isTimerCancelled:Z

    .line 111
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    return-object v0
.end method

.method private createTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/glass/search/BitmapSoundLevelsView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/search/BitmapSoundLevelsView$2;-><init>(Lcom/google/glass/search/BitmapSoundLevelsView;)V

    return-object v0
.end method

.method private drawLevel(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
    .locals 4
    .parameter "canvas"
    .parameter "level"
    .parameter "maxLevel"
    .parameter "origin"
    .parameter "extent"

    .prologue
    const/4 v3, 0x0

    .line 250
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->identityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->destRect:Landroid/graphics/Rect;

    add-int v1, p4, p5

    add-int v2, p4, p5

    invoke-virtual {v0, p4, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 254
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->destRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private declared-synchronized startAnimator()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->isTimerCancelled:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->createTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->timer:Ljava/util/Timer;

    .line 140
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->createTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->timerTask:Ljava/util/TimerTask;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->scheduledExecutionTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopAnimator()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 155
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->isTimerCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAnimatorState()V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->startAnimator()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->stopAnimator()V

    goto :goto_0
.end method


# virtual methods
.method public getLevelSource()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 162
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->updateAnimatorState()V

    .line 163
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->stopAnimator()V

    .line 168
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 169
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;

    if-nez v1, :cond_2

    move v12, v0

    .line 214
    .local v12, level:I
    :goto_0
    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->peakLevel:I

    if-le v12, v1, :cond_3

    .line 215
    iput v12, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->peakLevel:I

    .line 216
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->peakLevelCountDown:I

    .line 225
    :goto_1
    iget v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->currentVolume:I

    if-le v12, v0, :cond_5

    .line 226
    iget v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->currentVolume:I

    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->currentVolume:I

    sub-int v1, v12, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->currentVolume:I

    .line 231
    :goto_2
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->trailLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->peakLevel:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSize:I

    add-int v5, v0, v1

    .line 233
    .local v5, sizePeak:I
    invoke-virtual {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v4, v0, 0x2

    .line 235
    .local v4, diffPeak:I
    iget-object v2, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->trailLevel:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->maxTrailLevel:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/search/BitmapSoundLevelsView;->drawLevel(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    .line 238
    .end local v4           #diffPeak:I
    .end local v5           #sizePeak:I
    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->currentVolume:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSize:I

    add-int v11, v0, v1

    .line 240
    .local v11, size:I
    invoke-virtual {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v11

    div-int/lit8 v10, v0, 0x2

    .line 242
    .local v10, diff:I
    iget-object v8, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->maxPrimaryLevel:Landroid/graphics/Bitmap;

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/google/glass/search/BitmapSoundLevelsView;->drawLevel(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    .line 245
    .end local v10           #diff:I
    .end local v11           #size:I
    .end local v12           #level:I
    :cond_1
    return-void

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;

    invoke-interface {v1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;->getSpeechLevel()I

    move-result v12

    goto :goto_0

    .line 218
    .restart local v12       #level:I
    :cond_3
    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->peakLevelCountDown:I

    if-nez v1, :cond_4

    .line 219
    iget v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->peakLevel:I

    add-int/lit8 v1, v1, -0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->peakLevel:I

    goto :goto_1

    .line 221
    :cond_4
    iget v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->peakLevelCountDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->peakLevelCountDown:I

    goto :goto_1

    .line 228
    :cond_5
    iget v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->currentVolume:I

    int-to-float v0, v0

    const v1, 0x3f666666

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->currentVolume:I

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x1

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 197
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->maxPrimaryLevel:Landroid/graphics/Bitmap;

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->trailLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->trailLevel:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->maxTrailLevel:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->updateAnimatorState()V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->stopAnimator()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 117
    sget-object v0, Lcom/google/glass/search/BitmapSoundLevelsView;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring setEnabled call; already in requested state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    invoke-direct {p0}, Lcom/google/glass/search/BitmapSoundLevelsView;->updateAnimatorState()V

    goto :goto_0
.end method

.method public setLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/glass/search/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;

    .line 186
    return-void
.end method

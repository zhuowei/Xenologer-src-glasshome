.class public Lcom/google/glass/voice/BitmapSoundLevelsView;
.super Landroid/view/View;
.source "BitmapSoundLevelsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/BitmapSoundLevelsView$1;,
        Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentVolume:I

.field private destRect:Landroid/graphics/Rect;

.field private final emptyPaint:Landroid/graphics/Paint;

.field private final identityMatrix:Landroid/graphics/Matrix;

.field private levelSize:I

.field private levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

.field private maxPrimaryLevel:Landroid/graphics/Bitmap;

.field private final primaryLevel:Landroid/graphics/Bitmap;

.field private refreshHandler:Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->emptyPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->identityMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;-><init>(Lcom/google/glass/voice/BitmapSoundLevelsView;Lcom/google/glass/voice/BitmapSoundLevelsView$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->refreshHandler:Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/voice/R$drawable;->voice_input_sound_level_circle:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    .line 94
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSize:I

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->destRect:Landroid/graphics/Rect;

    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->emptyPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 99
    return-void
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

    .line 206
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->identityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->destRect:Landroid/graphics/Rect;

    add-int v1, p4, p5

    add-int v2, p4, p5

    invoke-virtual {v0, p4, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 210
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->destRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private declared-synchronized startAnimator()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->refreshHandler:Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopAnimator()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->refreshHandler:Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAnimatorState()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->startAnimator()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->stopAnimator()V

    goto :goto_0
.end method


# virtual methods
.method public getLevelSource()Lcom/google/glass/voice/network/SpeechLevelSource;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 137
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->updateAnimatorState()V

    .line 138
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->stopAnimator()V

    .line 143
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 144
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    if-nez v0, :cond_1

    const/4 v6, 0x0

    .line 188
    .local v6, level:I
    :goto_0
    iget v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    if-le v6, v0, :cond_2

    .line 189
    iget v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSize:I

    add-int v5, v0, v1

    .line 196
    .local v5, size:I
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v4, v0, 0x2

    .line 198
    .local v4, diff:I
    iget-object v2, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->maxPrimaryLevel:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/BitmapSoundLevelsView;->drawLevel(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    .line 201
    .end local v4           #diff:I
    .end local v5           #size:I
    .end local v6           #level:I
    :cond_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    invoke-interface {v0}, Lcom/google/glass/voice/network/SpeechLevelSource;->getSpeechLevel()I

    move-result v6

    goto :goto_0

    .line 191
    .restart local v6       #level:I
    :cond_2
    iget v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    int-to-float v0, v0

    const v1, 0x3f733333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 172
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->maxPrimaryLevel:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->updateAnimatorState()V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->stopAnimator()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 104
    sget-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring setEnabled call; already in requested state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->updateAnimatorState()V

    goto :goto_0
.end method

.method public setLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    .line 161
    return-void
.end method

.class public Lcom/google/glass/home/timeline/VideoItemView;
.super Lcom/google/glass/horizontalscroll/FrameLayoutCard;
.source "VideoItemView.java"


# static fields
.field private static final START_DELAY_MS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final playVideoRunnable:Ljava/lang/Runnable;

.field private shouldStartVideoOnNextDraw:Z

.field private videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

.field private videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/timeline/VideoItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/VideoItemView;->TAG:Ljava/lang/String;

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/timeline/VideoItemView;->START_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/google/glass/home/timeline/VideoItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoItemView$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/google/glass/home/timeline/VideoItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoItemView$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Lcom/google/glass/home/timeline/VideoItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoItemView$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/glass/home/timeline/VideoPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/home/timeline/VideoItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/VideoItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->hideBufferingIndicator()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/VideoItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->showErrorMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/VideoItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->showBufferingIndicator()V

    return-void
.end method

.method private createVideoPlayer(Landroid/view/TextureView;Landroid/widget/FrameLayout;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/glass/home/timeline/VideoPlayer;
    .locals 2
    .parameter "videoView"
    .parameter "nonVideoView"
    .parameter "bitmapFactory"
    .parameter "videoAttachment"

    .prologue
    .line 153
    new-instance v0, Lcom/google/glass/home/timeline/VideoPlayer;

    new-instance v1, Lcom/google/glass/home/timeline/VideoItemView$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/glass/home/timeline/VideoItemView$2;-><init>(Lcom/google/glass/home/timeline/VideoItemView;Landroid/widget/FrameLayout;Landroid/view/TextureView;)V

    invoke-direct {v0, p1, p3, v1, p4}, Lcom/google/glass/home/timeline/VideoPlayer;-><init>(Landroid/view/TextureView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/VideoPlayerListener;Lcom/google/googlex/glass/common/proto/Attachment;)V

    return-object v0
.end method

.method private hideBufferingIndicator()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 219
    sget v2, Lcom/google/glass/home/R$id;->buffering_slider:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    .line 220
    .local v0, sliderView:Lcom/google/glass/widget/SliderView;
    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 221
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 223
    sget v2, Lcom/google/glass/home/R$id;->tips:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TipsView;

    .line 224
    .local v1, tipsView:Lcom/google/glass/widget/TipsView;
    invoke-virtual {v1, v3}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 225
    return-void
.end method

.method private showBufferingIndicator()V
    .locals 2

    .prologue
    .line 211
    sget v1, Lcom/google/glass/home/R$id;->buffering_slider:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    .line 212
    .local v0, sliderView:Lcom/google/glass/widget/SliderView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 213
    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 215
    sget v1, Lcom/google/glass/home/R$string;->timeline_video_buffering:I

    invoke-direct {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->showTipsView(I)V

    .line 216
    return-void
.end method

.method private showErrorMessage()V
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->hideBufferingIndicator()V

    .line 229
    sget v0, Lcom/google/glass/home/R$string;->timeline_video_not_available:I

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/VideoItemView;->showTipsView(I)V

    .line 230
    return-void
.end method

.method private showTipsView(I)V
    .locals 5
    .parameter "textResourceId"

    .prologue
    .line 233
    sget v2, Lcom/google/glass/home/R$id;->tips:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TipsView;

    .line 234
    .local v1, tipsView:Lcom/google/glass/widget/TipsView;
    invoke-virtual {v1, p1}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 235
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/VideoItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$integer;->play_video_fade_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 236
    .local v0, fadeDuration:I
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setAlpha(F)V

    .line 237
    invoke-virtual {v1}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 241
    return-void
.end method

.method private startVideo()V
    .locals 5

    .prologue
    .line 111
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    if-eqz v2, :cond_0

    .line 112
    sget v2, Lcom/google/glass/home/R$id;->video:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 113
    .local v1, videoView:Landroid/view/TextureView;
    sget v2, Lcom/google/glass/home/R$id;->non_video:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 114
    .local v0, nonVideoView:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/glass/home/timeline/VideoItemView;->createVideoPlayer(Landroid/view/TextureView;Landroid/widget/FrameLayout;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/glass/home/timeline/VideoPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    .line 115
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 116
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/VideoPlayer;->isVideoStreamUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 118
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->showBufferingIndicator()V

    .line 124
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 126
    .end local v0           #nonVideoView:Landroid/widget/FrameLayout;
    .end local v1           #videoView:Landroid/view/TextureView;
    :cond_0
    return-void

    .line 120
    .restart local v0       #nonVideoView:Landroid/widget/FrameLayout;
    .restart local v1       #videoView:Landroid/view/TextureView;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    sget-wide v3, Lcom/google/glass/home/timeline/VideoItemView;->START_DELAY_MS:J

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/glass/home/timeline/VideoItemView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private stopVideo()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 133
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/VideoPlayer;->stop()V

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    .line 138
    sget v1, Lcom/google/glass/home/R$id;->video:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 139
    .local v0, videoView:Landroid/view/TextureView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 141
    .end local v0           #videoView:Landroid/view/TextureView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->shouldStartVideoOnNextDraw:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->startVideo()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->shouldStartVideoOnNextDraw:Z

    .line 105
    :cond_0
    return-void
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/VideoItemView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->startVideo()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->shouldStartVideoOnNextDraw:Z

    goto :goto_0
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->stopVideo()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->shouldStartVideoOnNextDraw:Z

    .line 95
    return-void
.end method

.method public setVideoAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 0
    .parameter "videoAttachment"
    .parameter "bitmapFactory"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    .line 75
    iput-object p2, p0, Lcom/google/glass/home/timeline/VideoItemView;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 76
    return-void
.end method

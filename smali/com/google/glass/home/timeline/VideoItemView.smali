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
    .line 29
    const-class v0, Lcom/google/glass/home/timeline/VideoItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/VideoItemView;->TAG:Ljava/lang/String;

    .line 32
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
    .line 58
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/google/glass/home/timeline/VideoItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoItemView$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/google/glass/home/timeline/VideoItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoItemView$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/google/glass/home/timeline/VideoItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoItemView$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/glass/home/timeline/VideoPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/home/timeline/VideoItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/VideoItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->hideBufferingIndicator()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/VideoItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->showErrorMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/VideoItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
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
    .line 154
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

    .line 220
    sget v2, Lcom/google/glass/home/R$id;->buffering_slider:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    .line 221
    .local v0, sliderView:Lcom/google/glass/widget/SliderView;
    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 222
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 224
    sget v2, Lcom/google/glass/home/R$id;->tips:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TipsView;

    .line 225
    .local v1, tipsView:Lcom/google/glass/widget/TipsView;
    invoke-virtual {v1, v3}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 226
    return-void
.end method

.method private showBufferingIndicator()V
    .locals 2

    .prologue
    .line 212
    sget v1, Lcom/google/glass/home/R$id;->buffering_slider:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    .line 213
    .local v0, sliderView:Lcom/google/glass/widget/SliderView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 214
    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 216
    sget v1, Lcom/google/glass/home/R$string;->timeline_video_buffering:I

    invoke-direct {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->showTipsView(I)V

    .line 217
    return-void
.end method

.method private showErrorMessage()V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->hideBufferingIndicator()V

    .line 230
    sget v0, Lcom/google/glass/home/R$string;->timeline_video_not_available:I

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/VideoItemView;->showTipsView(I)V

    .line 231
    return-void
.end method

.method private showTipsView(I)V
    .locals 5
    .parameter "textResourceId"

    .prologue
    .line 234
    sget v2, Lcom/google/glass/home/R$id;->tips:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TipsView;

    .line 235
    .local v1, tipsView:Lcom/google/glass/widget/TipsView;
    invoke-virtual {v1, p1}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 236
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/VideoItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$integer;->play_video_fade_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 237
    .local v0, fadeDuration:I
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setAlpha(F)V

    .line 238
    invoke-virtual {v1}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 242
    return-void
.end method

.method private startVideo()V
    .locals 5

    .prologue
    .line 112
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    if-eqz v2, :cond_0

    .line 113
    sget v2, Lcom/google/glass/home/R$id;->video:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 114
    .local v1, videoView:Landroid/view/TextureView;
    sget v2, Lcom/google/glass/home/R$id;->non_video:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 115
    .local v0, nonVideoView:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/glass/home/timeline/VideoItemView;->createVideoPlayer(Landroid/view/TextureView;Landroid/widget/FrameLayout;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/glass/home/timeline/VideoPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    .line 116
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 117
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/VideoPlayer;->isVideoStreamUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 119
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->showBufferingIndicator()V

    .line 125
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 127
    .end local v0           #nonVideoView:Landroid/widget/FrameLayout;
    .end local v1           #videoView:Landroid/view/TextureView;
    :cond_0
    return-void

    .line 121
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
    .line 133
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/VideoPlayer;->stop()V

    .line 136
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    .line 139
    sget v1, Lcom/google/glass/home/R$id;->video:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 140
    .local v0, videoView:Landroid/view/TextureView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 142
    .end local v0           #videoView:Landroid/view/TextureView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->shouldStartVideoOnNextDraw:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->startVideo()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->shouldStartVideoOnNextDraw:Z

    .line 106
    :cond_0
    return-void
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->VIDEO_PLAYER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->shouldStartVideoOnNextDraw:Z

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/VideoItemView;->invalidate()V

    .line 88
    return-void
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->stopVideo()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->shouldStartVideoOnNextDraw:Z

    .line 96
    return-void
.end method

.method public setVideoAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 0
    .parameter "videoAttachment"
    .parameter "bitmapFactory"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    .line 77
    iput-object p2, p0, Lcom/google/glass/home/timeline/VideoItemView;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 78
    return-void
.end method

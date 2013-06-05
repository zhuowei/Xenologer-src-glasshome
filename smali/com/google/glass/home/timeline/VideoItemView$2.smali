.class Lcom/google/glass/home/timeline/VideoItemView$2;
.super Ljava/lang/Object;
.source "VideoItemView.java"

# interfaces
.implements Lcom/google/glass/home/timeline/VideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/VideoItemView;->createVideoPlayer(Landroid/view/TextureView;Landroid/widget/FrameLayout;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/glass/home/timeline/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/VideoItemView;

.field final synthetic val$nonVideoView:Landroid/widget/FrameLayout;

.field final synthetic val$videoView:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/VideoItemView;Landroid/widget/FrameLayout;Landroid/view/TextureView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->val$nonVideoView:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->val$videoView:Landroid/view/TextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Z)V
    .locals 1
    .parameter "isBuffering"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    #calls: Lcom/google/glass/home/timeline/VideoItemView;->showBufferingIndicator()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoItemView;->access$500(Lcom/google/glass/home/timeline/VideoItemView;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    #calls: Lcom/google/glass/home/timeline/VideoItemView;->hideBufferingIndicator()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoItemView;->access$300(Lcom/google/glass/home/timeline/VideoItemView;)V

    goto :goto_0
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    #calls: Lcom/google/glass/home/timeline/VideoItemView;->showErrorMessage()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoItemView;->access$400(Lcom/google/glass/home/timeline/VideoItemView;)V

    .line 197
    return-void
.end method

.method public onVideoPlaybackStarted()V
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 157
    invoke-static {}, Lcom/google/glass/home/timeline/VideoItemView;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Video playback started."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/VideoItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$integer;->play_video_fade_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 161
    .local v0, fadeDuration:I
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->val$nonVideoView:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 162
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->val$nonVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/VideoItemView$2$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/timeline/VideoItemView$2$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView$2;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 172
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    #calls: Lcom/google/glass/home/timeline/VideoItemView;->hideBufferingIndicator()V
    invoke-static {v1}, Lcom/google/glass/home/timeline/VideoItemView;->access$300(Lcom/google/glass/home/timeline/VideoItemView;)V

    .line 173
    return-void
.end method

.method public onVideoPlaybackStopped()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 178
    invoke-static {}, Lcom/google/glass/home/timeline/VideoItemView;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Video playback stopped."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/VideoItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$integer;->play_video_fade_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 182
    .local v0, fadeDuration:I
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->val$nonVideoView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 183
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->val$nonVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->val$nonVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 191
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView$2;->val$videoView:Landroid/view/TextureView;

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 192
    return-void
.end method

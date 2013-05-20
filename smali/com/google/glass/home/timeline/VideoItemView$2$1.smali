.class Lcom/google/glass/home/timeline/VideoItemView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/VideoItemView$2;->onVideoPlaybackStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/VideoItemView$2;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/VideoItemView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoItemView$2$1;->this$1:Lcom/google/glass/home/timeline/VideoItemView$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView$2$1;->this$1:Lcom/google/glass/home/timeline/VideoItemView$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/VideoItemView$2;->val$nonVideoView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 194
    return-void
.end method

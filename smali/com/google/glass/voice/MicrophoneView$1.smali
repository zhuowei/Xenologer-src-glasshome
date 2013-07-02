.class Lcom/google/glass/voice/MicrophoneView$1;
.super Ljava/lang/Object;
.source "MicrophoneView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/MicrophoneView;->setupPulsingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/MicrophoneView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/MicrophoneView;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/glass/voice/MicrophoneView$1;->this$0:Lcom/google/glass/voice/MicrophoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView$1;->this$0:Lcom/google/glass/voice/MicrophoneView;

    #getter for: Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneView;->access$000(Lcom/google/glass/voice/MicrophoneView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 113
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView$1;->this$0:Lcom/google/glass/voice/MicrophoneView;

    #calls: Lcom/google/glass/voice/MicrophoneView;->startPulsingAnimation()V
    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneView;->access$100(Lcom/google/glass/voice/MicrophoneView;)V

    .line 114
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 109
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView$1;->this$0:Lcom/google/glass/voice/MicrophoneView;

    #getter for: Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneView;->access$000(Lcom/google/glass/voice/MicrophoneView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 105
    return-void
.end method

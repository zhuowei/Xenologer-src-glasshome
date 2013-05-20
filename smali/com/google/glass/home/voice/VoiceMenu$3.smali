.class Lcom/google/glass/home/voice/VoiceMenu$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/VoiceMenu;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceMenu;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceMenu;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMenu$3;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/home/voice/VoiceMenu$3;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu$3;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu$3;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu$3;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    #getter for: Lcom/google/glass/home/voice/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v0}, Lcom/google/glass/home/voice/VoiceMenu;->access$400(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 288
    return-void
.end method

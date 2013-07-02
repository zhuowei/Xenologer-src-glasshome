.class Lcom/google/glass/home/voice/VoiceMenu$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/VoiceMenu;->selectPrimaryMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceMenu;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;

.field final synthetic val$t:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceMenu;Ljava/lang/Runnable;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMenu$5;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/home/voice/VoiceMenu$5;->val$postAnimationRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/glass/home/voice/VoiceMenu$5;->val$t:Lcom/google/glass/widget/TypophileTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu$5;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu$5;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu$5;->val$t:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 386
    return-void
.end method

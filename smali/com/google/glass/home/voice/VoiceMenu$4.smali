.class Lcom/google/glass/home/voice/VoiceMenu$4;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/VoiceMenu;->promoteMenuItem(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/home/voice/OverscrollView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceMenu;

.field final synthetic val$menuItem:Lcom/google/glass/widget/TypophileTextView;

.field final synthetic val$menuItemScrollView:Lcom/google/glass/home/voice/OverscrollView;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceMenu;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/home/voice/OverscrollView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->val$menuItem:Lcom/google/glass/widget/TypophileTextView;

    iput-object p3, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->val$menuItemScrollView:Lcom/google/glass/home/voice/OverscrollView;

    iput-object p4, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    #getter for: Lcom/google/glass/home/voice/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMenu;->access$500(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->val$menuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2}, Lcom/google/glass/widget/TypophileTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->val$menuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->val$menuItemScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-virtual {v2}, Lcom/google/glass/home/voice/OverscrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->val$menuItemScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-virtual {v2, v3}, Lcom/google/glass/home/voice/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float v0, v1, v2

    .line 328
    .local v0, startY:F
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    #getter for: Lcom/google/glass/home/voice/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMenu;->access$500(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    .line 329
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    #getter for: Lcom/google/glass/home/voice/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMenu;->access$500(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    #getter for: Lcom/google/glass/home/voice/VoiceMenu;->primaryMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMenu;->access$600(Lcom/google/glass/home/voice/VoiceMenu;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu$4;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    #getter for: Lcom/google/glass/home/voice/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v1}, Lcom/google/glass/home/voice/VoiceMenu;->access$500(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/voice/VoiceMenu$4$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/voice/VoiceMenu$4$1;-><init>(Lcom/google/glass/home/voice/VoiceMenu$4;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 344
    return-void
.end method

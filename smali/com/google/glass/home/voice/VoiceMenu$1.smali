.class Lcom/google/glass/home/voice/VoiceMenu$1;
.super Landroid/os/Handler;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/VoiceMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceMenu;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMenu$1;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 68
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v4, p0, Lcom/google/glass/home/voice/VoiceMenu$1;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    #calls: Lcom/google/glass/home/voice/VoiceMenu;->animateIn(Landroid/view/View;)V
    invoke-static {v4, v3}, Lcom/google/glass/home/voice/VoiceMenu;->access$000(Lcom/google/glass/home/voice/VoiceMenu;Landroid/view/View;)V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 78
    .local v2, textView:Lcom/google/glass/widget/TypophileTextView;
    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMenu$1;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    #getter for: Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/google/glass/home/voice/VoiceMenu;->access$100(Lcom/google/glass/home/voice/VoiceMenu;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 79
    .local v1, t:Lcom/google/glass/widget/TypophileTextView;
    if-eq v1, v2, :cond_1

    .line 80
    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public final Lcom/google/glass/widget/MessageDialog$Builder;
.super Ljava/lang/Object;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private params:Lcom/google/glass/widget/MessageDialog$Params;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    .line 496
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$Builder;->reset()V

    .line 497
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 500
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Params;-><init>(Lcom/google/glass/widget/MessageDialog$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 501
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldAutoHide:Z
    invoke-static {v0, v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1702(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 502
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldHandleConfirm:Z
    invoke-static {v0, v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1802(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 503
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldAnimate:Z
    invoke-static {v0, v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$402(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 504
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->isDismissable:Z
    invoke-static {v0, v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$702(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 505
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/widget/MessageDialog;
    .locals 4

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 706
    .local v0, finalParams:Lcom/google/glass/widget/MessageDialog$Params;
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$Builder;->reset()V

    .line 707
    new-instance v1, Lcom/google/glass/widget/MessageDialog;

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/glass/widget/MessageDialog;-><init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$1;)V

    return-object v1
.end method

.method public setAnimated(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "animated"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldAnimate:Z
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$402(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 670
    return-object p0
.end method

.method public setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "autoHide"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldAutoHide:Z
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1702(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 640
    return-object p0
.end method

.method public setDismissable(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "dismissable"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->isDismissable:Z
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$702(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 689
    return-object p0
.end method

.method public setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "expanded"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->isExpanded:Z
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$502(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 680
    return-object p0
.end method

.method public setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "handleConfirm"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldHandleConfirm:Z
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1802(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 650
    return-object p0
.end method

.method public setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "id"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "drawable"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1502(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 568
    return-object p0
.end method

.method public setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "keepScreenOn"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldKeepScreenOn:Z
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$602(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 551
    return-object p0
.end method

.method public setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->listener:Lcom/google/glass/widget/MessageDialog$Listener;
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$202(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Listener;

    .line 698
    return-object p0
.end method

.method public setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "id"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "msg"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->message:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1302(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 521
    return-object p0
.end method

.method public setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "id"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "msg"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->secondaryMessage:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1402(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 542
    return-object p0
.end method

.method public setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "showProgress"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldShowProgress:Z
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1602(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 660
    return-object p0
.end method

.method public setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "soundId"
    .parameter "soundManager"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->sound:Lcom/google/glass/sound/SoundManager$SoundId;
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1102(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/sound/SoundManager$SoundId;

    .line 578
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v0, p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1202(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/sound/SoundManager;

    .line 579
    return-object p0
.end method

.method public setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "id"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTemporaryIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "drawable"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->temporaryIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1002(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 630
    return-object p0
.end method

.method public setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "id"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "msg"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->temporaryMessage:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$802(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 596
    return-object p0
.end method

.method public setTemporarySecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "id"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporarySecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTemporarySecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .parameter "msg"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->temporarySecondaryMessage:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$902(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 613
    return-object p0
.end method

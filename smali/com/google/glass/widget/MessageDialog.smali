.class public final Lcom/google/glass/widget/MessageDialog;
.super Landroid/app/Dialog;
.source "MessageDialog.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/MessageDialog$Builder;,
        Lcom/google/glass/widget/MessageDialog$Params;,
        Lcom/google/glass/widget/MessageDialog$SimpleListener;,
        Lcom/google/glass/widget/MessageDialog$Listener;
    }
.end annotation


# static fields
.field private static final EXPANDED_MESSAGE_DURATION:J = 0x7d0L

.field private static final MESSAGE_DURATION:J = 0x3e8L

.field private static final MSG_DISMISS:I = 0x0

.field private static final MSG_ON_DONE:I = 0x2

.field private static final MSG_TEMPORARY_MESSAGE_DONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEMPORARY_MESSAGE_DURATION:J = 0x7d0L


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final params:Lcom/google/glass/widget/MessageDialog$Params;

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/MessageDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;)V
    .locals 2
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 186
    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldAnimate:Z
    invoke-static {p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$400(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->getThemeId(Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 137
    new-instance v0, Lcom/google/glass/widget/MessageDialog$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/MessageDialog$1;-><init>(Lcom/google/glass/widget/MessageDialog;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/google/glass/widget/MessageDialog$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/MessageDialog$2;-><init>(Lcom/google/glass/widget/MessageDialog;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 187
    iput-object p2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 188
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 189
    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->isExpanded:Z
    invoke-static {p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$500(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->getLayoutId(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->setContentView(I)V

    .line 190
    sget v0, Lcom/google/glass/common/R$id;->ms_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldKeepScreenOn:Z
    invoke-static {p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$600(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/MessageDialog;-><init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->showNormalContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cancelTransitions()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    return-void
.end method

.method private checkIsShowing()V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method not available when the dialog is not showing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    return-void
.end method

.method private getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 442
    sget v0, Lcom/google/glass/common/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 434
    sget v0, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private static getLayoutId(Z)I
    .locals 1
    .parameter "isExpanded"

    .prologue
    .line 407
    if-eqz p0, :cond_0

    sget v0, Lcom/google/glass/common/R$layout;->message_dialog_expanded:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/glass/common/R$layout;->message_dialog:I

    goto :goto_0
.end method

.method private getSecondaryLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 438
    sget v0, Lcom/google/glass/common/R$id;->secondary_label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getSlider()Lcom/google/glass/widget/SliderView;
    .locals 1

    .prologue
    .line 446
    sget v0, Lcom/google/glass/common/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method private static getThemeId(Z)I
    .locals 1
    .parameter "shouldAnimate"

    .prologue
    .line 401
    if-eqz p0, :cond_0

    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme_NoAnimation:I

    goto :goto_0
.end method

.method private hasSlider()Z
    .locals 1

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "message"
    .parameter "secondaryMessage"
    .parameter "icon"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 411
    if-eqz p1, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    if-eqz p2, :cond_2

    .line 419
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    :cond_0
    :goto_1
    if-eqz p3, :cond_3

    .line 426
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    :goto_2
    return-void

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 422
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 429
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private showNormalContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 299
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->sound:Lcom/google/glass/sound/SoundManager$SoundId;
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1100(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->sound:Lcom/google/glass/sound/SoundManager$SoundId;
    invoke-static {v3}, Lcom/google/glass/widget/MessageDialog$Params;->access$1100(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->message:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1300(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->secondaryMessage:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/google/glass/widget/MessageDialog$Params;->access$1400(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/google/glass/widget/MessageDialog$Params;->access$1500(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 304
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->hasSlider()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldShowProgress:Z
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1600(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 307
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 312
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldAutoHide:Z
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1700(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->isExpanded:Z
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$500(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v0, 0x7d0

    .line 314
    .local v0, duration:J
    :goto_1
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 316
    .end local v0           #duration:J
    :cond_2
    return-void

    .line 309
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_4
    const-wide/16 v0, 0x3e8

    goto :goto_1
.end method

.method private showTemporaryContent()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x7d0

    .line 289
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->temporaryMessage:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$800(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->temporarySecondaryMessage:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$900(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->temporaryIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1000(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 290
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->hasSlider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 292
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/widget/SliderView;->startProgress(J)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 296
    return-void
.end method


# virtual methods
.method public autoHide()V
    .locals 4

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 248
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 334
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 335
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 336
    .local v0, onTemporaryMessage:I
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 338
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 341
    return-void

    .line 335
    .end local v0           #onTemporaryMessage:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAutoHide()V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 257
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 347
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 350
    return-void
.end method

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 368
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->shouldHandleConfirm:Z
    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1800(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->temporaryMessage:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$800(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    sget-object v1, Lcom/google/glass/widget/MessageDialog;->TAG:Ljava/lang/String;

    const-string v2, "Temporary message has completed, onDone will be called to listener, do not send onConfirm."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 379
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->listener:Lcom/google/glass/widget/MessageDialog$Listener;
    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->listener:Lcom/google/glass/widget/MessageDialog$Listener;
    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/widget/MessageDialog$Listener;->onConfirmed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 387
    :cond_2
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 218
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 219
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method onScreenOff()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->TAG:Ljava/lang/String;

    const-string v1, "Cancelling for screen off event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 330
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 197
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->isDismissable:Z
    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$700(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->setCancelable(Z)V

    .line 199
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Params;->hasTemporaryContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->isExpanded:Z
    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$500(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->showTemporaryContent()V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.SCREEN_OFF"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->showNormalContent()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 212
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 213
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeCanceled(I)Z
    .locals 1
    .parameter "fingerCount"

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/MessageDialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVerticalHeadScroll(FF)Z
    .locals 1
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public setDismissable(Z)V
    .locals 0
    .parameter "dismissable"

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/MessageDialog;->setCancelable(Z)V

    .line 265
    return-void
.end method

.method public setListener(Lcom/google/glass/widget/MessageDialog$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    #setter for: Lcom/google/glass/widget/MessageDialog$Params;->listener:Lcom/google/glass/widget/MessageDialog$Listener;
    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$202(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Listener;

    .line 272
    return-void
.end method

.method public showProgress(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->hasSlider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    if-eqz p1, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 281
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateContent(II)V
    .locals 1
    .parameter "messageId"
    .parameter "iconId"

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 232
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/widget/MessageDialog;->updateContent(Ljava/lang/CharSequence;I)V

    .line 233
    return-void
.end method

.method public updateContent(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "message"
    .parameter "iconId"

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 241
    return-void
.end method

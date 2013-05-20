.class public Lcom/google/glass/home/FullScreenMessagingDialogActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "FullScreenMessagingDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

.field private power:Lcom/google/glass/util/PowerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 46
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-virtual {v5, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, message:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    sget-object v5, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->TAG:Ljava/lang/String;

    const-string v6, "Null message passed, finishing activity."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 52
    :cond_0
    sget v5, Lcom/google/glass/home/R$id;->error_message:I

    invoke-virtual {p0, v5}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-virtual {v5, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getSubMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, subMessage:Ljava/lang/String;
    sget v5, Lcom/google/glass/home/R$id;->error_sub_message:I

    invoke-virtual {p0, v5}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 56
    .local v3, subMessageTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    :goto_1
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-virtual {v5, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getTurnScreenOnFromIntent(Landroid/content/Intent;)Z

    move-result v4

    .line 64
    .local v4, turnScreenOn:Z
    if-eqz v4, :cond_2

    .line 65
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->power:Lcom/google/glass/util/PowerHelper;

    if-nez v5, :cond_1

    .line 66
    new-instance v5, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v5, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->power:Lcom/google/glass/util/PowerHelper;

    .line 68
    :cond_1
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->power:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 71
    :cond_2
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-virtual {v5, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getIconFromIntent(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, icon:Landroid/graphics/Bitmap;
    sget v5, Lcom/google/glass/home/R$id;->error_icon:I

    invoke-virtual {p0, v5}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 59
    .end local v0           #icon:Landroid/graphics/Bitmap;
    .end local v4           #turnScreenOn:Z
    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onConfirm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->finish()V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    .line 39
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->power:Lcom/google/glass/util/PowerHelper;

    .line 40
    invoke-virtual {p0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->handleIntent(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->handleIntent(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/google/glass/home/R$layout;->message_content:I

    return v0
.end method

.method public shouldAllowVoiceInput()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

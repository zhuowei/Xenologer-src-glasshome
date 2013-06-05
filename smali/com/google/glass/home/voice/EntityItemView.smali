.class public Lcom/google/glass/home/voice/EntityItemView;
.super Lcom/google/glass/horizontalscroll/FrameLayoutCard;
.source "EntityItemView.java"


# instance fields
.field private entityCommand:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

.field private environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field private image:Landroid/widget/ImageView;

.field private final imageHeight:I

.field private final imageWidth:I

.field private label:Landroid/widget/TextView;

.field private loadingTask:Lcom/google/glass/util/PersonImageDownloadTask;

.field private protobuff:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 41
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/glass/home/voice/EntityItemView;->imageWidth:I

    .line 42
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/google/glass/home/voice/EntityItemView;->imageHeight:I

    .line 43
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 10
    .parameter "id"
    .parameter "displayName"
    .parameter "imageUrl"
    .parameter "protobuff"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->loadingTask:Lcom/google/glass/util/PersonImageDownloadTask;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->loadingTask:Lcom/google/glass/util/PersonImageDownloadTask;

    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->loadingTask:Lcom/google/glass/util/PersonImageDownloadTask;

    .line 122
    :cond_0
    iput-object p4, p0, Lcom/google/glass/home/voice/EntityItemView;->protobuff:[B

    .line 124
    new-instance v0, Lcom/google/glass/home/voice/EntityItemView$1;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/EntityItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/home/voice/EntityItemView;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/google/glass/home/voice/EntityItemView;->label:Landroid/widget/TextView;

    iget v6, p0, Lcom/google/glass/home/voice/EntityItemView;->imageWidth:I

    iget v7, p0, Lcom/google/glass/home/voice/EntityItemView;->imageHeight:I

    move-object v1, p0

    move-object v3, p3

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/home/voice/EntityItemView$1;-><init>(Lcom/google/glass/home/voice/EntityItemView;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->loadingTask:Lcom/google/glass/util/PersonImageDownloadTask;

    .line 136
    iget-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->loadingTask:Lcom/google/glass/util/PersonImageDownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/PersonImageDownloadTask;->setAlwaysShowLabel(Z)V

    .line 138
    iget-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->loadingTask:Lcom/google/glass/util/PersonImageDownloadTask;

    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 139
    return-void
.end method

.method public getBundleEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->showProgressBar()V

    .line 85
    iget-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->protobuff:[B

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/EntityItemView;->entityCommand:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-static {v0, v1}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->newContactMenuItem(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Lcom/google/glass/home/voice/menu/EntityMenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/EntityItemView;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;->onFinishInflate()V

    .line 57
    sget v0, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->image:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/voice/EntityItemView;->label:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public setEntityCommand(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/glass/home/voice/EntityItemView;->entityCommand:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    .line 51
    return-void
.end method

.method public setVoiceMenuEnvironment(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 0
    .parameter "environment"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/glass/home/voice/EntityItemView;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    .line 47
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

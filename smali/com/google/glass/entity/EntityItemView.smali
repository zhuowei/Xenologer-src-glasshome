.class public Lcom/google/glass/entity/EntityItemView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollFrameLayout;
.source "EntityItemView.java"


# instance fields
.field private entity:Lcom/google/googlex/glass/common/proto/Entity;

.field private image:Landroid/widget/ImageView;

.field private final imageHeight:I

.field private final imageWidth:I

.field private label:Landroid/widget/TextView;

.field private loadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 38
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/glass/entity/EntityItemView;->imageWidth:I

    .line 39
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/google/glass/entity/EntityItemView;->imageHeight:I

    .line 40
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 7
    .parameter "entity"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 101
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->loadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->loadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;

    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->loadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;

    .line 106
    :cond_0
    new-instance v0, Lcom/google/glass/util/EntityImageDownloadTask;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/entity/EntityItemView;->image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/glass/entity/EntityItemView;->label:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/glass/entity/EntityItemView;->imageWidth:I

    iget v6, p0, Lcom/google/glass/entity/EntityItemView;->imageHeight:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->loadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;

    .line 109
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->loadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;

    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 110
    return-void
.end method

.method public getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/glass/horizontalscroll/HorizontalScrollFrameLayout;->onFinishInflate()V

    .line 46
    sget v0, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->label:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

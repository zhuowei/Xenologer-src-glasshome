.class public Lcom/google/glass/share/ShareTargetAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareTargetAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

.field private final shareTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/google/glass/share/ShareHorizontalScrollView$Listener;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Lcom/google/glass/share/ShareHorizontalScrollView$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/glass/share/ShareTargetAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/glass/share/ShareTargetAdapter;->shareTargets:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lcom/google/glass/share/ShareTargetAdapter;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    .line 35
    return-void
.end method

.method private bindGlasswareIcon(Lcom/google/googlex/glass/common/proto/Entity;Landroid/view/View;)V
    .locals 5
    .parameter "shareTarget"
    .parameter "view"

    .prologue
    .line 112
    sget v3, Lcom/google/glass/common/R$id;->glassware_icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 114
    .local v1, iconView:Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasSource()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string v4, "api:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string v4, "api:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, projectId:Ljava/lang/String;
    new-instance v0, Lcom/google/glass/util/GlasswareIconLoadingTask;

    iget-object v3, p0, Lcom/google/glass/share/ShareTargetAdapter;->context:Landroid/content/Context;

    sget-object v4, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/google/glass/util/GlasswareIconLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    .line 120
    .local v0, glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 123
    sget v3, Lcom/google/glass/common/R$id;->tag_loading_task:I

    invoke-virtual {p2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 125
    .end local v0           #glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;
    .end local v2           #projectId:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/share/ShareTargetAdapter;->shareTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "position"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/share/ShareTargetAdapter;->shareTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareTargetAdapter;->getItem(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareTargetAdapter;->getItem(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareTargetAdapter;->getItem(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 61
    .local v3, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    if-nez p2, :cond_0

    .line 62
    new-instance p2, Lcom/google/glass/share/ShareTargetView;

    .end local p2
    iget-object v5, p0, Lcom/google/glass/share/ShareTargetAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v5}, Lcom/google/glass/share/ShareTargetView;-><init>(Landroid/content/Context;)V

    .restart local p2
    move-object v5, p2

    .line 63
    check-cast v5, Lcom/google/glass/share/ShareTargetView;

    iget-object v6, p0, Lcom/google/glass/share/ShareTargetAdapter;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    invoke-virtual {v5, v6}, Lcom/google/glass/share/ShareTargetView;->setListener(Lcom/google/glass/share/ShareHorizontalScrollView$Listener;)V

    .line 67
    :cond_0
    sget v5, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 68
    .local v1, label:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-direct {p0, v3, p2}, Lcom/google/glass/share/ShareTargetAdapter;->bindGlasswareIcon(Lcom/google/googlex/glass/common/proto/Entity;Landroid/view/View;)V

    .line 72
    sget v5, Lcom/google/glass/common/R$id;->mosaic:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/MosaicView;

    .line 75
    .local v2, mosaic:Lcom/google/glass/widget/MosaicView;
    iget-object v5, p0, Lcom/google/glass/share/ShareTargetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .local v4, w:I
    iget-object v5, p0, Lcom/google/glass/share/ShareTargetAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 78
    .local v0, h:I
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 79
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5, v4, v0}, Lcom/google/glass/widget/MosaicView;->setImageUrls(Ljava/util/List;II)V

    .line 80
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/MosaicView;->setVisibility(I)V

    .line 86
    :goto_0
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareTargetAdapter;->getItem(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 89
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    return-object p2

    .line 82
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/MosaicView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 98
    sget v2, Lcom/google/glass/common/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/GlasswareIconLoadingTask;

    .line 100
    .local v0, glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;
    if-eqz v0, :cond_0

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask;->cancel(Z)V

    .line 102
    sget v2, Lcom/google/glass/common/R$id;->tag_loading_task:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 106
    :cond_0
    sget v2, Lcom/google/glass/common/R$id;->mosaic:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/MosaicView;

    .line 107
    .local v1, mosaic:Lcom/google/glass/widget/MosaicView;
    invoke-virtual {v1}, Lcom/google/glass/widget/MosaicView;->cancelImageDownloads()V

    .line 108
    invoke-virtual {v1}, Lcom/google/glass/widget/MosaicView;->clearImages()V

    .line 109
    return-void
.end method

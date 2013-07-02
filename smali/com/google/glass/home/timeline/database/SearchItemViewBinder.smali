.class public Lcom/google/glass/home/timeline/database/SearchItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "SearchItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;,
        Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    .line 116
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearImagesFromViewGroup(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "viewGroup"

    .prologue
    .line 253
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 254
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 256
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->clearImagesFromViewGroup(Landroid/view/ViewGroup;)V

    .line 253
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 258
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #child:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 261
    :cond_2
    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_search:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)Z
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"
    .parameter "contentSizedListener"

    .prologue
    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "proto/search"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/glass+html"

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->TAG:Ljava/lang/String;

    const-string v1, "Timeline item does not have a search proto or answer card HTML attachment"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 202
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/glass+html"

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v6

    .line 205
    .local v6, isAnswerCard:Z
    sget v0, Lcom/google/glass/home/R$id;->cover:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 207
    .local v5, coverView:Landroid/widget/LinearLayout;
    if-eqz v6, :cond_1

    new-instance v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;-><init>(Lcom/google/glass/home/timeline/database/SearchItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/String;Landroid/view/ViewGroup;)V

    move-object v7, v0

    .line 212
    .local v7, loadingTask:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :goto_1
    sget v0, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p5, v0, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 213
    invoke-static {p5, v7}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 215
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    .end local v7           #loadingTask:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_1
    new-instance v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;-><init>(Lcom/google/glass/home/timeline/database/SearchItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/String;Landroid/view/ViewGroup;)V

    move-object v7, v0

    goto :goto_1
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    .line 238
    sget v1, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 240
    .local v0, loadingTask:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    if-eqz v0, :cond_0

    .line 241
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 242
    sget v1, Lcom/google/glass/home/R$id;->tag_loading_task:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 245
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 248
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->clearImagesFromViewGroup(Landroid/view/ViewGroup;)V

    .line 250
    :cond_1
    return-void
.end method

.method protected provideInfoText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method protected shouldHideSyncIcon(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public splitBundle(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)V
    .locals 2
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->SEARCH:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 269
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

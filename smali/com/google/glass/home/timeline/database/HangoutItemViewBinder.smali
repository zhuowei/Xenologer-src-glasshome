.class public Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "HangoutItemViewBinder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_hangout:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)Z
    .locals 14
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"
    .parameter "contentSizedListener"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 44
    .local v5, resources:Landroid/content/res/Resources;
    sget v11, Lcom/google/glass/home/R$id;->message:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, messageView:Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    sget v11, Lcom/google/glass/home/R$integer;->max_lines_in_hangouts_timeline_card:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48
    const v11, 0x106000b

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    sget v11, Lcom/google/glass/home/R$id;->sender_picture_mosaic:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/MosaicView;

    .line 52
    .local v6, senderPictureMosaicView:Lcom/google/glass/widget/MosaicView;
    sget v11, Lcom/google/glass/home/R$id;->sender_picture_placeholder:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 54
    .local v7, senderPicturePlaceholderView:Landroid/widget/ImageView;
    sget v11, Lcom/google/glass/home/R$dimen;->lhs_width:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v10, v11

    .line 55
    .local v10, width:I
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v1, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 58
    .local v1, height:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v11

    if-nez v11, :cond_2

    .line 61
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    const-string v12, "No creator, setting MosaicView to share target 0\'s imageUrlList."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v11

    if-lez v11, :cond_1

    .line 63
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlList()Ljava/util/List;

    move-result-object v3

    .line 99
    .local v3, imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 100
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    const-string v12, "Setting mosaic view to valid list of image urls."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v6, v3, v10, v1}, Lcom/google/glass/widget/MosaicView;->setImageUrls(Ljava/util/List;II)V

    .line 102
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/google/glass/widget/MosaicView;->setVisibility(I)V

    .line 103
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_1
    const/4 v11, 0x0

    return v11

    .line 65
    .end local v3           #imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    const-string v12, "No creator and no share target.  Might be an old TimelineItem."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v3, 0x0

    .restart local v3       #imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 73
    .end local v3           #imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    const-string v12, "Creator exists, setting MosaicView to participants."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v11

    if-nez v11, :cond_4

    .line 75
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    const-string v12, "We didn\'t hang out with any share targets. :("

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlCount()I

    move-result v11

    if-lez v11, :cond_3

    .line 77
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    const-string v12, "Creator had an image URL, using that."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v13

    invoke-static {v13}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .restart local v3       #imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 80
    .end local v3           #imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    const-string v12, "Creator had an no image URL."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v3, 0x0

    .restart local v3       #imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 85
    .end local v3           #imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "We hung out with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " share targets."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v11

    invoke-static {v11}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 87
    .restart local v3       #imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/Entity;

    .line 88
    .local v8, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v8}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, url:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 90
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    :cond_5
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got a share target with empty/null image URL.  # of images="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 105
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v8           #shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v9           #url:Ljava/lang/String;
    :cond_6
    sget-object v11, Lcom/google/glass/home/timeline/database/HangoutItemViewBinder;->TAG:Ljava/lang/String;

    const-string v12, "Using placeholder."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Lcom/google/glass/widget/MosaicView;->setVisibility(I)V

    .line 107
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    .line 116
    sget v1, Lcom/google/glass/home/R$id;->sender_picture_mosaic:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MosaicView;

    .line 117
    .local v0, senderPictureMosaicView:Lcom/google/glass/widget/MosaicView;
    invoke-virtual {v0}, Lcom/google/glass/widget/MosaicView;->cancelImageDownloads()V

    .line 118
    invoke-virtual {v0}, Lcom/google/glass/widget/MosaicView;->clearImages()V

    .line 119
    return-void
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
    .line 123
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HANGOUT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 126
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

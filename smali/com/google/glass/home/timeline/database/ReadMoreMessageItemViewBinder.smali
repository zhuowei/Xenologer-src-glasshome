.class public Lcom/google/glass/home/timeline/database/ReadMoreMessageItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "ReadMoreMessageItemViewBinder.java"


# direct methods
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
    .line 33
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_read_more_message:I

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
    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 42
    .local v3, creator:Lcom/google/googlex/glass/common/proto/Entity;
    sget v2, Lcom/google/glass/home/R$id;->creator_picture:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 43
    .local v4, creatorPicture:Landroid/widget/ImageView;
    sget v2, Lcom/google/glass/home/R$id;->creator_name:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 44
    .local v8, creatorName:Landroid/widget/TextView;
    if-eqz v3, :cond_4

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/google/glass/home/R$dimen;->timeline_item_read_more_picture_size:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v6, v2

    .line 51
    .local v6, pictureSize:I
    new-instance v1, Lcom/google/glass/util/EntityImageDownloadTask;

    const/4 v5, 0x0

    move-object v2, p1

    move v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/util/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 54
    .local v1, task:Lcom/google/glass/util/EntityImageDownloadTask;
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 55
    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 58
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 59
    .local v12, nameContent:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    .line 60
    .local v11, name:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {v12, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    :cond_0
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, email:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    .line 66
    .local v13, spanStart:I
    if-lez v13, :cond_1

    .line 67
    const-string v2, "\n"

    invoke-virtual {v12, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    :cond_1
    invoke-virtual {v12, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/google/glass/home/R$color;->text_gray:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v7, 0x21

    invoke-virtual {v12, v2, v13, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 74
    .end local v13           #spanStart:I
    :cond_2
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .end local v1           #task:Lcom/google/glass/util/EntityImageDownloadTask;
    .end local v6           #pictureSize:I
    .end local v9           #email:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #nameContent:Landroid/text/SpannableStringBuilder;
    :goto_0
    sget v2, Lcom/google/glass/home/R$id;->message:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 84
    .local v10, messageView:Lcom/google/glass/widget/DynamicSizeTextView;
    if-eqz p4, :cond_3

    .line 85
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 88
    :cond_3
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/4 v2, 0x0

    return v2

    .line 76
    .end local v10           #messageView:Lcom/google/glass/widget/DynamicSizeTextView;
    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    const/4 v3, 0x0

    .line 96
    sget v2, Lcom/google/glass/home/R$id;->message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 97
    .local v0, messageView:Lcom/google/glass/widget/DynamicSizeTextView;
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 99
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/EntityImageDownloadTask;

    .line 103
    .local v1, task:Lcom/google/glass/util/EntityImageDownloadTask;
    if-eqz v1, :cond_0

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/glass/util/EntityImageDownloadTask;->cancel(Z)V

    .line 105
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 107
    :cond_0
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
    .line 111
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->MESSAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 113
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.class public Lcom/google/glass/home/timeline/database/CallItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "CallItemViewBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_call:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
    .locals 15
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"

    .prologue
    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v13

    .line 39
    .local v13, text:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 40
    .local v10, resources:Landroid/content/res/Resources;
    sget v2, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 41
    .local v14, textColor:I
    sget v2, Lcom/google/glass/home/R$string;->phone_call_missed_call:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    sget v2, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 45
    :cond_0
    sget v2, Lcom/google/glass/home/R$id;->message:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 46
    .local v9, messageView:Landroid/widget/TextView;
    sget v2, Lcom/google/glass/home/R$id;->sender_name:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 47
    .local v12, senderNameView:Landroid/widget/TextView;
    sget v2, Lcom/google/glass/home/R$id;->sender_picture:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 48
    .local v4, senderPictureView:Landroid/widget/ImageView;
    sget v2, Lcom/google/glass/home/R$dimen;->lhs_width:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v6, v2

    .line 49
    .local v6, width:I
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 52
    .local v7, height:I
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 56
    .local v3, sender:Lcom/google/googlex/glass/common/proto/Entity;
    sget v2, Lcom/google/glass/home/R$integer;->max_lines_in_phone_call_timeline_card:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    new-instance v8, Lcom/google/glass/phone/PhoneCallTimelineHelper;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;-><init>(Landroid/content/Context;)V

    .line 63
    .local v8, helper:Lcom/google/glass/phone/PhoneCallTimelineHelper;
    invoke-virtual {v8, v3}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->getNameFromEntity(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, senderName:Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v1, Lcom/google/glass/util/EntityImageDownloadTask;

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/util/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 73
    .local v1, loadingTask:Lcom/google/glass/util/EntityImageDownloadTask;
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 76
    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 77
    const/4 v2, 0x0

    return v2
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    const/4 v3, 0x0

    .line 84
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/EntityImageDownloadTask;

    .line 86
    .local v0, loadingTask:Lcom/google/glass/util/EntityImageDownloadTask;
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 88
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 92
    :cond_0
    sget v2, Lcom/google/glass/home/R$id;->sender_picture:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 93
    .local v1, senderPictureView:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
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
    .line 98
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->CALL:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 101
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

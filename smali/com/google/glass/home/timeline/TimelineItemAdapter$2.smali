.class Lcom/google/glass/home/timeline/TimelineItemAdapter$2;
.super Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;
.source "TimelineItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineItemAdapter;->bind(ILcom/google/glass/home/timeline/TimelineItemContainerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

.field final synthetic val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRead(Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V
    .locals 22
    .parameter "result"

    .prologue
    .line 261
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    .line 263
    .local v3, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->getBundleCoverStatus()I

    move-result v9

    .line 264
    .local v9, bundleCoverStatus:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->getCrc32()Ljava/lang/Long;

    move-result-object v11

    .line 267
    .local v11, crc32:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 268
    .local v16, oldItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_item_crc32:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 269
    .local v15, oldCrc32:Ljava/lang/Long;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    invoke-static {v3, v11, v0, v15}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->isSameItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Long;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 272
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->removeContainedCard()V

    .line 275
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v14

    .line 278
    .local v14, nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBoundViewType(Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    invoke-static {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$000(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v17

    .line 280
    .local v17, prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    const/4 v6, 0x0

    .line 282
    .local v6, view:Landroid/view/View;
    move-object/from16 v0, v17

    if-ne v14, v0, :cond_7

    .line 285
    if-eqz v16, :cond_6

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v19, 0x1

    .line 289
    .local v19, sameId:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    move/from16 v0, v19

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearDataFromContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V
    invoke-static {v2, v4, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$100(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #view:Landroid/view/View;
    check-cast v6, Landroid/view/View;

    .line 293
    .restart local v6       #view:Landroid/view/View;
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v6, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/database/ItemViewBinder;

    .line 305
    .end local v19           #sameId:Z
    .local v1, binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v2, v4, v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_item_crc32:I

    invoke-virtual {v2, v4, v11}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 310
    new-instance v8, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;-><init>(Lcom/google/glass/home/timeline/TimelineItemAdapter$2;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 321
    .local v8, textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$600(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->inBundle:Z
    invoke-static {v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$700(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z
    invoke-static {v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;
    invoke-static {v7}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$800(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v7

    invoke-interface/range {v1 .. v8}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->bind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z

    move-result v13

    .line 326
    .local v13, isMultipage:Z
    instance-of v2, v6, Lcom/google/glass/horizontalscroll/Card;

    if-eqz v2, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    check-cast v6, Lcom/google/glass/horizontalscroll/Card;

    .end local v6           #view:Landroid/view/View;
    invoke-virtual {v2, v6}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setContainedCard(Lcom/google/glass/horizontalscroll/Card;)V

    .line 331
    :cond_1
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v12, 0x1

    .line 332
    .local v12, hasBundleId:Z
    :goto_2
    const/16 v21, 0x0

    .line 336
    .local v21, useBundleCornerTreatment:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->inBundle:Z
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$700(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v12, :cond_2

    const/4 v2, 0x3

    if-eq v9, v2, :cond_2

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v4, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setBundleEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 340
    const/16 v21, 0x1

    .line 345
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v13, :cond_3

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v4, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setReadMoreEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 351
    const/16 v21, 0x1

    .line 354
    :cond_3
    if-eqz v21, :cond_4

    .line 357
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$600(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 358
    .local v10, bundleView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleCornerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$900(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBundleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1000(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v10, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 363
    .local v20, sheen:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleSheenDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1100(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    .end local v1           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .end local v8           #textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .end local v10           #bundleView:Landroid/widget/ImageView;
    .end local v12           #hasBundleId:Z
    .end local v13           #isMultipage:Z
    .end local v14           #nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v17           #prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v20           #sheen:Landroid/widget/ImageView;
    .end local v21           #useBundleCornerTreatment:Z
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Runnable;

    .line 372
    .local v18, runnable:Ljava/lang/Runnable;
    if-eqz v18, :cond_5

    .line 373
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 376
    :cond_5
    return-void

    .line 285
    .end local v18           #runnable:Ljava/lang/Runnable;
    .restart local v6       #view:Landroid/view/View;
    .restart local v14       #nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .restart local v17       #prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 297
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->destroyContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    invoke-static {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$200(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v2

    invoke-static {v14, v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBinder(Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Z)Lcom/google/glass/home/timeline/database/ItemViewBinder;

    move-result-object v1

    .line 301
    .restart local v1       #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->addViewToContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;
    invoke-static {v2, v4, v14, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$400(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_1

    .line 331
    .end local v6           #view:Landroid/view/View;
    .restart local v8       #textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .restart local v13       #isMultipage:Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 366
    .end local v1           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .end local v8           #textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .end local v13           #isMultipage:Z
    .end local v14           #nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v17           #prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    :cond_9
    invoke-static {}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has not changed, not re-binding."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

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
    .line 254
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRead(Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V
    .locals 21
    .parameter "result"

    .prologue
    .line 257
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    .line 259
    .local v3, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->getBundleCoverStatus()I

    move-result v9

    .line 260
    .local v9, bundleCoverStatus:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->getCrc32()Ljava/lang/Long;

    move-result-object v11

    .line 263
    .local v11, crc32:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 264
    .local v16, oldItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_item_crc32:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 265
    .local v15, oldCrc32:Ljava/lang/Long;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    invoke-static {v3, v11, v0, v15}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->isSameItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Long;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 268
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->removeScrollItem()V

    .line 271
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v14

    .line 274
    .local v14, nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBoundViewType(Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    invoke-static {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$000(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v17

    .line 276
    .local v17, prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    const/4 v6, 0x0

    .line 278
    .local v6, view:Landroid/view/View;
    move-object/from16 v0, v17

    if-ne v14, v0, :cond_6

    .line 281
    if-eqz v16, :cond_5

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v19, 0x1

    .line 285
    .local v19, sameId:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    move/from16 v0, v19

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearDataFromContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V
    invoke-static {v2, v4, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$100(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #view:Landroid/view/View;
    check-cast v6, Landroid/view/View;

    .line 289
    .restart local v6       #view:Landroid/view/View;
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v6, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/database/ItemViewBinder;

    .line 301
    .end local v19           #sameId:Z
    .local v1, binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v2, v4, v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_item_crc32:I

    invoke-virtual {v2, v4, v11}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 306
    new-instance v8, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;-><init>(Lcom/google/glass/home/timeline/TimelineItemAdapter$2;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 317
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

    .line 322
    .local v13, isMultipage:Z
    instance-of v2, v6, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v2, :cond_1

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    check-cast v6, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    .end local v6           #view:Landroid/view/View;
    invoke-virtual {v2, v6}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setScrollItem(Lcom/google/glass/horizontalscroll/HorizontalScrollItem;)V

    .line 327
    :cond_1
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v12, 0x1

    .line 331
    .local v12, hasBundleId:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->inBundle:Z
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$700(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v13, :cond_2

    if-eqz v12, :cond_3

    :cond_2
    const/4 v2, 0x3

    if-eq v9, v2, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v4, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setBundleId(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 337
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$600(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 338
    .local v10, bundleView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleCornerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$900(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBundleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1000(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v10, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 343
    .local v20, sheen:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleSheenDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1100(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    .end local v1           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .end local v8           #textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .end local v10           #bundleView:Landroid/widget/ImageView;
    .end local v12           #hasBundleId:Z
    .end local v13           #isMultipage:Z
    .end local v14           #nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v17           #prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v20           #sheen:Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Runnable;

    .line 350
    .local v18, runnable:Ljava/lang/Runnable;
    if-eqz v18, :cond_4

    .line 351
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v4, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 354
    :cond_4
    return-void

    .line 281
    .end local v18           #runnable:Ljava/lang/Runnable;
    .restart local v6       #view:Landroid/view/View;
    .restart local v14       #nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .restart local v17       #prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 293
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->destroyContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    invoke-static {v2, v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$200(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z
    invoke-static {v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v2

    invoke-static {v14, v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBinder(Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Z)Lcom/google/glass/home/timeline/database/ItemViewBinder;

    move-result-object v1

    .line 297
    .restart local v1       #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->addViewToContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;
    invoke-static {v2, v4, v14, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$400(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_1

    .line 327
    .end local v6           #view:Landroid/view/View;
    .restart local v8       #textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .restart local v13       #isMultipage:Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

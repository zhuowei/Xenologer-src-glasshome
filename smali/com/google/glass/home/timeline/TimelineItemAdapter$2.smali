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
    .line 287
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRead(Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V
    .locals 26
    .parameter "result"

    .prologue
    .line 290
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    .line 292
    .local v4, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->getBundleCoverStatus()I

    move-result v11

    .line 293
    .local v11, bundleCoverStatus:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;->getCrc32()Ljava/lang/Long;

    move-result-object v13

    .line 296
    .local v13, crc32:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 297
    .local v19, oldItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_item_crc32:I

    invoke-virtual {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 298
    .local v18, oldCrc32:Ljava/lang/Long;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v4, v13, v0, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->isSameItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Long;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 300
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->removeContainedView()V

    .line 303
    invoke-static {v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v17

    .line 306
    .local v17, nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBoundViewType(Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    invoke-static {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$000(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v20

    .line 308
    .local v20, prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    const/4 v7, 0x0

    .line 310
    .local v7, view:Landroid/view/View;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 312
    if-eqz v19, :cond_5

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v22, 0x1

    .line 316
    .local v22, sameId:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    move/from16 v0, v22

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->clearDataFromContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V
    invoke-static {v3, v5, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$100(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #view:Landroid/view/View;
    check-cast v7, Landroid/view/View;

    .line 320
    .restart local v7       #view:Landroid/view/View;
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v7, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/timeline/database/ItemViewBinder;

    .line 331
    .end local v22           #sameId:Z
    .local v2, binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v3, v5, v4}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_item_crc32:I

    invoke-virtual {v3, v5, v13}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 338
    new-instance v16, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;-><init>(Lcom/google/glass/home/timeline/TimelineItemAdapter$2;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 351
    .local v16, listener:Lcom/google/glass/home/timeline/NotificationState$Listener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->notificationState:Lcom/google/glass/home/timeline/NotificationState;
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$500(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/home/timeline/NotificationState;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/glass/home/timeline/NotificationState;->addListener(Lcom/google/glass/home/timeline/NotificationState$Listener;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_notification_state_listener:I

    invoke-virtual {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_notification_state_listener:I

    move-object/from16 v0, v16

    invoke-virtual {v3, v5, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 357
    new-instance v9, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$2;-><init>(Lcom/google/glass/home/timeline/TimelineItemAdapter$2;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 371
    .local v9, textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$800(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->inBundle:Z
    invoke-static {v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$900(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z
    invoke-static {v6}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;
    invoke-static {v8}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1000(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->contentSizedListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;
    invoke-static {v10}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$700(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->bind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)Z

    move-result v15

    .line 376
    .local v15, isMultipage:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    invoke-virtual {v3, v7}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setContainedView(Landroid/view/View;)V

    .line 379
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v14, 0x1

    .line 380
    .local v14, hasBundleId:Z
    :goto_2
    const/16 v25, 0x0

    .line 384
    .local v25, useBundleCornerTreatment:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->inBundle:Z
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$900(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v14, :cond_1

    const/4 v3, 0x3

    if-eq v11, v3, :cond_1

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v5, v4}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setBundleEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 388
    const/16 v25, 0x1

    .line 393
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v15, :cond_2

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v5, v4}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setReadMoreEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V

    .line 399
    const/16 v25, 0x1

    .line 402
    :cond_2
    if-eqz v25, :cond_3

    .line 404
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$800(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 405
    .local v12, bundleView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleCornerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1100(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBundleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1200(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v12, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 410
    .local v23, sheen:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->bundleSheenDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    .end local v12           #bundleView:Landroid/widget/ImageView;
    .end local v23           #sheen:Landroid/widget/ImageView;
    :cond_3
    sget v3, Lcom/google/glass/home/R$id;->timestamp:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 414
    .local v24, timestampView:Landroid/view/View;
    if-eqz v24, :cond_8

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/view/View;

    const/4 v8, 0x0

    aput-object v24, v6, v8

    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 425
    .end local v2           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .end local v7           #view:Landroid/view/View;
    .end local v9           #textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .end local v14           #hasBundleId:Z
    .end local v15           #isMultipage:Z
    .end local v16           #listener:Lcom/google/glass/home/timeline/NotificationState$Listener;
    .end local v17           #nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v20           #prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v24           #timestampView:Landroid/view/View;
    .end local v25           #useBundleCornerTreatment:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Runnable;

    .line 427
    .local v21, runnable:Ljava/lang/Runnable;
    if-eqz v21, :cond_4

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 429
    invoke-interface/range {v21 .. v21}, Ljava/lang/Runnable;->run()V

    .line 431
    :cond_4
    return-void

    .line 312
    .end local v21           #runnable:Ljava/lang/Runnable;
    .restart local v7       #view:Landroid/view/View;
    .restart local v17       #nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .restart local v20       #prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 323
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->destroyContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;)V
    invoke-static {v3, v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$200(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/TimelineItemAdapter;->isReadMore:Z
    invoke-static {v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$300(Lcom/google/glass/home/timeline/TimelineItemAdapter;)Z

    move-result v3

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getBinder(Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Z)Lcom/google/glass/home/timeline/database/ItemViewBinder;

    move-result-object v2

    .line 327
    .restart local v2       #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    move-object/from16 v0, v17

    #calls: Lcom/google/glass/home/timeline/TimelineItemAdapter;->addViewToContainer(Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;
    invoke-static {v3, v5, v0, v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$400(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemContainerView;Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;Lcom/google/glass/home/timeline/database/ItemViewBinder;)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_1

    .line 379
    .restart local v9       #textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .restart local v15       #isMultipage:Z
    .restart local v16       #listener:Lcom/google/glass/home/timeline/NotificationState$Listener;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 418
    .restart local v14       #hasBundleId:Z
    .restart local v24       #timestampView:Landroid/view/View;
    .restart local v25       #useBundleCornerTreatment:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    sget v5, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    goto :goto_3

    .line 421
    .end local v2           #binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;
    .end local v7           #view:Landroid/view/View;
    .end local v9           #textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .end local v14           #hasBundleId:Z
    .end local v15           #isMultipage:Z
    .end local v16           #listener:Lcom/google/glass/home/timeline/NotificationState$Listener;
    .end local v17           #nextViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v20           #prevViewType:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .end local v24           #timestampView:Landroid/view/View;
    .end local v25           #useBundleCornerTreatment:Z
    :cond_9
    invoke-static {}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->access$1400()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has not changed, not re-binding."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

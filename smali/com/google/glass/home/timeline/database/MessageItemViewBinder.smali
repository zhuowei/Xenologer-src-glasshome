.class public Lcom/google/glass/home/timeline/database/MessageItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "MessageItemViewBinder.java"


# static fields
.field private static bindingIndex:I

.field private static final mainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;->mainThreadHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;->bindingIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    return-void
.end method

.method protected static dedupeList(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, input:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 150
    .local v8, seenIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 151
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 152
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Entity;

    .line 153
    .local v2, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v2}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/Entity;)[Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, ids:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, duplicate:Z
    if-eqz v5, :cond_0

    .line 156
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v4, v0, v3

    .line 157
    .local v4, id:Ljava/lang/String;
    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 158
    const/4 v1, 0x1

    .line 163
    .end local v4           #id:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 164
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 156
    .restart local v4       #id:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v4           #id:Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 170
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #duplicate:Z
    .end local v2           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v3           #i$:I
    .end local v5           #ids:[Ljava/lang/String;
    .end local v7           #len$:I
    :cond_4
    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_message:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
    .locals 20
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"

    .prologue
    .line 56
    sget v1, Lcom/google/glass/home/R$id;->tag_view_binding_index:I

    sget v2, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;->bindingIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;->bindingIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 60
    sget v1, Lcom/google/glass/home/R$id;->participants:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/glass/widget/MosaicView;

    .line 61
    .local v12, participantsView:Lcom/google/glass/widget/MosaicView;
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 62
    .local v15, resources:Landroid/content/res/Resources;
    sget v1, Lcom/google/glass/home/R$dimen;->lhs_width:I

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 63
    .local v14, participantsViewWidth:I
    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v13, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    .local v13, participantsViewHeight:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v18

    .line 67
    .local v18, title:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v17

    .line 68
    .local v17, text:Ljava/lang/String;
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 71
    .local v9, content:Landroid/text/SpannableStringBuilder;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 77
    :cond_0
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    :cond_1
    :goto_0
    sget v1, Lcom/google/glass/home/R$id;->message:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 91
    .local v5, messageView:Lcom/google/glass/widget/DynamicSizeTextView;
    if-eqz p4, :cond_2

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 97
    :cond_2
    move-object v7, v9

    .line 98
    .local v7, finalContent:Ljava/lang/CharSequence;
    sget v4, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;->bindingIndex:I

    .line 99
    .local v4, finalContentBindingIndex:I
    sget-object v19, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;-><init>(Lcom/google/glass/home/timeline/database/MessageItemViewBinder;Landroid/view/View;ILcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Ljava/lang/CharSequence;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v11

    .line 113
    .local v11, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_3
    if-nez p3, :cond_4

    .line 119
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    :cond_4
    invoke-static {v11}, Lcom/google/glass/home/timeline/database/MessageItemViewBinder;->dedupeList(Ljava/util/List;)V

    .line 125
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 126
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Lcom/google/glass/widget/MosaicView;->setVisibility(I)V

    .line 132
    :goto_1
    sget v1, Lcom/google/glass/home/R$id;->failed_overlay:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 133
    .local v10, overlay:Landroid/view/View;
    invoke-static/range {p2 .. p2}, Lcom/google/glass/timeline/TimelineHelper;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$fraction;->failed_message_background_alpha:I

    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    .line 137
    .local v8, alpha:F
    sget v1, Lcom/google/glass/home/R$id;->body:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 143
    .end local v8           #alpha:F
    :goto_2
    const/4 v1, 0x0

    return v1

    .line 81
    .end local v4           #finalContentBindingIndex:I
    .end local v5           #messageView:Lcom/google/glass/widget/DynamicSizeTextView;
    .end local v7           #finalContent:Ljava/lang/CharSequence;
    .end local v10           #overlay:Landroid/view/View;
    .end local v11           #participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_5
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    .line 82
    .local v16, spanStart:I
    const-string v1, "\n"

    invoke-virtual {v9, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 83
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 84
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$color;->text_gray:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    move/from16 v0, v16

    invoke-virtual {v9, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 128
    .end local v16           #spanStart:I
    .restart local v4       #finalContentBindingIndex:I
    .restart local v5       #messageView:Lcom/google/glass/widget/DynamicSizeTextView;
    .restart local v7       #finalContent:Ljava/lang/CharSequence;
    .restart local v11       #participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/google/glass/widget/MosaicView;->setVisibility(I)V

    .line 129
    invoke-virtual {v12, v11, v14, v13}, Lcom/google/glass/widget/MosaicView;->setEntities(Ljava/util/List;II)V

    goto :goto_1

    .line 139
    .restart local v10       #overlay:Landroid/view/View;
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    sget v1, Lcom/google/glass/home/R$id;->body:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    const/4 v3, 0x0

    .line 174
    sget v2, Lcom/google/glass/home/R$id;->tag_view_binding_index:I

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 176
    sget v2, Lcom/google/glass/home/R$id;->participants:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/MosaicView;

    .line 177
    .local v1, participantsView:Lcom/google/glass/widget/MosaicView;
    invoke-virtual {v1}, Lcom/google/glass/widget/MosaicView;->cancelImageDownloads()V

    .line 178
    invoke-virtual {v1}, Lcom/google/glass/widget/MosaicView;->clearImages()V

    .line 180
    sget v2, Lcom/google/glass/home/R$id;->message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 181
    .local v0, messageView:Lcom/google/glass/widget/DynamicSizeTextView;
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 182
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 183
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
    .line 187
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->MESSAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 189
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.class public Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilteredEntityAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# static fields
.field private static final NUMBER_OF_ITEMS:I = 0x1


# instance fields
.field private final item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private final view:Lcom/google/glass/home/timeline/FilteredEntityCard;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/glass/util/CustomItemIdGenerator;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter "idGenerator"
    .parameter "entity"
    .parameter "existingImage"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/google/glass/util/CustomItemIdGenerator;->createId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 31
    new-instance v0, Lcom/google/glass/home/timeline/FilteredEntityCard;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/glass/home/timeline/FilteredEntityCard;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;->view:Lcom/google/glass/home/timeline/FilteredEntityCard;

    .line 32
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;->view:Lcom/google/glass/home/timeline/FilteredEntityCard;

    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1, p0}, Lcom/google/glass/home/timeline/FilteredEntityCard;->setTag(ILjava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;->view:Lcom/google/glass/home/timeline/FilteredEntityCard;

    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/timeline/FilteredEntityCard;->setTag(ILjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 59
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;->view:Lcom/google/glass/home/timeline/FilteredEntityCard;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 72
    return-void
.end method

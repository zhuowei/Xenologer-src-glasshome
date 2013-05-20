.class public Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "GuestTimelineItemAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    }
.end annotation


# static fields
.field private static final GUEST_VID_PATH:Ljava/lang/String; = "/system/media/guest_mode_video.mp4"


# instance fields
.field private final idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private final views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Z)V
    .locals 10
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "pinned"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->views:Ljava/util/List;

    .line 64
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->items:Ljava/util/List;

    .line 68
    if-eqz p3, :cond_0

    .line 69
    new-instance v8, Lcom/google/glass/util/CustomItemIdGenerator;

    const-string v9, "guest-pinned"

    invoke-direct {v8, v9}, Lcom/google/glass/util/CustomItemIdGenerator;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    .line 76
    :goto_0
    const/4 v5, 0x0

    .line 77
    .local v5, position:I
    invoke-static {}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->values()[Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v6, v5

    .end local v5           #position:I
    .local v6, position:I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    .line 78
    .local v3, item:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    iget-boolean v8, v3, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->pinned:Z

    if-ne v8, p3, :cond_3

    .line 79
    sget-object v8, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->VID:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    if-ne v8, v3, :cond_1

    .line 80
    add-int/lit8 v5, v6, 0x1

    .end local v6           #position:I
    .restart local v5       #position:I
    const-string v8, "/system/media/guest_mode_video.mp4"

    invoke-direct {p0, p1, v3, v8, p2}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->createVideoView(Landroid/content/Context;Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;Ljava/lang/String;Lcom/google/glass/util/CachedBitmapFactory;)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->addView(ILandroid/view/View;)V

    .line 87
    :goto_2
    iget v8, v3, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->timeResource:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, timeLabelText:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->views:Ljava/util/List;

    iget-object v9, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->views:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v9, Lcom/google/glass/home/R$id;->tag_item_time_label_text:I

    invoke-virtual {v8, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    .end local v7           #timeLabelText:Ljava/lang/String;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #position:I
    .restart local v6       #position:I
    goto :goto_1

    .line 71
    .end local v0           #arr$:[Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    .end local v1           #i$:I
    .end local v3           #item:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    .end local v4           #len$:I
    .end local v6           #position:I
    :cond_0
    new-instance v8, Lcom/google/glass/util/CustomItemIdGenerator;

    const-string v9, "guest-historical"

    invoke-direct {v8, v9}, Lcom/google/glass/util/CustomItemIdGenerator;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    goto :goto_0

    .line 82
    .restart local v0       #arr$:[Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    .restart local v1       #i$:I
    .restart local v3       #item:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    .restart local v4       #len$:I
    .restart local v6       #position:I
    :cond_1
    new-instance v2, Lcom/google/glass/horizontalscroll/HorizontalScrollImageView;

    invoke-direct {v2, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollImageView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v2, imageView:Landroid/widget/ImageView;
    iget v8, v3, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->imageResource:I

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    add-int/lit8 v5, v6, 0x1

    .end local v6           #position:I
    .restart local v5       #position:I
    invoke-direct {p0, v6, v2}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->addView(ILandroid/view/View;)V

    goto :goto_2

    .line 91
    .end local v2           #imageView:Landroid/widget/ImageView;
    .end local v3           #item:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    .end local v5           #position:I
    .restart local v6       #position:I
    :cond_2
    return-void

    .restart local v3       #item:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    :cond_3
    move v5, v6

    .end local v6           #position:I
    .restart local v5       #position:I
    goto :goto_3
.end method

.method private addView(ILandroid/view/View;)V
    .locals 3
    .parameter "position"
    .parameter "view"

    .prologue
    .line 121
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/CustomItemIdGenerator;->createId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 124
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method private createVideoView(Landroid/content/Context;Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;Ljava/lang/String;Lcom/google/glass/util/CachedBitmapFactory;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "item"
    .parameter "videoPath"
    .parameter "bitmapFactory"

    .prologue
    const/4 v6, 0x0

    .line 98
    new-instance v1, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    invoke-direct {v1, p1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$layout;->timeline_item_video:I

    invoke-virtual {v4, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/timeline/VideoItemView;

    .line 101
    .local v3, view:Lcom/google/glass/home/timeline/VideoItemView;
    invoke-virtual {v1, v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v1, v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setScrollItem(Lcom/google/glass/horizontalscroll/HorizontalScrollItem;)V

    .line 104
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    const-string v5, "guest_vid_attachment"

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 110
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v3, v0, p4}, Lcom/google/glass/home/timeline/VideoItemView;->setVideoAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 113
    sget v4, Lcom/google/glass/home/R$id;->thumbnail:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 114
    .local v2, thumbnailView:Landroid/widget/ImageView;
    iget v4, p2, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->imageResource:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    return-object v1
.end method

.method public static forceLoad(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "onLoad"

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 178
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 156
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;->getPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 164
    .local v0, view:Landroid/view/View;
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 166
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 171
    return-void
.end method

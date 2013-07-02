.class public final Lcom/google/glass/home/timeline/TimelineOverlayView;
.super Lcom/google/glass/horizontalscroll/FastScrollOverlay;
.source "TimelineOverlayView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/home/timeline/TimelineOverlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/home/timeline/TimelineView;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "timelineView"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/glass/home/timeline/TimelineView;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "timelineView"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/home/timeline/TimelineOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/home/timeline/TimelineView;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/home/timeline/TimelineView;)V
    .locals 2
    .parameter "context"
    .parameter "timelineView"

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/glass/home/timeline/TimelineOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/home/timeline/TimelineView;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getHomePositionLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->timeline_overlay_label_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForItem(Landroid/view/View;I)Ljava/lang/String;
    .locals 11
    .parameter "itemView"
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 41
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 42
    .local v7, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getScrollView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getHomePosition()I

    move-result v0

    if-le p2, v0, :cond_1

    move v6, v5

    .line 43
    .local v6, allowPast:Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 45
    .local v3, currentTime:J
    sget v0, Lcom/google/glass/home/R$id;->tag_item_time_label_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 46
    .local v8, text:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 47
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v1

    .line 49
    .local v1, displayTime:J
    const-wide/16 v9, 0x0

    cmp-long v0, v1, v9

    if-eqz v0, :cond_0

    if-nez v6, :cond_2

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getHomePositionLabel()Ljava/lang/String;

    move-result-object v0

    .line 56
    .end local v1           #displayTime:J
    :goto_1
    return-object v0

    .line 42
    .end local v3           #currentTime:J
    .end local v6           #allowPast:Z
    .end local v8           #text:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 53
    .restart local v1       #displayTime:J
    .restart local v3       #currentTime:J
    .restart local v6       #allowPast:Z
    .restart local v8       #text:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v8

    .line 54
    sget v0, Lcom/google/glass/home/R$id;->tag_item_time_label_text:I

    invoke-virtual {p1, v0, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .end local v1           #displayTime:J
    :cond_3
    move-object v0, v8

    .line 56
    goto :goto_1
.end method

.method protected isLabelReady(Landroid/view/View;)Z
    .locals 1
    .parameter "itemView"

    .prologue
    .line 66
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setRunnableForWhenLabelReady(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "itemView"
    .parameter "runnable"

    .prologue
    .line 71
    sget v0, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    sget v0, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

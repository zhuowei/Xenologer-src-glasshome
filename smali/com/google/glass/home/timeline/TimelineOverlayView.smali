.class public final Lcom/google/glass/home/timeline/TimelineOverlayView;
.super Landroid/widget/FrameLayout;
.source "TimelineOverlayView.java"


# static fields
.field private static final ITEM_VIEW_SPACING:F = 10.0f

.field private static final ITEM_VIEW_WIDTH:F = 211.20001f

.field private static final LABEL_LEFT_MARGIN:F = 40.0f

.field private static final LABEL_OFFSET_PER_ITEM:F = 221.20001f

.field private static final LABEL_OFFSET_WHEN_LEFT_ALIGNED:F = 60.0f

.field private static final LABEL_OFFSET_WHEN_RIGHT_ALIGNED:F = 10.0f

.field private static final LABEL_RIGHT_MARGIN:F = 40.0f

.field private static final MIN_ITEM_POSITION_FOR_LABEL:I = 0x1

.field private static final NUM_LABELS:I = 0x5

.field private static final NUM_LABELS_RIGHT_ALIGNED:I = 0x3

.field private static final SCREEN_WIDTH:F = 640.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private labelText:[Ljava/lang/String;

.field private labelTextWidths:[F

.field private labelX:[F

.field private labels:[Lcom/google/glass/widget/TypophileTextView;

.field private lastCenterPosition:I

.field private lastZoomFactor:F

.field private overlay:Landroid/widget/FrameLayout;

.field private timelineView:Lcom/google/glass/home/timeline/TimelineView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/home/timeline/TimelineOverlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/home/timeline/TimelineView;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "timelineView"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-array v2, v6, [Lcom/google/glass/widget/TypophileTextView;

    iput-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    .line 54
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelText:[Ljava/lang/String;

    .line 57
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelTextWidths:[F

    .line 60
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelX:[F

    .line 63
    iput v7, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->lastZoomFactor:F

    .line 66
    iput v8, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->lastCenterPosition:I

    .line 85
    iput-object p4, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    .line 88
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    .line 89
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/TimelineOverlayView;->addView(Landroid/view/View;)V

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 95
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 96
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    sget v2, Lcom/google/glass/home/R$layout;->timeline_label:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    aput-object v2, v3, v0

    .line 97
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelText:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 99
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelTextWidths:[F

    const/high16 v3, -0x4080

    aput v3, v2, v0

    .line 100
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 105
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 107
    sget-object v2, Lcom/google/glass/home/timeline/TimelineOverlayView;->TAG:Ljava/lang/String;

    const-string v3, "Initialized timeline overlay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/glass/home/timeline/TimelineView;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "timelineView"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/home/timeline/TimelineOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/home/timeline/TimelineView;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/home/timeline/TimelineView;)V
    .locals 2
    .parameter "context"
    .parameter "timelineView"

    .prologue
    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/glass/home/timeline/TimelineOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/home/timeline/TimelineView;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/TimelineOverlayView;Landroid/view/View;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabelForItemView(Landroid/view/View;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/TimelineOverlayView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->adjustTimestampAlphaForItemView(Landroid/view/View;)V

    return-void
.end method

.method private adjustTimestampAlphaForItemView(Landroid/view/View;)V
    .locals 3
    .parameter "itemView"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/TimelineView;->getZoomOutFactor()F

    move-result v1

    .line 227
    .local v1, zoomFactor:F
    sget v2, Lcom/google/glass/home/R$id;->timestamp:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, timestampView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 229
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 231
    :cond_0
    return-void
.end method

.method private getLabelTextWidth(I)F
    .locals 3
    .parameter "i"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelTextWidths:[F

    aget v0, v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelTextWidths:[F

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelText:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    aput v1, v0, p1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelTextWidths:[F

    aget v0, v0, p1

    return v0
.end method

.method private getTimeLabelTextForItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;ZJ)Ljava/lang/String;
    .locals 7
    .parameter "item"
    .parameter "itemView"
    .parameter "allowPast"
    .parameter "currentTime"

    .prologue
    .line 239
    sget v0, Lcom/google/glass/home/R$id;->tag_item_time_label_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 240
    .local v6, text:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 241
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v1

    .line 243
    .local v1, displayTime:J
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    cmp-long v0, v1, p4

    if-gez v0, :cond_1

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/glass/home/R$string;->timeline_overlay_label_now:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .end local v1           #displayTime:J
    :goto_0
    return-object v0

    .line 246
    .restart local v1       #displayTime:J
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x1

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v6

    .line 247
    sget v0, Lcom/google/glass/home/R$id;->tag_item_time_label_text:I

    invoke-virtual {p2, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .end local v1           #displayTime:J
    :cond_2
    move-object v0, v6

    .line 249
    goto :goto_0
.end method

.method private setLabelText(ILjava/lang/String;Z)V
    .locals 4
    .parameter "i"
    .parameter "text"
    .parameter "updateViews"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelText:[Ljava/lang/String;

    aput-object p2, v1, p1

    .line 127
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelTextWidths:[F

    const/high16 v2, -0x4080

    aput v2, v1, p1

    .line 128
    if-eqz p3, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabelVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    if-lez p1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 136
    .local v0, wasVisible:Z
    :goto_0
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabelVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelText:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .end local v0           #wasVisible:Z
    :cond_1
    return-void

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLabelForItemView(Landroid/view/View;J)V
    .locals 12
    .parameter "itemView"
    .parameter "currentTime"

    .prologue
    const/4 v11, 0x1

    .line 253
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->getScrollPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 254
    .local v6, centerPosition:I
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->getHomePosition()I

    move-result v7

    .line 255
    .local v7, homePosition:I
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 258
    .local v8, itemPosition:I
    sub-int v0, v8, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 262
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-le v8, v7, :cond_1

    move v3, v11

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getTimeLabelTextForItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;ZJ)Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, text:Ljava/lang/String;
    add-int/lit8 v9, v6, -0x2

    .line 264
    .local v9, leftPosition:I
    sub-int v0, v8, v9

    invoke-direct {p0, v0, v10, v11}, Lcom/google/glass/home/timeline/TimelineOverlayView;->setLabelText(ILjava/lang/String;Z)V

    .line 265
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabelPositions()V

    goto :goto_0

    .line 262
    .end local v9           #leftPosition:I
    .end local v10           #text:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateLabelPositions()V
    .locals 18

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v13}, Lcom/google/glass/home/timeline/TimelineView;->getScrollPosition()F

    move-result v11

    .line 164
    .local v11, scrollPosition:F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 165
    .local v1, centerPosition:I
    add-int/lit8 v7, v1, -0x2

    .line 166
    .local v7, leftPosition:I
    int-to-float v13, v1

    sub-float v13, v11, v13

    const v14, 0x435d3334

    mul-float v9, v13, v14

    .line 169
    .local v9, periodicOffset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v13, 0x3

    if-ge v2, v13, :cond_0

    .line 170
    const v13, 0x435d3334

    add-int/lit8 v14, v2, -0x3

    int-to-float v14, v14

    mul-float v4, v13, v14

    .line 171
    .local v4, itemOffset:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelX:[F

    const/high16 v14, 0x4120

    add-float/2addr v14, v4

    sub-float/2addr v14, v9

    aput v14, v13, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v4           #itemOffset:F
    :cond_0
    const/4 v2, 0x3

    :goto_1
    const/4 v13, 0x5

    if-ge v2, v13, :cond_4

    .line 176
    const v13, 0x435d3334

    add-int/lit8 v14, v2, -0x3

    int-to-float v14, v14

    mul-float v4, v13, v14

    .line 177
    .restart local v4       #itemOffset:F
    const/high16 v13, 0x4120

    add-float/2addr v13, v4

    sub-float v10, v13, v9

    .line 178
    .local v10, rightOffset:F
    const/high16 v13, 0x4270

    add-float/2addr v13, v4

    const v14, 0x435d3334

    sub-float/2addr v13, v14

    sub-float/2addr v13, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getLabelTextWidth(I)F

    move-result v14

    add-float v6, v13, v14

    .line 181
    .local v6, leftOffset:F
    move v8, v6

    .line 182
    .local v8, offset:F
    const/high16 v13, -0x3de0

    cmpg-float v13, v8, v13

    if-gez v13, :cond_1

    .line 183
    const/high16 v13, -0x3de0

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 186
    :cond_1
    move v5, v2

    .line 189
    .local v5, j:I
    :goto_2
    const/4 v13, 0x2

    if-lt v5, v13, :cond_2

    add-int v13, v7, v5

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v14, v5, -0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2

    .line 190
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 192
    :cond_2
    if-ge v5, v2, :cond_3

    .line 193
    const/high16 v13, -0x3de0

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    sub-int v14, v2, v5

    int-to-float v14, v14

    const v15, 0x435d3334

    mul-float/2addr v14, v15

    sub-float v14, v8, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 196
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelX:[F

    aput v8, v13, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    .end local v4           #itemOffset:F
    .end local v5           #j:I
    .end local v6           #leftOffset:F
    .end local v8           #offset:F
    .end local v10           #rightOffset:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v13}, Lcom/google/glass/home/timeline/TimelineView;->getZoomScale()F

    move-result v12

    .line 201
    .local v12, zoomScale:F
    const v13, 0x3ea8f5c3

    cmpl-float v13, v12, v13

    if-lez v13, :cond_5

    .line 202
    const/4 v2, 0x0

    :goto_3
    const/4 v13, 0x5

    if-ge v2, v13, :cond_5

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelX:[F

    const/high16 v14, -0x3c60

    const v15, 0x3ea8f5c3

    div-float v15, v12, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelX:[F

    move-object/from16 v16, v0

    aget v16, v16, v2

    const/high16 v17, 0x43a0

    add-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v13, v2

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 211
    :cond_5
    const/4 v2, 0x0

    :goto_4
    const/4 v13, 0x5

    if-ge v2, v13, :cond_9

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelX:[F

    aget v13, v13, v2

    const/high16 v14, -0x3be0

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelX:[F

    aget v13, v13, v2

    const v14, 0x43533334

    cmpl-float v13, v13, v14

    if-lez v13, :cond_7

    :cond_6
    const/4 v3, 0x1

    .line 213
    .local v3, isOffScreen:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v14, v13, v2

    if-eqz v3, :cond_8

    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v14, v13}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 212
    .end local v3           #isOffScreen:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 213
    .restart local v3       #isOffScreen:Z
    :cond_8
    const/high16 v13, 0x3f80

    goto :goto_6

    .line 217
    .end local v3           #isOffScreen:Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->invalidate()V

    .line 218
    const/4 v2, 0x0

    :goto_7
    const/4 v13, 0x5

    if-ge v2, v13, :cond_b

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lcom/google/glass/widget/TypophileTextView;->getAlpha()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelX:[F

    aget v14, v14, v2

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Lcom/google/glass/widget/TypophileTextView;->setTranslationX(F)V

    .line 218
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 223
    :cond_b
    return-void
.end method

.method private updateLabelVisibility(I)V
    .locals 6
    .parameter "i"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 111
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelText:[Ljava/lang/String;

    aget-object v1, v4, p1

    .line 112
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-ge p1, v3, :cond_2

    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelText:[Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 114
    .local v0, shouldBeHidden:Z
    :goto_0
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v4, v4, p1

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 115
    return-void

    .end local v0           #shouldBeHidden:Z
    :cond_2
    move v0, v2

    .line 112
    goto :goto_0
.end method

.method private updateLabels()V
    .locals 14

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v12

    .line 270
    .local v12, numItems:I
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->getHomePosition()I

    move-result v7

    .line 271
    .local v7, homePosition:I
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->getScrollPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 272
    .local v6, centerPosition:I
    add-int/lit8 v11, v6, -0x2

    .line 273
    .local v11, leftPosition:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 275
    .local v4, currentTime:J
    const/4 v0, 0x5

    new-array v9, v0, [Z

    .line 277
    .local v9, isLabelUsed:[Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 278
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v0, v8}, Lcom/google/glass/home/timeline/TimelineView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 279
    .local v2, itemView:Landroid/view/View;
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 282
    .local v10, itemPosition:I
    sub-int v0, v10, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    .line 277
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const-string v13, ""

    .line 290
    .local v13, text:Ljava/lang/String;
    if-ne v10, v7, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/glass/home/R$string;->timeline_overlay_label_now:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 321
    :cond_1
    :goto_2
    sub-int v0, v10, v11

    const/4 v3, 0x0

    invoke-direct {p0, v0, v13, v3}, Lcom/google/glass/home/timeline/TimelineOverlayView;->setLabelText(ILjava/lang/String;Z)V

    .line 322
    sub-int v0, v10, v11

    const/4 v3, 0x1

    aput-boolean v3, v9, v0

    .line 324
    invoke-direct {p0, v2}, Lcom/google/glass/home/timeline/TimelineOverlayView;->adjustTimestampAlphaForItemView(Landroid/view/View;)V

    goto :goto_1

    .line 293
    :cond_2
    const/4 v0, 0x1

    if-lt v10, v0, :cond_1

    if-ge v10, v12, :cond_1

    .line 294
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 296
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v1, :cond_4

    .line 298
    if-le v10, v7, :cond_3

    const/4 v3, 0x1

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getTimeLabelTextForItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;ZJ)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 300
    :cond_4
    const/4 v0, 0x1

    if-le v10, v0, :cond_1

    .line 304
    if-le v10, v11, :cond_5

    .line 305
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelText:[Ljava/lang/String;

    sub-int v3, v10, v11

    add-int/lit8 v3, v3, -0x1

    aget-object v13, v0, v3

    .line 307
    :cond_5
    sget v0, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 308
    sget v0, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    new-instance v3, Lcom/google/glass/home/timeline/TimelineOverlayView$1;

    invoke-direct {v3, p0, v2}, Lcom/google/glass/home/timeline/TimelineOverlayView$1;-><init>(Lcom/google/glass/home/timeline/TimelineOverlayView;Landroid/view/View;)V

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 328
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v2           #itemView:Landroid/view/View;
    .end local v10           #itemPosition:I
    .end local v13           #text:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    :goto_4
    const/4 v0, 0x5

    if-ge v8, v0, :cond_8

    .line 329
    aget-boolean v0, v9, v8

    if-nez v0, :cond_7

    .line 330
    const-string v0, ""

    const/4 v3, 0x0

    invoke-direct {p0, v8, v0, v3}, Lcom/google/glass/home/timeline/TimelineOverlayView;->setLabelText(ILjava/lang/String;Z)V

    .line 328
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 334
    :cond_8
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateTextViews()V

    .line 335
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabelPositions()V

    .line 336
    return-void
.end method

.method private updateTextViews()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 147
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabelVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->labelText:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method


# virtual methods
.method public onScaleChanged(F)V
    .locals 6
    .parameter "scale"

    .prologue
    const/high16 v5, 0x3f80

    .line 357
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/TimelineView;->getZoomOutFactor()F

    move-result v2

    .line 358
    .local v2, zoomFactor:F
    iget v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->lastZoomFactor:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 376
    :goto_0
    return-void

    .line 361
    :cond_0
    iget v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->lastZoomFactor:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabels()V

    .line 364
    :cond_1
    iput v2, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->lastZoomFactor:F

    .line 366
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/TimelineView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 367
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->timelineView:Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v3, v0}, Lcom/google/glass/home/timeline/TimelineView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$id;->timestamp:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 368
    .local v1, timestampView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 369
    sub-float v3, v5, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 366
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    .end local v1           #timestampView:Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    sub-float v4, v5, v2

    iget-object v5, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 374
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 375
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabelPositions()V

    goto :goto_0
.end method

.method public onScrollPositionChanged(F)V
    .locals 2
    .parameter "scrollPosition"

    .prologue
    .line 341
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 346
    .local v0, centerPosition:I
    iget v1, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->lastCenterPosition:I

    if-eq v0, v1, :cond_0

    .line 347
    iput v0, p0, Lcom/google/glass/home/timeline/TimelineOverlayView;->lastCenterPosition:I

    .line 348
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabels()V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->updateLabelPositions()V

    goto :goto_0
.end method

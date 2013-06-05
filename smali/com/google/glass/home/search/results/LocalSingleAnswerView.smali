.class public Lcom/google/glass/home/search/results/LocalSingleAnswerView;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "LocalSingleAnswerView.java"


# static fields
.field public static final SPAN_NOT_SET:D = -1.0

.field public static final ZOOM_NOT_SET:F = -1.0f


# instance fields
.field private details:Lcom/google/glass/widget/DynamicSizeTextView;

.field private mapImageView:Landroid/widget/ImageView;

.field private renderRequest:Lcom/google/glass/proto/MapRenderRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->init()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/search/results/LocalSingleAnswerView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->mapImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/View;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method private static fadeIn(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 144
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 146
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    const/16 v1, 0x190

    .line 147
    .local v1, fadeDurationMs:I
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 148
    return-void
.end method

.method private handleAddingAMap()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->renderRequest:Lcom/google/glass/proto/MapRenderRequest;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->renderRequest:Lcom/google/glass/proto/MapRenderRequest;

    new-instance v2, Lcom/google/glass/home/search/results/LocalSingleAnswerView$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView$1;-><init>(Lcom/google/glass/home/search/results/LocalSingleAnswerView;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->renderRequest:Lcom/google/glass/proto/MapRenderRequest;

    .line 141
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_local_single_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget v1, Lcom/google/glass/home/R$id;->map:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->mapImageView:Landroid/widget/ImageView;

    .line 72
    sget v1, Lcom/google/glass/home/R$id;->details:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->details:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 73
    return-void
.end method

.method private isOpenNow(Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;)Z
    .locals 4
    .parameter "openHours"

    .prologue
    .line 154
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 155
    .local v2, now:Ljava/util/Date;
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getIntervalList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    .local v1, interval:Ljava/lang/String;
    const-string v3, "\u2013"

    invoke-static {v2, v1, v3}, Lcom/google/glass/util/DateHelper;->isTimeInInterval(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const/4 v3, 0x1

    .line 160
    .end local v1           #interval:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLoad()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;->onLoad()V

    .line 126
    invoke-direct {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->handleAddingAMap()V

    .line 127
    return-void
.end method

.method public setLocalResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;DDFDD)V
    .locals 14
    .parameter "resultTitle"
    .parameter "resultAddress"
    .parameter "openHours"
    .parameter "latDegrees"
    .parameter "lngDegrees"
    .parameter "zoom"
    .parameter "latSpan"
    .parameter "lngSpan"

    .prologue
    .line 78
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    .local v2, builder:Landroid/text/SpannableStringBuilder;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 80
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 81
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 84
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getIntervalCount()I

    move-result v10

    if-lez v10, :cond_1

    .line 86
    const-string v10, ", "

    invoke-static {v10}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getIntervalList()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, intervals:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->isOpenNow(Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;)Z

    move-result v5

    .line 88
    .local v5, isOpen:Z
    invoke-static {v4}, Lcom/google/glass/home/search/results/MajelProcessor;->formatOpenHours(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 90
    .local v7, spanned:Landroid/text/Spanned;
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    .local v9, styledIntervals:Landroid/text/SpannableString;
    if-eqz v5, :cond_5

    sget v8, Lcom/google/glass/common/R$style;->OverlayGreenText:I

    .line 93
    .local v8, styleId:I
    :goto_0
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/16 v13, 0x11

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 95
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 96
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 98
    .end local v4           #intervals:Ljava/lang/String;
    .end local v5           #isOpen:Z
    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #styleId:I
    .end local v9           #styledIntervals:Landroid/text/SpannableString;
    :cond_1
    iget-object v10, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->details:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v10, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 102
    .local v3, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->newBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/google/glass/home/R$dimen;->lhs_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setWidth(I)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v10

    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v10, v11}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setHeight(I)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v10

    invoke-static {}, Lcom/google/glass/proto/LatLng;->newBuilder()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Lcom/google/glass/proto/LatLng$Builder;->setLat(D)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Lcom/google/glass/proto/LatLng$Builder;->setLng(D)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setCenter(Lcom/google/glass/proto/LatLng$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v10

    invoke-static {}, Lcom/google/glass/proto/Marker;->newBuilder()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v11

    invoke-static {}, Lcom/google/glass/proto/LatLng;->newBuilder()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v12

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Lcom/google/glass/proto/LatLng$Builder;->setLat(D)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Lcom/google/glass/proto/LatLng$Builder;->setLng(D)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/glass/proto/Marker$Builder;->setLocation(Lcom/google/glass/proto/LatLng$Builder;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/glass/proto/MapRenderRequest$Builder;->addMarker(Lcom/google/glass/proto/Marker$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v6

    .line 108
    .local v6, request:Lcom/google/glass/proto/MapRenderRequest$Builder;
    const/high16 v10, -0x4080

    cmpl-float v10, p8, v10

    if-eqz v10, :cond_2

    .line 109
    move/from16 v0, p8

    invoke-virtual {v6, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setZoom(F)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 111
    :cond_2
    const-wide/high16 v10, -0x4010

    cmpl-double v10, p9, v10

    if-eqz v10, :cond_3

    .line 112
    move-wide/from16 v0, p9

    invoke-virtual {v6, v0, v1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setLatSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 114
    :cond_3
    const-wide/high16 v10, -0x4010

    cmpl-double v10, p11, v10

    if-eqz v10, :cond_4

    .line 115
    move-wide/from16 v0, p11

    invoke-virtual {v6, v0, v1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setLngSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 118
    :cond_4
    invoke-virtual {v6}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->renderRequest:Lcom/google/glass/proto/MapRenderRequest;

    .line 120
    invoke-direct {p0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->handleAddingAMap()V

    .line 121
    return-void

    .line 91
    .end local v3           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #request:Lcom/google/glass/proto/MapRenderRequest$Builder;
    .restart local v4       #intervals:Ljava/lang/String;
    .restart local v5       #isOpen:Z
    .restart local v7       #spanned:Landroid/text/Spanned;
    .restart local v9       #styledIntervals:Landroid/text/SpannableString;
    :cond_5
    sget v8, Lcom/google/glass/common/R$style;->OverlayRedText:I

    goto/16 :goto_0
.end method

.class public Lcom/google/glass/home/search/results/LocalCoverView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "LocalCoverView.java"


# instance fields
.field private mapImageView:Landroid/widget/ImageView;

.field private queryCover:Landroid/widget/LinearLayout;

.field private queryOverlay:Landroid/widget/LinearLayout;

.field private recognitionResult:Lcom/google/glass/widget/DynamicSizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/google/glass/home/search/results/LocalCoverView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/google/glass/home/search/results/LocalCoverView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/google/glass/home/search/results/LocalCoverView;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/search/results/LocalCoverView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalCoverView;->mapImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/View;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/glass/home/search/results/LocalCoverView;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method private static fadeIn(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 86
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 88
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    const/16 v1, 0x190

    .line 89
    .local v1, fadeDurationMs:I
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 90
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/LocalCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_local_cover:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    sget v1, Lcom/google/glass/home/R$id;->map:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/LocalCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/LocalCoverView;->mapImageView:Landroid/widget/ImageView;

    .line 55
    sget v1, Lcom/google/glass/home/R$id;->query_cover:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/LocalCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/glass/home/search/results/LocalCoverView;->queryCover:Landroid/widget/LinearLayout;

    .line 56
    sget v1, Lcom/google/glass/home/R$id;->query_overlay:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/LocalCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/glass/home/search/results/LocalCoverView;->queryOverlay:Landroid/widget/LinearLayout;

    .line 57
    sget v1, Lcom/google/glass/home/R$id;->recognition_result:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/LocalCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/LocalCoverView;->recognitionResult:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 58
    return-void
.end method


# virtual methods
.method public setLocalResults(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;)V
    .locals 8
    .parameter "results"

    .prologue
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getLocalResultCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v2, markers:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/proto/Marker;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getLocalResultCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 64
    invoke-virtual {p1, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getLocalResult(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    move-result-object v3

    .line 65
    .local v3, result:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    invoke-static {}, Lcom/google/glass/proto/Marker;->newBuilder()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v4

    invoke-static {}, Lcom/google/glass/proto/LatLng;->newBuilder()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLatDegrees()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/proto/LatLng$Builder;->setLat(D)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLngDegrees()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/proto/LatLng$Builder;->setLng(D)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/proto/Marker$Builder;->setLocation(Lcom/google/glass/proto/LatLng$Builder;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v3           #result:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/LocalCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/LocalCoverView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v4

    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->newBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setWidth(I)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setHeight(I)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->addAllMarker(Ljava/lang/Iterable;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v5

    new-instance v6, Lcom/google/glass/home/search/results/LocalCoverView$1;

    invoke-direct {v6, p0}, Lcom/google/glass/home/search/results/LocalCoverView$1;-><init>(Lcom/google/glass/home/search/results/LocalCoverView;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 83
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalCoverView;->queryCover:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalCoverView;->queryOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalCoverView;->recognitionResult:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

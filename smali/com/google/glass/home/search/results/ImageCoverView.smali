.class public Lcom/google/glass/home/search/results/ImageCoverView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "ImageCoverView.java"


# instance fields
.field private gridLayout:Landroid/widget/GridLayout;

.field private queryCover:Landroid/widget/LinearLayout;

.field private queryOverlay:Landroid/widget/LinearLayout;

.field private recognitionResult:Lcom/google/glass/widget/DynamicSizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/google/glass/home/search/results/ImageCoverView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/google/glass/home/search/results/ImageCoverView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/google/glass/home/search/results/ImageCoverView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 45
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v1, layout:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/ImageCoverView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/glass/home/search/results/ImageCoverView;->setOrientation(I)V

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/ImageCoverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v2, Lcom/google/glass/home/R$layout;->voice_search_image_cover:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    sget v2, Lcom/google/glass/home/R$id;->image_grid:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/search/results/ImageCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout;

    iput-object v2, p0, Lcom/google/glass/home/search/results/ImageCoverView;->gridLayout:Landroid/widget/GridLayout;

    .line 53
    sget v2, Lcom/google/glass/home/R$id;->query_cover:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/search/results/ImageCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/google/glass/home/search/results/ImageCoverView;->queryCover:Landroid/widget/LinearLayout;

    .line 54
    sget v2, Lcom/google/glass/home/R$id;->query_overlay:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/search/results/ImageCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/google/glass/home/search/results/ImageCoverView;->queryOverlay:Landroid/widget/LinearLayout;

    .line 55
    sget v2, Lcom/google/glass/home/R$id;->recognition_result:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/search/results/ImageCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v2, p0, Lcom/google/glass/home/search/results/ImageCoverView;->recognitionResult:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 56
    return-void
.end method


# virtual methods
.method public setImageData(Ljava/util/List;II)V
    .locals 15
    .parameter
    .parameter "rows"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, imageViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ImageView;>;"
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/ImageCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 61
    .local v3, displayMetrics:Landroid/util/DisplayMetrics;
    iget v11, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v5, v11, p3

    .line 62
    .local v5, gridImageWidth:I
    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int v4, v11, p2

    .line 65
    .local v4, gridImageHeight:I
    const/4 v6, 0x0

    .line 66
    .local v6, index:I
    const/4 v9, 0x0

    .local v9, row:I
    :goto_0
    move/from16 v0, p2

    if-ge v9, v0, :cond_1

    .line 67
    const/4 v2, 0x0

    .local v2, column:I
    move v7, v6

    .end local v6           #index:I
    .local v7, index:I
    :goto_1
    move/from16 v0, p3

    if-ge v2, v0, :cond_0

    .line 69
    const/4 v11, 0x1

    invoke-static {v9, v11}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    .line 70
    .local v10, rowSpec:Landroid/widget/GridLayout$Spec;
    const/4 v11, 0x1

    invoke-static {v2, v11}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    .line 71
    .local v1, colSpec:Landroid/widget/GridLayout$Spec;
    new-instance v8, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v8, v10, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 72
    .local v8, params:Landroid/widget/GridLayout$LayoutParams;
    iput v5, v8, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 73
    iput v4, v8, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 76
    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 80
    iget-object v12, p0, Lcom/google/glass/home/search/results/ImageCoverView;->gridLayout:Landroid/widget/GridLayout;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v12, v11, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto :goto_1

    .line 66
    .end local v1           #colSpec:Landroid/widget/GridLayout$Spec;
    .end local v8           #params:Landroid/widget/GridLayout$LayoutParams;
    .end local v10           #rowSpec:Landroid/widget/GridLayout$Spec;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    .end local v7           #index:I
    .restart local v6       #index:I
    goto :goto_0

    .line 84
    .end local v2           #column:I
    :cond_1
    return-void

    .end local v6           #index:I
    .restart local v1       #colSpec:Landroid/widget/GridLayout$Spec;
    .restart local v2       #column:I
    .restart local v7       #index:I
    .restart local v8       #params:Landroid/widget/GridLayout$LayoutParams;
    .restart local v10       #rowSpec:Landroid/widget/GridLayout$Spec;
    :cond_2
    move v6, v7

    .end local v7           #index:I
    .restart local v6       #index:I
    goto :goto_2
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/google/glass/home/search/results/ImageCoverView;->queryCover:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/google/glass/home/search/results/ImageCoverView;->queryOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/google/glass/home/search/results/ImageCoverView;->recognitionResult:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

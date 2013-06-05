.class public Lcom/google/glass/home/search/results/SnippetsCoverView;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "SnippetsCoverView.java"


# instance fields
.field private webResultsImageView:Landroid/widget/ImageView;

.field private webResultsView:Lcom/google/glass/widget/DynamicSizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/google/glass/home/search/results/SnippetsCoverView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/google/glass/home/search/results/SnippetsCoverView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/google/glass/home/search/results/SnippetsCoverView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SnippetsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_snippets_cover:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget v1, Lcom/google/glass/home/R$id;->recognition_result:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/SnippetsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/SnippetsCoverView;->webResultsView:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 44
    sget v1, Lcom/google/glass/home/R$id;->web_results:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/SnippetsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/SnippetsCoverView;->webResultsImageView:Landroid/widget/ImageView;

    .line 45
    return-void
.end method


# virtual methods
.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/glass/home/search/results/SnippetsCoverView;->webResultsImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    iget-object v0, p0, Lcom/google/glass/home/search/results/SnippetsCoverView;->webResultsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/search/results/SnippetsCoverView;->webResultsImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(Lcom/google/majel/proto/PeanutProtos$Image;)V
    .locals 4
    .parameter "image"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Image;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Image;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    .line 65
    .local v1, bytes:[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/results/SnippetsCoverView;->setImage(Landroid/graphics/Bitmap;)V

    .line 70
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bytes:[B
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/search/results/SnippetsCoverView;->webResultsImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .parameter "recognitionResult"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/home/search/results/SnippetsCoverView;->webResultsView:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.class public Lcom/google/glass/home/search/results/ImageAnswerView;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "ImageAnswerView.java"


# instance fields
.field private attributionView:Lcom/google/glass/widget/TypophileTextView;

.field private imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/google/glass/home/search/results/ImageAnswerView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/google/glass/home/search/results/ImageAnswerView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/google/glass/home/search/results/ImageAnswerView;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/ImageAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_image_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    sget v1, Lcom/google/glass/home/R$id;->image:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/ImageAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/ImageAnswerView;->imageView:Landroid/widget/ImageView;

    .line 40
    sget v1, Lcom/google/glass/home/R$id;->attribution:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/ImageAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/ImageAnswerView;->attributionView:Lcom/google/glass/widget/TypophileTextView;

    .line 41
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/home/search/results/ImageAnswerView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setAttribution(Lcom/google/majel/proto/PeanutProtos$Image;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Image;->getAttributionCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/glass/home/search/results/ImageAnswerView;->attributionView:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/majel/proto/PeanutProtos$Image;->getAttribution(I)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method

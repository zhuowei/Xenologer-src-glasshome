.class public Lcom/google/glass/home/search/results/FinanceDetailView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "FinanceDetailView.java"


# instance fields
.field private avgVolume:Lcom/google/glass/widget/TypophileTextView;

.field private avgVolumeLabel:Lcom/google/glass/widget/TypophileTextView;

.field private high:Lcom/google/glass/widget/TypophileTextView;

.field private highLabel:Lcom/google/glass/widget/TypophileTextView;

.field private low:Lcom/google/glass/widget/TypophileTextView;

.field private lowLabel:Lcom/google/glass/widget/TypophileTextView;

.field private marketCap:Lcom/google/glass/widget/TypophileTextView;

.field private marketCapLabel:Lcom/google/glass/widget/TypophileTextView;

.field private open:Lcom/google/glass/widget/TypophileTextView;

.field private openLabel:Lcom/google/glass/widget/TypophileTextView;

.field private volume:Lcom/google/glass/widget/TypophileTextView;

.field private volumeLabel:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FinanceDetailView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FinanceDetailView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FinanceDetailView;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceDetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_finance_details:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v1, Lcom/google/glass/home/R$id;->openLabel:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->openLabel:Lcom/google/glass/widget/TypophileTextView;

    .line 51
    sget v1, Lcom/google/glass/home/R$id;->open:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->open:Lcom/google/glass/widget/TypophileTextView;

    .line 52
    sget v1, Lcom/google/glass/home/R$id;->highLabel:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->highLabel:Lcom/google/glass/widget/TypophileTextView;

    .line 53
    sget v1, Lcom/google/glass/home/R$id;->high:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->high:Lcom/google/glass/widget/TypophileTextView;

    .line 54
    sget v1, Lcom/google/glass/home/R$id;->lowLabel:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->lowLabel:Lcom/google/glass/widget/TypophileTextView;

    .line 55
    sget v1, Lcom/google/glass/home/R$id;->low:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->low:Lcom/google/glass/widget/TypophileTextView;

    .line 56
    sget v1, Lcom/google/glass/home/R$id;->volumeLabel:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->volumeLabel:Lcom/google/glass/widget/TypophileTextView;

    .line 57
    sget v1, Lcom/google/glass/home/R$id;->volume:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->volume:Lcom/google/glass/widget/TypophileTextView;

    .line 58
    sget v1, Lcom/google/glass/home/R$id;->avgVolumeLabel:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->avgVolumeLabel:Lcom/google/glass/widget/TypophileTextView;

    .line 59
    sget v1, Lcom/google/glass/home/R$id;->avgVolume:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->avgVolume:Lcom/google/glass/widget/TypophileTextView;

    .line 60
    sget v1, Lcom/google/glass/home/R$id;->marketCapLabel:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->marketCapLabel:Lcom/google/glass/widget/TypophileTextView;

    .line 61
    sget v1, Lcom/google/glass/home/R$id;->marketCap:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->marketCap:Lcom/google/glass/widget/TypophileTextView;

    .line 62
    return-void
.end method


# virtual methods
.method public setFinanceResult(Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->openLabel:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getOpenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->open:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getOpenPrice()F

    move-result v1

    invoke-static {v1}, Lcom/google/glass/home/search/results/FinanceAnswerView;->formatPrice(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->highLabel:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getHighText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->high:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getHighPrice()F

    move-result v1

    invoke-static {v1}, Lcom/google/glass/home/search/results/FinanceAnswerView;->formatPrice(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->lowLabel:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLowText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->low:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLowPrice()F

    move-result v1

    invoke-static {v1}, Lcom/google/glass/home/search/results/FinanceAnswerView;->formatPrice(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->volumeLabel:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getVolumeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->volume:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getVolume()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->avgVolumeLabel:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getAvgVolumeText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->avgVolume:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getAvgVolume()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->marketCapLabel:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getMarketCapText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/google/glass/home/search/results/FinanceDetailView;->marketCap:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getMarketCap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.class public Lcom/google/glass/home/search/results/FinanceAnswerView;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "FinanceAnswerView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private change:Lcom/google/glass/widget/DynamicSizeTextView;

.field private price:Lcom/google/glass/widget/TypophileTextView;

.field private status:Lcom/google/glass/widget/TypophileTextView;

.field private title:Lcom/google/glass/widget/DynamicSizeTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/home/search/results/FinanceAnswerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/FinanceAnswerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->init()V

    .line 49
    return-void
.end method

.method private convertLastChangeTimeToTimestamp(Ljava/lang/String;)J
    .locals 6
    .parameter "date"

    .prologue
    .line 133
    const-string v3, " ET"

    const-string v4, " EST"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    :try_start_0
    const-string v1, "MMM dd hh:mmaa zz yyyy"

    .line 138
    .local v1, format:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 143
    .end local v1           #format:Ljava/lang/String;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    :goto_0
    return-wide v3

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/text/ParseException;
    sget-object v3, Lcom/google/glass/home/search/results/FinanceAnswerView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method static final formatPrice(F)Ljava/lang/String;
    .locals 4
    .parameter "price"

    .prologue
    .line 97
    const v0, 0x47c34f80

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 99
    float-to-int v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final formatPriceChange(F)Ljava/lang/String;
    .locals 4
    .parameter "priceChange"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 108
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 109
    const-string v0, "+%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final getPriceColor(F)I
    .locals 2
    .parameter "priceChange"

    .prologue
    const/4 v1, 0x0

    .line 119
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 121
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_finance_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    sget v1, Lcom/google/glass/home/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->title:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 56
    sget v1, Lcom/google/glass/home/R$id;->price:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->price:Lcom/google/glass/widget/TypophileTextView;

    .line 57
    sget v1, Lcom/google/glass/home/R$id;->change:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->change:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 58
    sget v1, Lcom/google/glass/home/R$id;->status:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FinanceAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->status:Lcom/google/glass/widget/TypophileTextView;

    .line 59
    return-void
.end method


# virtual methods
.method public setFinanceResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;)V
    .locals 12
    .parameter "result"

    .prologue
    const/4 v6, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 62
    iget-object v4, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->title:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasEcnResult()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getEcnResult()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastPrice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getEcnResult()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    move-result-object v0

    .line 70
    .local v0, ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    iget-object v4, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->price:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getLastPrice()F

    move-result v5

    invoke-static {v5}, Lcom/google/glass/home/search/results/FinanceAnswerView;->formatPrice(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$string;->voice_search_finance_change:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getPriceChange()F

    move-result v7

    invoke-static {v7}, Lcom/google/glass/home/search/results/FinanceAnswerView;->formatPriceChange(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "%.2f"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getPricePercentChange()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, priceChange:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->change:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getPriceChange()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getPriceColor(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextColor(I)V

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$string;->voice_search_finance_after_hours:I

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getLastChangeTime()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/glass/home/search/results/FinanceAnswerView;->convertLastChangeTimeToTimestamp(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .end local v0           #ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .local v1, footerText:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->change:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v4, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v4, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->status:Lcom/google/glass/widget/TypophileTextView;

    const-string v5, " "

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getExchangeCode()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v1, v7}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 81
    .end local v1           #footerText:Ljava/lang/String;
    .end local v2           #priceChange:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getStockResult()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    move-result-object v3

    .line 82
    .local v3, stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    iget-object v4, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->price:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLastPrice()F

    move-result v5

    invoke-static {v5}, Lcom/google/glass/home/search/results/FinanceAnswerView;->formatPrice(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$string;->voice_search_finance_change:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getPriceChange()F

    move-result v7

    invoke-static {v7}, Lcom/google/glass/home/search/results/FinanceAnswerView;->formatPriceChange(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "%.2f"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getPricePercentChange()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2       #priceChange:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/home/search/results/FinanceAnswerView;->change:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getPriceChange()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getPriceColor(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextColor(I)V

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FinanceAnswerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLastChangeTime()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/glass/home/search/results/FinanceAnswerView;->convertLastChangeTimeToTimestamp(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #footerText:Ljava/lang/String;
    goto :goto_0
.end method

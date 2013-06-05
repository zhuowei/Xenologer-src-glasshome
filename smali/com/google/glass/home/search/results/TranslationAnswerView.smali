.class public Lcom/google/glass/home/search/results/TranslationAnswerView;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "TranslationAnswerView.java"


# instance fields
.field private answerView:Lcom/google/glass/widget/DynamicSizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/google/glass/home/search/results/TranslationAnswerView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/google/glass/home/search/results/TranslationAnswerView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/google/glass/home/search/results/TranslationAnswerView;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/TranslationAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_translation_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v1, Lcom/google/glass/home/R$id;->answer:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/TranslationAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/TranslationAnswerView;->answerView:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 46
    return-void
.end method


# virtual methods
.method public setTranslationResult(Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;)V
    .locals 11
    .parameter "result"

    .prologue
    const/4 v10, 0x0

    .line 50
    invoke-virtual {p1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedText()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, translatedText:Ljava/lang/String;
    sget-object v7, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v4, v7}, Ljava/text/Normalizer;->isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 56
    sget-object v7, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v4, v7}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedTextTransliteration()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, translatedTextTransliteration:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTextToTranslate()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, textToTranslate:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedTextLanguageDisplay()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, translatedTextLanguageDisplay:Ljava/lang/String;
    const-string v7, ", "

    invoke-static {v7}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v5, v8}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, toTranslate:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    .local v1, styledString:Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/TranslationAnswerView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/google/glass/common/R$style;->OverlayGrayText:I

    invoke-direct {v7, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x11

    invoke-virtual {v1, v7, v10, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 70
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 71
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 73
    const-string v7, " ("

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 74
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 75
    const-string v7, ")\n"

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 79
    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 81
    iget-object v7, p0, Lcom/google/glass/home/search/results/TranslationAnswerView;->answerView:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v7, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void

    .line 77
    :cond_1
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

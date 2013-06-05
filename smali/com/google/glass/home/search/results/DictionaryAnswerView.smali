.class public Lcom/google/glass/home/search/results/DictionaryAnswerView;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "DictionaryAnswerView.java"


# instance fields
.field private definition:Lcom/google/glass/widget/DynamicSizeTextView;

.field private pronunciation:Lcom/google/glass/widget/TypophileTextView;

.field private word:Lcom/google/glass/widget/DynamicSizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->init()V

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
    invoke-direct {p0}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->init()V

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
    invoke-direct {p0}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->init()V

    .line 49
    return-void
.end method

.method private buildSynonymsContent(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, synonyms:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v3, synonymsBuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 230
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    .line 231
    .local v2, synonym:Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getSynonymCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 229
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->hasPartOfSpeech()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    const-string v4, "<i>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".</i> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_2
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getSynonymCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 239
    invoke-virtual {v2, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getSynonym(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getSynonymCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_3

    .line 241
    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 245
    const-string v4, "<br />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 248
    .end local v1           #j:I
    .end local v2           #synonym:Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private createGraySpannableString(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .parameter "text"

    .prologue
    .line 220
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    .local v0, styledText:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$style;->OverlayGrayText:I

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 224
    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_dictionary_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    sget v1, Lcom/google/glass/home/R$id;->word:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->word:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 56
    sget v1, Lcom/google/glass/home/R$id;->pronunciation:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->pronunciation:Lcom/google/glass/widget/TypophileTextView;

    .line 57
    sget v1, Lcom/google/glass/home/R$id;->definition:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->definition:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 58
    return-void
.end method

.method private setMeanings(Ljava/lang/String;Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;)V
    .locals 6
    .parameter "partOfSpeech"
    .parameter "meaning"

    .prologue
    .line 196
    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->createGraySpannableString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    .line 198
    .local v2, grayPartOfSpeech:Landroid/text/SpannableString;
    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 200
    .local v0, content:Landroid/text/Spanned;
    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getExampleCount()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 203
    .local v1, exampleUsage:Landroid/text/Spanned;
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 204
    .local v3, stringBuilder:Landroid/text/SpannableStringBuilder;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 205
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 206
    if-eqz v1, :cond_0

    .line 207
    const-string v4, ":\""

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 208
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 209
    const-string v4, "\"."

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 216
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->definition:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v4, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void

    .line 200
    .end local v1           #exampleUsage:Landroid/text/Spanned;
    .end local v3           #stringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getExample(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method private setWordAndPronunciation(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)V
    .locals 13
    .parameter "result"

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 173
    .local v1, dictionaryWord:Landroid/text/Spanned;
    const/4 v9, 0x0

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v10

    const-class v11, Landroid/text/style/StyleSpan;

    invoke-interface {v1, v9, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/StyleSpan;

    .line 174
    .local v8, styleSpans:[Landroid/text/style/StyleSpan;
    const/4 v6, 0x0

    .line 175
    .local v6, start:I
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 178
    .local v2, end:I
    move-object v0, v8

    .local v0, arr$:[Landroid/text/style/StyleSpan;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 179
    .local v7, styleSpan:Landroid/text/style/StyleSpan;
    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 180
    invoke-interface {v1, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 181
    invoke-interface {v1, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 185
    .end local v7           #styleSpan:Landroid/text/style/StyleSpan;
    :cond_0
    iget-object v9, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->word:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-interface {v1, v6, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getPronunciation()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, pronunciationStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 189
    iget-object v9, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->pronunciation:Lcom/google/glass/widget/TypophileTextView;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_1
    return-void

    .line 178
    .end local v5           #pronunciationStr:Ljava/lang/String;
    .restart local v7       #styleSpan:Landroid/text/style/StyleSpan;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v7           #styleSpan:Landroid/text/style/StyleSpan;
    .restart local v5       #pronunciationStr:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->pronunciation:Lcom/google/glass/widget/TypophileTextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public setDictionaryResultPrimary(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Z
    .locals 5
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->setWordAndPronunciation(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)V

    .line 77
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getPartOfSpeechMeaningList()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, meanings:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 80
    .local v1, meaning:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    invoke-virtual {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getMeaningCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getMeaning(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->setMeanings(Ljava/lang/String;Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;)V

    .line 85
    const/4 v3, 0x1

    .line 87
    .end local v1           #meaning:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :cond_1
    return v3
.end method

.method public setDictionaryResultSecondary(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Z
    .locals 8
    .parameter "result"

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 106
    iget-object v6, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->word:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 107
    iget-object v6, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->pronunciation:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 110
    iget-object v6, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->definition:Lcom/google/glass/widget/DynamicSizeTextView;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/DynamicSizeTextView;->setMaxLines(I)V

    .line 112
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getPartOfSpeechMeaningList()Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, meanings:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;>;"
    const/4 v1, 0x1

    .line 114
    .local v1, isFirstNonEmptyResult:Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 116
    .local v2, meaning:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getMeaningCount()I

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getMeaningCount()I

    move-result v6

    if-le v6, v4, :cond_1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getMeaning(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->setMeanings(Ljava/lang/String;Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;)V

    .line 138
    .end local v2           #meaning:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :goto_1
    return v4

    .line 128
    .restart local v2       #meaning:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :cond_1
    if-eqz v1, :cond_2

    .line 129
    const/4 v1, 0x0

    .line 130
    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getMeaning(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->setMeanings(Ljava/lang/String;Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;)V

    goto :goto_1

    .end local v2           #meaning:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :cond_3
    move v4, v5

    .line 138
    goto :goto_1
.end method

.method public settDictionaryResultSynonyms(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Z
    .locals 7
    .parameter "result"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    .line 148
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSynonymsHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSynonymCount()I

    move-result v5

    if-ge v5, v4, :cond_1

    .line 149
    :cond_0
    const/4 v4, 0x0

    .line 168
    :goto_0
    return v4

    .line 152
    :cond_1
    iget-object v5, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->word:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 153
    iget-object v5, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->pronunciation:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 156
    iget-object v5, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->definition:Lcom/google/glass/widget/DynamicSizeTextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/DynamicSizeTextView;->setMaxLines(I)V

    .line 158
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSynonymsHeader()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, synonymsHeader:Ljava/lang/String;
    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->createGraySpannableString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 161
    .local v1, styledSynonymsHeader:Landroid/text/SpannableString;
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSynonymList()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->buildSynonymsContent(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, synonymsContent:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 164
    .local v0, stringBuilder:Landroid/text/SpannableStringBuilder;
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 165
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 167
    iget-object v5, p0, Lcom/google/glass/home/search/results/DictionaryAnswerView;->definition:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v5, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

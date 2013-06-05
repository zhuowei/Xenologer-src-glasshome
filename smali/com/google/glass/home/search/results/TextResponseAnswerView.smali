.class public Lcom/google/glass/home/search/results/TextResponseAnswerView;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "TextResponseAnswerView.java"


# instance fields
.field private answerView:Lcom/google/glass/widget/DynamicSizeTextView;

.field private attributionFooterView:Lcom/google/glass/widget/TypophileTextView;

.field private imageAttribution:Lcom/google/glass/widget/TypophileTextView;

.field private imageFrame:Landroid/view/View;

.field private imageView:Landroid/widget/ImageView;

.field private textLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->init()V

    .line 59
    return-void
.end method

.method private getAttributionListDisplayString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/AttributionProtos$Attribution;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, sourceList:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/AttributionProtos$Attribution;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 166
    .local v2, index:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 167
    .local v0, attr:Lcom/google/majel/proto/AttributionProtos$Attribution;
    invoke-virtual {v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageDomain()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    if-lez v2, :cond_1

    .line 169
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_1
    invoke-virtual {v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v0           #attr:Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #stringBuilder:Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_text_response_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    sget v1, Lcom/google/glass/home/R$id;->right_text_frame:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->textLayout:Landroid/widget/FrameLayout;

    .line 66
    sget v1, Lcom/google/glass/home/R$id;->answer:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->answerView:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 67
    sget v1, Lcom/google/glass/home/R$id;->answer_attribution:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->attributionFooterView:Lcom/google/glass/widget/TypophileTextView;

    .line 69
    sget v1, Lcom/google/glass/home/R$id;->left_image_frame:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->imageFrame:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->imageFrame:Landroid/view/View;

    sget v2, Lcom/google/glass/home/R$id;->image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->imageView:Landroid/widget/ImageView;

    .line 71
    iget-object v1, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->imageFrame:Landroid/view/View;

    sget v2, Lcom/google/glass/home/R$id;->attribution:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->imageAttribution:Lcom/google/glass/widget/TypophileTextView;

    .line 72
    return-void
.end method

.method private static removeHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "html"

    .prologue
    .line 156
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setAnswerData(Lcom/google/glass/home/search/results/AnswerData;Z)V
    .locals 15
    .parameter "answer"
    .parameter "isDescriptiveResult"

    .prologue
    .line 86
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 88
    .local v3, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/search/results/AnswerData;->getAnswer()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->removeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, answerText:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/search/results/AnswerData;->isMediumConfidence()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "..."

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 91
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/search/results/AnswerData;->getAnswerDescription()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->removeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, descriptionText:Ljava/lang/String;
    if-nez p2, :cond_3

    .line 99
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 101
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 102
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v9, styledDescription:Landroid/text/SpannableString;
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/google/glass/common/R$style;->OverlayGrayText:I

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/16 v13, 0x11

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 106
    const-string v10, "\n"

    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 107
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    .end local v9           #styledDescription:Landroid/text/SpannableString;
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->answerView:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v10, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/search/results/AnswerData;->getSourceList()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->getAttributionListDisplayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, attribution:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 125
    iget-object v10, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->attributionFooterView:Lcom/google/glass/widget/TypophileTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 135
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/search/results/AnswerData;->getImage()Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v6

    .line 136
    .local v6, image:Lcom/google/majel/proto/PeanutProtos$Image;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/google/majel/proto/PeanutProtos$Image;->hasData()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 137
    invoke-virtual {v6}, Lcom/google/majel/proto/PeanutProtos$Image;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v4

    .line 138
    .local v4, bytes:[B
    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v4, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 139
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/search/results/AnswerData;->getImageSource()Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v7

    .line 141
    .local v7, imageAttr:Lcom/google/majel/proto/AttributionProtos$Attribution;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageDomain()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 142
    iget-object v10, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->imageAttribution:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v7}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageDomain()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #bytes:[B
    .end local v7           #imageAttr:Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_2
    :goto_2
    return-void

    .line 112
    .end local v1           #attribution:Ljava/lang/String;
    .end local v6           #image:Lcom/google/majel/proto/PeanutProtos$Image;
    :cond_3
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 113
    .local v8, styledAnswered:Landroid/text/SpannableString;
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/google/glass/common/R$style;->OverlayGrayText:I

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x11

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    const-string v10, "\n"

    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 118
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 128
    .end local v8           #styledAnswered:Landroid/text/SpannableString;
    .restart local v1       #attribution:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/home/search/results/AnswerData;->isMediumConfidence()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 129
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/glass/home/R$string;->voice_search_med_confidence_answer_source:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_5
    iget-object v10, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->attributionFooterView:Lcom/google/glass/widget/TypophileTextView;

    invoke-static {v1}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->removeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 145
    .restart local v6       #image:Lcom/google/majel/proto/PeanutProtos$Image;
    :cond_6
    iget-object v10, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->imageFrame:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v10, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->textLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const/4 v11, -0x1

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    iget-object v10, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->textLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/google/glass/home/R$dimen;->generic_card_padding:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget-object v12, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->textLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v12

    iget-object v13, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->textLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v13

    iget-object v14, p0, Lcom/google/glass/home/search/results/TextResponseAnswerView;->textLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2
.end method

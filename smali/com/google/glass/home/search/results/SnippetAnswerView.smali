.class public Lcom/google/glass/home/search/results/SnippetAnswerView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "SnippetAnswerView.java"


# instance fields
.field private domainView:Lcom/google/glass/widget/TypophileTextView;

.field private snippetView:Lcom/google/glass/widget/DynamicSizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/google/glass/home/search/results/SnippetAnswerView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/google/glass/home/search/results/SnippetAnswerView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/google/glass/home/search/results/SnippetAnswerView;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SnippetAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_snippet:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v1, Lcom/google/glass/home/R$id;->snippet:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/SnippetAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/SnippetAnswerView;->snippetView:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 46
    sget v1, Lcom/google/glass/home/R$id;->domain:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/SnippetAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/SnippetAnswerView;->domainView:Lcom/google/glass/widget/TypophileTextView;

    .line 47
    return-void
.end method

.method private static stripBrs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "htmlValue"

    .prologue
    .line 51
    const-string v0, "<br>"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setSnippet(Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;)V
    .locals 7
    .parameter "snippet"

    .prologue
    .line 55
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 58
    .local v0, content:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/home/search/results/SnippetAnswerView;->stripBrs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 59
    .local v3, title:Landroid/text/Spanned;
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 60
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-string v6, "\n"

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/home/search/results/SnippetAnswerView;->stripBrs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 64
    .local v2, snip:Landroid/text/Spanned;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#FFBBBBBB"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 67
    .local v1, fcs:Landroid/text/style/ForegroundColorSpan;
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x21

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 70
    iget-object v4, p0, Lcom/google/glass/home/search/results/SnippetAnswerView;->snippetView:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v4, p0, Lcom/google/glass/home/search/results/SnippetAnswerView;->domainView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.class public Lcom/google/glass/search/StreamingTextView;
.super Landroid/widget/FrameLayout;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/StreamingTextView$TextUpdater;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final STABLE_COLOR:I

.field private static final TAG:Ljava/lang/String;

.field private static final UNSTABLE_COLOR:I


# instance fields
.field private mainText:Landroid/widget/TextView;

.field private textUpdater:Lcom/google/glass/search/StreamingTextView$TextUpdater;

.field private viewDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0xa4

    .line 30
    const-class v0, Lcom/google/glass/search/StreamingTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/StreamingTextView;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/glass/search/StreamingTextView;->UNSTABLE_COLOR:I

    .line 43
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/glass/search/StreamingTextView;->STABLE_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/google/glass/search/StreamingTextView;->UNSTABLE_COLOR:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/google/glass/search/StreamingTextView;->STABLE_COLOR:I

    return v0
.end method

.method private updateDotsAndMainText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v1, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/google/glass/search/StreamingTextView;->textUpdater:Lcom/google/glass/search/StreamingTextView$TextUpdater;

    invoke-virtual {v1}, Lcom/google/glass/search/StreamingTextView$TextUpdater;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 118
    .local v0, text:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 119
    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 124
    return-void
.end method


# virtual methods
.method public getLineCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    sget v0, Lcom/google/glass/voice/R$id;->streaming_text_main:I

    invoke-virtual {p0, v0}, Lcom/google/glass/search/StreamingTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    .line 54
    new-instance v0, Lcom/google/glass/search/StreamingTextView$TextUpdater;

    invoke-direct {v0, p0}, Lcom/google/glass/search/StreamingTextView$TextUpdater;-><init>(Lcom/google/glass/search/StreamingTextView;)V

    iput-object v0, p0, Lcom/google/glass/search/StreamingTextView;->textUpdater:Lcom/google/glass/search/StreamingTextView$TextUpdater;

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/search/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/search/StreamingTextView;->viewDensity:F

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/search/StreamingTextView;->reset()V

    .line 59
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->textUpdater:Lcom/google/glass/search/StreamingTextView$TextUpdater;

    invoke-virtual {v0}, Lcom/google/glass/search/StreamingTextView$TextUpdater;->reset()V

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/search/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/search/StreamingTextView;->viewDensity:F

    .line 72
    return-void
.end method

.method public reveal()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/search/StreamingTextView;->textUpdater:Lcom/google/glass/search/StreamingTextView$TextUpdater;

    invoke-virtual {v1}, Lcom/google/glass/search/StreamingTextView$TextUpdater;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 77
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 79
    return-void
.end method

.method public setFinalRecognizedText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "finalText"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->textUpdater:Lcom/google/glass/search/StreamingTextView$TextUpdater;

    invoke-virtual {v0, p1}, Lcom/google/glass/search/StreamingTextView$TextUpdater;->setFinalText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-direct {p0}, Lcom/google/glass/search/StreamingTextView;->updateDotsAndMainText()V

    .line 109
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/search/StreamingTextView;->textUpdater:Lcom/google/glass/search/StreamingTextView$TextUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/search/StreamingTextView$TextUpdater;->updateText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0}, Lcom/google/glass/search/StreamingTextView;->updateDotsAndMainText()V

    .line 96
    return-void
.end method

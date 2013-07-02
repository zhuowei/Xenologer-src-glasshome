.class public Lcom/google/glass/voice/StreamingTextView;
.super Landroid/widget/FrameLayout;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/StreamingTextView$TextUpdater;
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

.field private textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

.field private viewDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0xa4

    .line 28
    const-class v0, Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StreamingTextView;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 39
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/glass/voice/StreamingTextView;->UNSTABLE_COLOR:I

    .line 41
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/glass/voice/StreamingTextView;->STABLE_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/google/glass/voice/StreamingTextView;->UNSTABLE_COLOR:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/google/glass/voice/StreamingTextView;->STABLE_COLOR:I

    return v0
.end method

.method private updateDotsAndMainText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 116
    .local v0, text:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 117
    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 122
    return-void
.end method


# virtual methods
.method public getLineCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

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
    .line 49
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 51
    sget v0, Lcom/google/glass/voice/R$id;->streaming_text_main:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/StreamingTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    .line 52
    new-instance v0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;-><init>(Lcom/google/glass/voice/StreamingTextView;)V

    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    .line 54
    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView;->viewDensity:F

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 57
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->reset()V

    .line 69
    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView;->viewDensity:F

    .line 70
    return-void
.end method

.method public reveal()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 77
    return-void
.end method

.method public setFinalRecognizedText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "finalText"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->setFinalText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-direct {p0}, Lcom/google/glass/voice/StreamingTextView;->updateDotsAndMainText()V

    .line 107
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->textUpdater:Lcom/google/glass/voice/StreamingTextView$TextUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->updateText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0}, Lcom/google/glass/voice/StreamingTextView;->updateDotsAndMainText()V

    .line 94
    return-void
.end method

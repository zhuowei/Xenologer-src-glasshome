.class public Lcom/google/glass/widget/TypophileTextView;
.super Landroid/widget/TextView;
.source "TypophileTextView.java"


# static fields
.field private static final MASK_CONDENSED:I = 0x100

.field private static final MASK_ITALIC:I = 0x10

.field private static final MASK_WEIGHT:I = 0xf


# instance fields
.field private firstLineIndent:F

.field private hangingIndent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    sget-object v7, Lcom/google/glass/common/R$styleable;->TypophileTextView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, attributes:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 104
    .local v2, fontWeight:I
    and-int/lit8 v5, v2, 0xf

    .line 105
    .local v5, weight:I
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_4

    move v3, v6

    .line 106
    .local v3, italic:Z
    :goto_0
    and-int/lit16 v7, v2, 0x100

    if-eqz v7, :cond_0

    move v1, v6

    .line 108
    .local v1, condensed:Z
    :cond_0
    invoke-static {p1, v5, v3, v1}, Lcom/google/glass/widget/RobotoTypefaces;->getTypeface(Landroid/content/Context;IZZ)Landroid/graphics/Typeface;

    move-result-object v4

    .line 109
    .local v4, typeface:Landroid/graphics/Typeface;
    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {p0, v4}, Lcom/google/glass/widget/TypophileTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    .end local v1           #condensed:Z
    .end local v2           #fontWeight:I
    .end local v3           #italic:Z
    .end local v4           #typeface:Landroid/graphics/Typeface;
    .end local v5           #weight:I
    :cond_1
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 115
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/google/glass/widget/TypophileTextView;->firstLineIndent:F

    .line 118
    :cond_2
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/google/glass/widget/TypophileTextView;->hangingIndent:F

    .line 122
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    return-void

    .restart local v2       #fontWeight:I
    .restart local v5       #weight:I
    :cond_4
    move v3, v1

    .line 105
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/widget/TypophileTextView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/google/glass/widget/TypophileTextView;->firstLineIndent:F

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/widget/TypophileTextView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/google/glass/widget/TypophileTextView;->hangingIndent:F

    return v0
.end method


# virtual methods
.method public setFirstLineIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 129
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/widget/TypophileTextView;->setFirstLineIndent(IF)V

    .line 130
    return-void
.end method

.method public setFirstLineIndent(IF)V
    .locals 1
    .parameter "unit"
    .parameter "indent"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/glass/widget/TypophileTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/TypophileTextView;->firstLineIndent:F

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/widget/TypophileTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setHangingIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 145
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/widget/TypophileTextView;->setHangingIndent(IF)V

    .line 146
    return-void
.end method

.method public setHangingIndent(IF)V
    .locals 1
    .parameter "unit"
    .parameter "indent"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/glass/widget/TypophileTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/TypophileTextView;->hangingIndent:F

    .line 153
    invoke-virtual {p0}, Lcom/google/glass/widget/TypophileTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 158
    iget v1, p0, Lcom/google/glass/widget/TypophileTextView;->firstLineIndent:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/glass/widget/TypophileTextView;->hangingIndent:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 159
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    .local v0, indentedText:Landroid/text/SpannableString;
    new-instance v1, Lcom/google/glass/widget/TypophileTextView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/TypophileTextView$1;-><init>(Lcom/google/glass/widget/TypophileTextView;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 176
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 180
    .end local v0           #indentedText:Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

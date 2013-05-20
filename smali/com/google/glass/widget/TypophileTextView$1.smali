.class Lcom/google/glass/widget/TypophileTextView$1;
.super Ljava/lang/Object;
.source "TypophileTextView.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/TypophileTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/glass/widget/TypophileTextView$1;->this$0:Lcom/google/glass/widget/TypophileTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0
    .parameter "c"
    .parameter "p"
    .parameter "x"
    .parameter "dir"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "first"
    .parameter "layout"

    .prologue
    .line 169
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .parameter "first"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/TypophileTextView$1;->this$0:Lcom/google/glass/widget/TypophileTextView;

    #getter for: Lcom/google/glass/widget/TypophileTextView;->firstLineIndent:F
    invoke-static {v0}, Lcom/google/glass/widget/TypophileTextView;->access$000(Lcom/google/glass/widget/TypophileTextView;)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/TypophileTextView$1;->this$0:Lcom/google/glass/widget/TypophileTextView;

    #getter for: Lcom/google/glass/widget/TypophileTextView;->hangingIndent:F
    invoke-static {v0}, Lcom/google/glass/widget/TypophileTextView;->access$100(Lcom/google/glass/widget/TypophileTextView;)F

    move-result v0

    goto :goto_0
.end method

.method public getLeadingMarginLineCount()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

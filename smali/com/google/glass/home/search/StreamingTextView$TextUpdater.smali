.class Lcom/google/glass/home/search/StreamingTextView$TextUpdater;
.super Ljava/lang/Object;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/StreamingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextUpdater"
.end annotation


# instance fields
.field private mPendingStart:I

.field private mText:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Lcom/google/glass/home/search/StreamingTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/StreamingTextView;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->this$0:Lcom/google/glass/home/search/StreamingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    .line 142
    invoke-virtual {p0}, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->reset()V

    .line 143
    return-void
.end method

.method private setText(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "textStart"
    .parameter "text"
    .parameter "useSpecialFormatting"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 181
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/glass/home/search/StreamingTextView;->access$000()I

    move-result v1

    :goto_0
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 183
    .local v0, fcs:Landroid/text/style/ForegroundColorSpan;
    iget-object v1, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p1

    const/16 v3, 0x21

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 184
    return-void

    .line 181
    .end local v0           #fcs:Landroid/text/style/ForegroundColorSpan;
    :cond_0
    invoke-static {}, Lcom/google/glass/home/search/StreamingTextView;->access$100()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 151
    iget-object v0, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 152
    return-void
.end method

.method setFinalText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "finalText"

    .prologue
    .line 175
    iget v0, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mPendingStart:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->setText(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 176
    iget-object v0, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 177
    return-void
.end method

.method updateText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    .line 159
    iget v0, p0, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 160
    .local v0, currentIndex:I
    if-eqz p1, :cond_0

    .line 161
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->setText(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 162
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_0
    if-eqz p2, :cond_1

    .line 166
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/glass/home/search/StreamingTextView$TextUpdater;->setText(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 168
    :cond_1
    return-void
.end method

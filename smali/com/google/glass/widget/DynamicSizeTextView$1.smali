.class Lcom/google/glass/widget/DynamicSizeTextView$1;
.super Landroid/os/AsyncTask;
.source "DynamicSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread(ILjava/lang/CharSequence;FFZLandroid/text/Layout$Alignment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/DynamicSizeTextView;

.field final synthetic val$alignment:Landroid/text/Layout$Alignment;

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$textViewIncludeFontPadding:Z

.field final synthetic val$textViewLineSpacingExtra:F

.field final synthetic val$textViewLineSpacingMultiplier:F

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object p2, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$width:I

    iput p4, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$textViewLineSpacingMultiplier:F

    iput p5, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$textViewLineSpacingExtra:F

    iput-boolean p6, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$textViewIncludeFontPadding:Z

    iput-object p7, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$alignment:Landroid/text/Layout$Alignment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 7
    .parameter "params"

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$width:I

    iget v3, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$textViewLineSpacingMultiplier:F

    iget v4, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$textViewLineSpacingExtra:F

    iget-boolean v5, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$textViewIncludeFontPadding:Z

    iget-object v6, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$alignment:Landroid/text/Layout$Alignment;

    #calls: Lcom/google/glass/widget/DynamicSizeTextView;->calculateTextSize(Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    invoke-static/range {v0 .. v6}, Lcom/google/glass/widget/DynamicSizeTextView;->access$000(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView$1;->doInBackground([Ljava/lang/Void;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    #getter for: Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/google/glass/widget/DynamicSizeTextView;->access$100(Lcom/google/glass/widget/DynamicSizeTextView;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 401
    invoke-static {}, Lcom/google/glass/widget/DynamicSizeTextView;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to cancel text sizing task, ignoring result."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    #calls: Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    invoke-static {v1, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->access$300(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    .line 409
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setAlpha(F)V

    .line 410
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/DynamicSizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->horizontal_scroll_deferred_load_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 413
    .local v0, duration:I
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/DynamicSizeTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 379
    check-cast p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView$1;->onPostExecute(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    return-void
.end method

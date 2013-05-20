.class public Lcom/google/userfeedback/android/api/PreviewActivity;
.super Landroid/app/ListActivity;
.source "PreviewActivity.java"


# instance fields
.field private mAdapter:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

.field private mGoBack:Landroid/widget/Button;

.field private mSubmitFeedback:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v4, Lcom/google/userfeedback/android/api/R$layout;->gf_preview_activity:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/PreviewActivity;->setContentView(I)V

    .line 46
    move-object v2, p0

    .line 47
    .local v2, thisActivity:Landroid/app/Activity;
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_send_from_preview:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mSubmitFeedback:Landroid/widget/Button;

    .line 48
    iget-object v4, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mSubmitFeedback:Landroid/widget/Button;

    new-instance v5, Lcom/google/userfeedback/android/api/PreviewActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/google/userfeedback/android/api/PreviewActivity$1;-><init>(Lcom/google/userfeedback/android/api/PreviewActivity;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_back:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mGoBack:Landroid/widget/Button;

    .line 68
    iget-object v4, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mGoBack:Landroid/widget/Button;

    new-instance v5, Lcom/google/userfeedback/android/api/PreviewActivity$2;

    invoke-direct {v5, p0}, Lcom/google/userfeedback/android/api/PreviewActivity$2;-><init>(Lcom/google/userfeedback/android/api/PreviewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v3

    .line 76
    .local v3, uf:Lcom/google/userfeedback/android/api/UserFeedback;
    if-nez v3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v1

    .line 81
    .local v1, report:Lcom/google/userfeedback/android/api/UserFeedbackReport;
    if-nez v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    goto :goto_0

    .line 86
    :cond_1
    :try_start_0
    new-instance v4, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    invoke-direct {v4, p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;-><init>(Landroid/content/Context;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    iput-object v4, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mAdapter:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    .line 87
    iget-object v4, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mAdapter:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/PreviewActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v4, "GFEEDBACK"

    const-string v5, "failed to read in report fields"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 102
    invoke-static {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->flushBitmapsOnDestroy(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 95
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 96
    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mAdapter:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    invoke-virtual {v0, p3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->onListItemClick(I)V

    .line 97
    return-void
.end method

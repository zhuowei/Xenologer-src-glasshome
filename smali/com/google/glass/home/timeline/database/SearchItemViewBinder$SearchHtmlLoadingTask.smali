.class Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "SearchItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/database/SearchItemViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHtmlLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final attachment:Lcom/google/googlex/glass/common/proto/Attachment;

.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field private final recognitionResult:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/glass/home/timeline/database/SearchItemViewBinder;

.field private final viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/timeline/database/SearchItemViewBinder;Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter "attachment"
    .parameter "recognitionResult"
    .parameter "viewGroup"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->this$0:Lcom/google/glass/home/timeline/database/SearchItemViewBinder;

    invoke-direct {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    .line 53
    iput-object p3, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->recognitionResult:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->viewGroup:Landroid/view/ViewGroup;

    .line 56
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 57
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->bindContent([B)V

    return-void
.end method

.method protected bindContent([B)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 76
    if-nez p1, :cond_1

    .line 79
    invoke-static {}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No search data to bind to"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 84
    .local v0, cardData:Ljava/lang/String;
    new-instance v1, Lcom/google/glass/home/search/results/AnswerCardProcessor;

    iget-object v3, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->recognitionResult:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/google/glass/home/search/results/AnswerCardProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    .local v1, cardProcessor:Lcom/google/glass/home/search/results/AnswerCardProcessor;
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v5}, Lcom/google/glass/home/search/results/AnswerCardProcessor;->process(Ljava/lang/String;ZZ)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v2

    .line 89
    .local v2, results:Lcom/google/glass/home/search/results/ResultsContainer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Lcom/google/glass/home/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected bridge synthetic loadContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->loadContent()[B

    move-result-object v0

    return-object v0
.end method

.method protected loadContent()[B
    .locals 5

    .prologue
    .line 66
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v2, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v4, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;Lcom/google/googlex/glass/common/proto/Attachment;)[B

    move-result-object v0

    .line 68
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attachment content not on file system and could not be downloaded."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-object v0
.end method

.method protected prepareContent()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 62
    return-void
.end method

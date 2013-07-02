.class Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "SearchItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/database/SearchItemViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchProtoLoadingTask"
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
.method public constructor <init>(Lcom/google/glass/home/timeline/database/SearchItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "attachment"
    .parameter "recognitionResult"
    .parameter "viewGroup"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->this$0:Lcom/google/glass/home/timeline/database/SearchItemViewBinder;

    .line 125
    invoke-direct {p0, p2}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>(Landroid/content/Context;)V

    .line 126
    iput-object p3, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    .line 127
    iput-object p4, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->recognitionResult:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->viewGroup:Landroid/view/ViewGroup;

    .line 130
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 131
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->bindContent([B)V

    return-void
.end method

.method protected bindContent([B)V
    .locals 6
    .parameter "proto"

    .prologue
    .line 164
    if-nez p1, :cond_1

    .line 167
    invoke-static {}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No search proto to bind to"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->parseFrom([B)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 179
    .local v2, majelResponse:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    if-eqz v2, :cond_0

    .line 180
    new-instance v1, Lcom/google/glass/home/search/results/MajelProcessor;

    iget-object v4, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->recognitionResult:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/google/glass/home/search/results/MajelProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    .local v1, majelProcessor:Lcom/google/glass/home/search/results/MajelProcessor;
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/google/glass/home/search/results/MajelProcessor;->process(Lcom/google/majel/proto/MajelProtos$MajelResponse;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v3

    .line 183
    .local v3, results:Lcom/google/glass/home/search/results/ResultsContainer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPageCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 184
    iget-object v4, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->viewGroup:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/glass/home/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 174
    .end local v1           #majelProcessor:Lcom/google/glass/home/search/results/MajelProcessor;
    .end local v2           #majelResponse:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .end local v3           #results:Lcom/google/glass/home/search/results/ResultsContainer;
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    invoke-static {}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "sp"

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)[B

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)[B
    .locals 6
    .parameter "isCancelled"

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 148
    .local v1, proto:[B
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v3, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v5, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;Lcom/google/googlex/glass/common/proto/Attachment;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 155
    if-nez v1, :cond_0

    .line 156
    invoke-static {}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attachment proto not on file system and could not be downloaded."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, v1

    .line 159
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interrupted while fetching attachment proto."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected prepareContent()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 141
    return-void
.end method

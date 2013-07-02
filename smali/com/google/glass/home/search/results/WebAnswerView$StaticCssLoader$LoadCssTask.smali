.class Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;
.super Landroid/os/AsyncTask;
.source "WebAnswerView.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadCssTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile loadComplete:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->loadComplete:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 337
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "unused"

    .prologue
    const/4 v4, 0x0

    .line 344
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string v2, ""

    sput-object v2, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    .line 355
    :goto_0
    return-object v4

    .line 349
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "stylesheets/base_style.css"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    .local v0, cssFile:Ljava/io/File;
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/google/common/io/Files;->toString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    .end local v0           #cssFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 352
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/home/search/results/WebAnswerView;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to load Glass CSS"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    sput-object v4, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 337
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "unused"

    .prologue
    .line 365
    invoke-static {}, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->access$300()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/search/results/WebAnswerView;

    .line 366
    .local v1, view:Lcom/google/glass/home/search/results/WebAnswerView;
    invoke-virtual {v1}, Lcom/google/glass/home/search/results/WebAnswerView;->reloadData()V

    goto :goto_0

    .line 368
    .end local v1           #view:Lcom/google/glass/home/search/results/WebAnswerView;
    :cond_0
    invoke-static {}, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->access$300()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 369
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->loadComplete:Z

    .line 370
    return-void
.end method

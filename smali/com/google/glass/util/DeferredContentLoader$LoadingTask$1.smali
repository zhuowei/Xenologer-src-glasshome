.class Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;
.super Landroid/os/AsyncTask;
.source "DeferredContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
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
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;


# direct methods
.method constructor <init>(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    iput-object p1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 112
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-virtual {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-virtual {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->loadContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onCancelled(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 135
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->stop()V
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 136
    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 121
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->stop()V
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 124
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-virtual {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->bindContent(Ljava/lang/Object;)V

    goto :goto_0
.end method

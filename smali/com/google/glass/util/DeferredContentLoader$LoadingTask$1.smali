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
    .line 110
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
    .line 110
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 116
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/Condition;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$200(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->DEFERRED_CONTENT_LOAD:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "t"

    iget-object v3, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-virtual {v3}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->getUserEventTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    iget-object v1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;
    invoke-static {v1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;

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
    .line 142
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 143
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->stop()V
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$300(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 144
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
    .line 128
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 129
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->stop()V
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$300(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 132
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/Condition;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->bindContent(Ljava/lang/Object;)V

    goto :goto_0
.end method

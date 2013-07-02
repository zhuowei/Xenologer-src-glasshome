.class Lcom/google/glass/home/timeline/active/CallItemView$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "CallItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/CallItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/CallItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/CallItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/CallItemView$1;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/timeline/active/CallItemView;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stateChangeReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/CallItemView$1;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "com.google.glass.action.REJECT_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$1;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #calls: Lcom/google/glass/home/timeline/active/CallItemView;->stopCallTimer()V
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/CallItemView;->access$000(Lcom/google/glass/home/timeline/active/CallItemView;)V

    .line 63
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$1;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #getter for: Lcom/google/glass/home/timeline/active/CallItemView;->callStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/CallItemView;->access$100(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$string;->phone_call_hanging_up:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$1;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    const/4 v2, 0x1

    #setter for: Lcom/google/glass/home/timeline/active/CallItemView;->wasHangUpRequested:Z
    invoke-static {v1, v2}, Lcom/google/glass/home/timeline/active/CallItemView;->access$202(Lcom/google/glass/home/timeline/active/CallItemView;Z)Z

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v1, "com.google.glass.action.MICROPHONE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$1;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #calls: Lcom/google/glass/home/timeline/active/CallItemView;->updateCallActionIcon()V
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/CallItemView;->access$300(Lcom/google/glass/home/timeline/active/CallItemView;)V

    goto :goto_0
.end method

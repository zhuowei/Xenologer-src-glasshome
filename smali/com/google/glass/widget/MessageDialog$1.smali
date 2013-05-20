.class Lcom/google/glass/widget/MessageDialog$1;
.super Landroid/os/Handler;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 134
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    #calls: Lcom/google/glass/widget/MessageDialog;->showNormalContent()V
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog;->access$000(Lcom/google/glass/widget/MessageDialog;)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v4, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    #getter for: Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;
    invoke-static {v4}, Lcom/google/glass/widget/MessageDialog;->access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;

    move-result-object v4

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->listener:Lcom/google/glass/widget/MessageDialog$Listener;
    invoke-static {v4}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 143
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 144
    .local v0, dismissedByUser:Z
    :goto_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 146
    .local v1, onTemporaryMessage:Z
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 148
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    #getter for: Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog;->access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;

    move-result-object v2

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->listener:Lcom/google/glass/widget/MessageDialog$Listener;
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/widget/MessageDialog$Listener;->onDismissed()V

    goto :goto_0

    .end local v0           #dismissedByUser:Z
    .end local v1           #onTemporaryMessage:Z
    :cond_1
    move v0, v3

    .line 143
    goto :goto_1

    .restart local v0       #dismissedByUser:Z
    :cond_2
    move v1, v3

    .line 144
    goto :goto_2

    .line 151
    .restart local v1       #onTemporaryMessage:Z
    :cond_3
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    #getter for: Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog;->access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;

    move-result-object v2

    #getter for: Lcom/google/glass/widget/MessageDialog$Params;->listener:Lcom/google/glass/widget/MessageDialog$Listener;
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/widget/MessageDialog$Listener;->onDone()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/google/glass/home/companion/CompanionService$2;
.super Landroid/os/Handler;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/CompanionService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/CompanionService;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService$2;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 139
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 140
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService$2;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/home/companion/CompanionService;->access$100(Lcom/google/glass/home/companion/CompanionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService$2;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService;->start()V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

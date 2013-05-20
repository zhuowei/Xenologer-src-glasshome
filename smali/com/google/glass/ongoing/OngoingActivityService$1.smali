.class Lcom/google/glass/ongoing/OngoingActivityService$1;
.super Landroid/os/Handler;
.source "OngoingActivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/ongoing/OngoingActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/ongoing/OngoingActivityService;


# direct methods
.method constructor <init>(Lcom/google/glass/ongoing/OngoingActivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityService$1;->this$0:Lcom/google/glass/ongoing/OngoingActivityService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$1;->this$0:Lcom/google/glass/ongoing/OngoingActivityService;

    #calls: Lcom/google/glass/ongoing/OngoingActivityService;->handleIncomingMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/google/glass/ongoing/OngoingActivityService;->access$100(Lcom/google/glass/ongoing/OngoingActivityService;Landroid/os/Message;)V

    .line 96
    return-void
.end method

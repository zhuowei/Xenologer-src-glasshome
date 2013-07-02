.class Lcom/google/glass/home/ScreenOffService$1;
.super Landroid/os/Handler;
.source "ScreenOffService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/ScreenOffService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/ScreenOffService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/ScreenOffService;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$1;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Handler is closing notification window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$1;->this$0:Lcom/google/glass/home/ScreenOffService;

    const/4 v1, 0x1

    #calls: Lcom/google/glass/home/ScreenOffService;->closeNotificationWindow(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/home/ScreenOffService;->access$100(Lcom/google/glass/home/ScreenOffService;Z)V

    .line 108
    :cond_0
    return-void
.end method

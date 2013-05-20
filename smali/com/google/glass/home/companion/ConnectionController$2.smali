.class Lcom/google/glass/home/companion/ConnectionController$2;
.super Ljava/lang/Object;
.source "ConnectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/companion/ConnectionController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/ConnectionController;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/ConnectionController;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/glass/home/companion/ConnectionController$2;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/glass/home/companion/ConnectionController$2;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    #getter for: Lcom/google/glass/home/companion/ConnectionController;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/home/companion/ConnectionController;->access$300(Lcom/google/glass/home/companion/ConnectionController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/home/companion/ConnectionController;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "LAST_CONNECTED_DEVICE_ADDRESS"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, readLastDeviceAddress:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/home/companion/ConnectionController$2;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    monitor-enter v2

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/companion/ConnectionController$2;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    #getter for: Lcom/google/glass/home/companion/ConnectionController;->lastDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/companion/ConnectionController;->access$400(Lcom/google/glass/home/companion/ConnectionController;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/google/glass/home/companion/ConnectionController$2;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    #setter for: Lcom/google/glass/home/companion/ConnectionController;->lastDeviceAddress:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/google/glass/home/companion/ConnectionController;->access$402(Lcom/google/glass/home/companion/ConnectionController;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/google/glass/home/companion/ConnectionController$2;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    invoke-virtual {v1}, Lcom/google/glass/home/companion/ConnectionController;->recover()V

    .line 126
    :cond_0
    monitor-exit v2

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

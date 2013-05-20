.class Lcom/google/glass/util/WifiHelper$5;
.super Ljava/lang/Object;
.source "WifiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/WifiHelper;->startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;

.field final synthetic val$callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$5;->this$0:Lcom/google/glass/util/WifiHelper;

    iput-object p2, p0, Lcom/google/glass/util/WifiHelper$5;->val$callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 446
    invoke-static {}, Lcom/google/glass/util/WifiHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$5;->this$0:Lcom/google/glass/util/WifiHelper;

    #calls: Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V
    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->access$400(Lcom/google/glass/util/WifiHelper;)V

    .line 448
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$5;->val$callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    invoke-interface {v0}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 449
    return-void
.end method

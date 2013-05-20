.class Lcom/google/glass/util/WifiHelper$3;
.super Ljava/lang/Object;
.source "WifiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/WifiHelper;->connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$3;->this$0:Lcom/google/glass/util/WifiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/google/glass/util/WifiHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Saving configuration..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$3;->this$0:Lcom/google/glass/util/WifiHelper;

    #getter for: Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->access$000(Lcom/google/glass/util/WifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 275
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$3;->this$0:Lcom/google/glass/util/WifiHelper;

    #getter for: Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->access$000(Lcom/google/glass/util/WifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 276
    return-void
.end method

.class Lcom/google/glass/home/settings/WifiSettingsItemView$3;
.super Ljava/lang/Object;
.source "WifiSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/util/WifiHelper$WifiScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/WifiSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResultsAvailable(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan results received, scanCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsItemView;->scanCount:I
    invoke-static {v2}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$200(Lcom/google/glass/home/settings/WifiSettingsItemView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$300(Lcom/google/glass/home/settings/WifiSettingsItemView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsItemView;->scanCount:I
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$200(Lcom/google/glass/home/settings/WifiSettingsItemView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$300(Lcom/google/glass/home/settings/WifiSettingsItemView;)Ljava/util/LinkedList;

    move-result-object v1

    #setter for: Lcom/google/glass/home/settings/WifiSettingsItemView;->lastCummulativeScanResults:Ljava/util/LinkedList;
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$402(Lcom/google/glass/home/settings/WifiSettingsItemView;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 95
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #calls: Lcom/google/glass/home/settings/WifiSettingsItemView;->update()V
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$000(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$208(Lcom/google/glass/home/settings/WifiSettingsItemView;)I

    .line 99
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$500(Lcom/google/glass/home/settings/WifiSettingsItemView;)Lcom/google/glass/util/WifiHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/util/WifiHelper;->startScan(Lcom/google/glass/util/WifiHelper$WifiScanCallback;)V

    goto :goto_0
.end method

.class public Lcom/google/glass/home/settings/WifiScanResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiScanResultsAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# static fields
.field public static final ADD_NETWORK_MANUALLY:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private scannedNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->ADD_NETWORK_MANUALLY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, scannedNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->scannedNetworks:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 39
    return-void
.end method

.method private getManualScanView(ILandroid/view/View;Landroid/widget/LinearLayout;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "shade"

    .prologue
    const/4 v6, 0x0

    .line 83
    sget v3, Lcom/google/glass/home/R$id;->timeline_lhs:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$color;->background_dark_gray_semitransparent:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 85
    sget v3, Lcom/google/glass/home/R$id;->timeline_rhs:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    sget v3, Lcom/google/glass/home/R$id;->wifi_signal_strength:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, icon:Landroid/widget/ImageView;
    sget v3, Lcom/google/glass/home/R$drawable;->ic_wifi4_add_big:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    sget v3, Lcom/google/glass/home/R$id;->wifi_network_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 94
    .local v1, name:Lcom/google/glass/widget/TypophileTextView;
    sget v3, Lcom/google/glass/home/R$string;->wifi_add_network:I

    invoke-virtual {v1, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 95
    invoke-virtual {v1, v6}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 97
    sget v3, Lcom/google/glass/home/R$id;->wifi_other_networks:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 98
    .local v2, tip:Lcom/google/glass/widget/TypophileTextView;
    iget-object v3, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->getCompanionState()Lcom/google/glass/home/companion/CompanionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/companion/CompanionState;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    sget v3, Lcom/google/glass/home/R$string;->wifi_add_network_via_myglass:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 103
    :goto_0
    invoke-virtual {v2, v6}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 106
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    sget-object v4, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->ADD_NETWORK_MANUALLY:Ljava/lang/Object;

    invoke-virtual {p2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 109
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 111
    return-object p2

    .line 101
    :cond_0
    sget v3, Lcom/google/glass/home/R$string;->wifi_add_network_via_qr_code:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    goto :goto_0
.end method

.method private getWifiApView(ILandroid/view/View;Landroid/widget/LinearLayout;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "shade"

    .prologue
    .line 115
    sget v3, Lcom/google/glass/home/R$id;->timeline_lhs:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$color;->background_dark_gray:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    sget v3, Lcom/google/glass/home/R$id;->timeline_rhs:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$color;->background_black:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 123
    .local v2, scanResult:Landroid/net/wifi/ScanResult;
    iget v3, v2, Landroid/net/wifi/ScanResult;->level:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    .line 124
    .local v1, level:I
    iget-object v3, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v3, v2}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v0

    .local v0, encryption:Lcom/google/glass/util/WifiHelper$Encryption;
    move-object v3, p2

    .line 125
    check-cast v3, Lcom/google/glass/home/settings/WifiApView;

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v1, v0, v4}, Lcom/google/glass/home/settings/WifiApView;->setWifiData(ILcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    .line 128
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 131
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 133
    return-object p2
.end method

.method private isLastView(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 49
    sget-object v0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->ADD_NETWORK_MANUALLY:Ljava/lang/Object;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance p2, Lcom/google/glass/home/settings/WifiApView;

    .end local p2
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/google/glass/home/settings/WifiApView;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local p2
    sget-object v1, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instantiating a new view for position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    sget v1, Lcom/google/glass/home/R$id;->barcode_shade:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    .local v0, shade:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->isLastView(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->getManualScanView(ILandroid/view/View;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v1

    .line 78
    :goto_1
    return-object v1

    .line 71
    .end local v0           #shade:Landroid/widget/LinearLayout;
    :cond_0
    sget-object v1, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reusing a view for position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .restart local v0       #shade:Landroid/widget/LinearLayout;
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->getWifiApView(ILandroid/view/View;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 143
    return-void
.end method

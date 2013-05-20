.class public Lcom/google/glass/home/settings/WifiHorizontalScrollView;
.super Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.source "WifiHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hideAnimation:Landroid/view/animation/Animation;

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

.field private showAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 44
    sget v0, Lcom/google/glass/common/R$anim;->show_contextual:I

    invoke-static {p1, v0}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->showAnimation:Landroid/view/animation/Animation;

    .line 45
    sget v0, Lcom/google/glass/common/R$anim;->hide_contextual:I

    invoke-static {p1, v0}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->hideAnimation:Landroid/view/animation/Animation;

    .line 46
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->hideAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/glass/home/settings/WifiHorizontalScrollView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView$1;-><init>(Lcom/google/glass/home/settings/WifiHorizontalScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->scannedNetworks:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;

    iget-object v1, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->scannedNetworks:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/home/settings/WifiScanResultsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setAdapter(Landroid/widget/Adapter;)V

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->findIdPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findIdPosition(Ljava/lang/String;)I
    .locals 2
    .parameter "ssid"

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->scannedNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->scannedNetworks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    .end local v0           #i:I
    :goto_1
    return v0

    .line 66
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 76
    sget-object v0, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->ADD_NETWORK_MANUALLY:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->hideAnimation:Landroid/view/animation/Animation;

    invoke-static {p0, v0}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onCompanionConnectionStatusChanged(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->updateViews(Z)V

    .line 100
    return-void
.end method

.method public rebindView(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "view"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    return-void
.end method

.method public setNetworks(Ljava/util/List;)V
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
    .line 58
    .local p1, scannedNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    sget-object v0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scan results."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->updateViews(Z)V

    .line 62
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->showAnimation:Landroid/view/animation/Animation;

    invoke-static {p0, v0}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

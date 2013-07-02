.class public Lcom/google/glass/home/timeline/ReadMoreHtmlView;
.super Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.source "ReadMoreHtmlView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 22
    return-void
.end method


# virtual methods
.method public findIdPosition(Ljava/lang/Integer;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;->findIdPosition(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public rebindView(ILandroid/view/View;)V
    .locals 0
    .parameter "position"
    .parameter "view"

    .prologue
    .line 37
    return-void
.end method

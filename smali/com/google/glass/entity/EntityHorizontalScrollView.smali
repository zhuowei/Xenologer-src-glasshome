.class public Lcom/google/glass/entity/EntityHorizontalScrollView;
.super Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.source "EntityHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/googlex/glass/common/proto/Entity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityHorizontalScrollView;->findIdPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findIdPosition(Ljava/lang/String;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 27
    const/4 v0, -0x1

    return v0
.end method

.method public findItemPosition(Lcom/google/googlex/glass/common/proto/Entity;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 32
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/google/googlex/glass/common/proto/Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityHorizontalScrollView;->findItemPosition(Lcom/google/googlex/glass/common/proto/Entity;)I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public rebindView(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "view"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    return-void
.end method

.class public Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;
.super Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.source "VoiceSearchResultsHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private resultPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Z)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 29
    return-void
.end method


# virtual methods
.method public findIdPosition(Ljava/lang/Integer;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->findIdPosition(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public findItemPosition(Landroid/view/View;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->resultPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->resultPages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;

    invoke-virtual {v1}, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    .end local v0           #i:I
    :goto_1
    return v0

    .line 44
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getHomePosition()I

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->findItemPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

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
    .line 60
    return-void
.end method

.method public setResultPages(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, resultPages:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;>;"
    iput-object p1, p0, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->resultPages:Ljava/util/List;

    .line 33
    new-instance v0, Lcom/google/glass/home/search/results/VoiceSearchResultsAdapter;

    invoke-direct {v0, p1}, Lcom/google/glass/home/search/results/VoiceSearchResultsAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->setAdapter(Landroid/widget/Adapter;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/results/VoiceSearchResultsHorizontalScrollView;->updateViews(Z)V

    .line 35
    return-void
.end method

.class public Lcom/google/glass/home/search/results/VoiceSearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "VoiceSearchResultsAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


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
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    .line 20
    .local p1, resultPages:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/glass/home/search/results/VoiceSearchResultsAdapter;->resultPages:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/search/results/VoiceSearchResultsAdapter;->resultPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/home/search/results/VoiceSearchResultsAdapter;->resultPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/results/VoiceSearchResultsAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/results/VoiceSearchResultsAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, view:Landroid/view/View;
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/results/VoiceSearchResultsAdapter;->getItem(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    return-object v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 57
    return-void
.end method

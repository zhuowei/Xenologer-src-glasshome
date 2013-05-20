.class public Lcom/google/glass/util/CompositeAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeAdapter.java"


# instance fields
.field private final dataSetObserver:Landroid/database/DataSetObserver;

.field private final first:Landroid/widget/Adapter;

.field private final second:Landroid/widget/Adapter;


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;Landroid/widget/Adapter;)V
    .locals 1
    .parameter "first"
    .parameter "second"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    new-instance v0, Lcom/google/glass/util/CompositeAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/CompositeAdapter$1;-><init>(Lcom/google/glass/util/CompositeAdapter;)V

    iput-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    .line 30
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {p2}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    .line 33
    iput-object p2, p0, Lcom/google/glass/util/CompositeAdapter;->second:Landroid/widget/Adapter;

    .line 36
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 37
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->second:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    .line 60
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->second:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

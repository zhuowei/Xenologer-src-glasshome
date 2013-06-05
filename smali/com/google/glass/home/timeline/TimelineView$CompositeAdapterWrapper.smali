.class public Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;
.super Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.source "TimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CompositeAdapterWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
        "<",
        "Landroid/widget/BaseAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final first:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation
.end field

.field final second:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, first:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    .local p2, second:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    new-instance v0, Lcom/google/glass/util/CompositeAdapter;

    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/CompositeAdapter;-><init>(Landroid/widget/Adapter;Landroid/widget/Adapter;)V

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;-><init>(Landroid/widget/Adapter;)V

    .line 84
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;->first:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 85
    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;->second:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 86
    return-void
.end method


# virtual methods
.method findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;->first:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;->first:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;->second:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;->second:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 99
    .local v0, result:I
    if-ltz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;->first:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 104
    .end local v0           #result:I
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;->first:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;->second:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

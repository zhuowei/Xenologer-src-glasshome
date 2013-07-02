.class Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;
.super Ljava/lang/Object;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PositionListenerCollection"
.end annotation


# instance fields
.field private positionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public addPositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public onFocused(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;->onFocused(I)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public onScaleChanged(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;->onScaleChanged(F)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 2
    .parameter "position"

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;->onScrollPositionChanged(F)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public onSettled(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;->onSettled(I)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public onUnsettled(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;->onUnsettled(I)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public removePositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->positionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

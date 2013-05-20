.class abstract Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.super Ljava/lang/Object;
.source "TimelineView.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AdapterWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final adapter:Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/Adapter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<TT;>;"
    .local p1, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->adapter:Landroid/widget/Adapter;

    .line 42
    return-void
.end method


# virtual methods
.method abstract findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
.end method

.method getAdapter()Landroid/widget/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<TT;>;"
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->adapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method abstract matches(Lcom/google/glass/timeline/TimelineItemId;)Z
.end method

.method rebind(ILandroid/view/View;)V
    .locals 0
    .parameter "position"
    .parameter "view"

    .prologue
    .line 62
    .local p0, this:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<TT;>;"
    return-void
.end method

.method updateQueryParameters()V
    .locals 0

    .prologue
    .line 57
    .local p0, this:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<TT;>;"
    return-void
.end method

.method waitForLoad(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "onLoad"

    .prologue
    .line 71
    .local p0, this:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<TT;>;"
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 72
    return-void
.end method

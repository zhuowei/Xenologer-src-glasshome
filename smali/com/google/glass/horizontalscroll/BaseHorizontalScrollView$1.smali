.class Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;
.super Landroid/database/DataSetObserver;
.source "BaseHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView.1;"
    iput-object p1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 234
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView.1;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 235
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 239
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView.1;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 240
    return-void
.end method

.class Lcom/google/glass/widget/MosaicView$2;
.super Ljava/lang/Object;
.source "MosaicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/MosaicView;->addCell(ILcom/google/googlex/glass/common/proto/Entity;IIIILandroid/widget/GridLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MosaicView;

.field final synthetic val$entity:Lcom/google/googlex/glass/common/proto/Entity;

.field final synthetic val$entitySetIndex:I

.field final synthetic val$height:I

.field final synthetic val$layoutId:I

.field final synthetic val$layoutParams:Landroid/widget/GridLayout$LayoutParams;

.field final synthetic val$remainingCount:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MosaicView;IILandroid/widget/GridLayout$LayoutParams;ILcom/google/googlex/glass/common/proto/Entity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    iput p2, p0, Lcom/google/glass/widget/MosaicView$2;->val$entitySetIndex:I

    iput p3, p0, Lcom/google/glass/widget/MosaicView$2;->val$layoutId:I

    iput-object p4, p0, Lcom/google/glass/widget/MosaicView$2;->val$layoutParams:Landroid/widget/GridLayout$LayoutParams;

    iput p5, p0, Lcom/google/glass/widget/MosaicView$2;->val$remainingCount:I

    iput-object p6, p0, Lcom/google/glass/widget/MosaicView$2;->val$entity:Lcom/google/googlex/glass/common/proto/Entity;

    iput p7, p0, Lcom/google/glass/widget/MosaicView$2;->val$width:I

    iput p8, p0, Lcom/google/glass/widget/MosaicView$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 332
    iget v3, p0, Lcom/google/glass/widget/MosaicView$2;->val$entitySetIndex:I

    iget-object v4, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->entitySetIndex:I
    invoke-static {v4}, Lcom/google/glass/widget/MosaicView;->access$000(Lcom/google/glass/widget/MosaicView;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 357
    :goto_0
    return-void

    .line 337
    :cond_0
    const/4 v1, 0x0

    .line 338
    .local v1, cellView:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/google/glass/widget/MosaicView;->access$100()Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/google/glass/widget/MosaicView$2;->val$layoutId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 339
    .local v0, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cellView:Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 342
    .restart local v1       #cellView:Landroid/widget/FrameLayout;
    :cond_1
    if-nez v1, :cond_2

    .line 343
    iget-object v3, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v3}, Lcom/google/glass/widget/MosaicView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 344
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/google/glass/widget/MosaicView$2;->val$layoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #cellView:Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 347
    .restart local v1       #cellView:Landroid/widget/FrameLayout;
    sget v3, Lcom/google/glass/common/R$id;->tag_cell_layout_type:I

    iget v4, p0, Lcom/google/glass/widget/MosaicView$2;->val$layoutId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 350
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v3, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    iget-object v4, p0, Lcom/google/glass/widget/MosaicView$2;->val$layoutParams:Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {v3, v1, v4}, Lcom/google/glass/widget/MosaicView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget v3, p0, Lcom/google/glass/widget/MosaicView$2;->val$remainingCount:I

    if-lez v3, :cond_3

    .line 353
    iget-object v3, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    iget-object v4, p0, Lcom/google/glass/widget/MosaicView$2;->val$entity:Lcom/google/googlex/glass/common/proto/Entity;

    iget v5, p0, Lcom/google/glass/widget/MosaicView$2;->val$remainingCount:I

    #calls: Lcom/google/glass/widget/MosaicView;->bindRemainingCountView(Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;I)V
    invoke-static {v3, v1, v4, v5}, Lcom/google/glass/widget/MosaicView;->access$200(Lcom/google/glass/widget/MosaicView;Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;I)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v3, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    iget-object v4, p0, Lcom/google/glass/widget/MosaicView$2;->val$entity:Lcom/google/googlex/glass/common/proto/Entity;

    iget v5, p0, Lcom/google/glass/widget/MosaicView$2;->val$width:I

    iget v6, p0, Lcom/google/glass/widget/MosaicView$2;->val$height:I

    #calls: Lcom/google/glass/widget/MosaicView;->bindEntityView(Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;II)V
    invoke-static {v3, v1, v4, v5, v6}, Lcom/google/glass/widget/MosaicView;->access$300(Lcom/google/glass/widget/MosaicView;Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;II)V

    goto :goto_0
.end method

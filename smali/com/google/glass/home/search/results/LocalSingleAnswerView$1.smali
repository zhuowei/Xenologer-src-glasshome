.class Lcom/google/glass/home/search/results/LocalSingleAnswerView$1;
.super Lcom/google/glass/maps/MapHelper$SimpleOnMapRenderedListener;
.source "LocalSingleAnswerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/search/results/LocalSingleAnswerView;->handleAddingAMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/search/results/LocalSingleAnswerView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/results/LocalSingleAnswerView;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView$1;->this$0:Lcom/google/glass/home/search/results/LocalSingleAnswerView;

    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper$SimpleOnMapRenderedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapRendered(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView$1;->this$0:Lcom/google/glass/home/search/results/LocalSingleAnswerView;

    #getter for: Lcom/google/glass/home/search/results/LocalSingleAnswerView;->mapImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->access$000(Lcom/google/glass/home/search/results/LocalSingleAnswerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalSingleAnswerView$1;->this$0:Lcom/google/glass/home/search/results/LocalSingleAnswerView;

    #getter for: Lcom/google/glass/home/search/results/LocalSingleAnswerView;->mapImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->access$000(Lcom/google/glass/home/search/results/LocalSingleAnswerView;)Landroid/widget/ImageView;

    move-result-object v0

    #calls: Lcom/google/glass/home/search/results/LocalSingleAnswerView;->fadeIn(Landroid/view/View;)V
    invoke-static {v0}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->access$100(Landroid/view/View;)V

    .line 137
    return-void
.end method

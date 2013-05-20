.class Lcom/google/glass/home/search/results/LocalCoverView$1;
.super Lcom/google/glass/maps/MapHelper$SimpleOnMapRenderedListener;
.source "LocalCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/search/results/LocalCoverView;->setLocalResults(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/search/results/LocalCoverView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/results/LocalCoverView;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/home/search/results/LocalCoverView$1;->this$0:Lcom/google/glass/home/search/results/LocalCoverView;

    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper$SimpleOnMapRenderedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapRendered(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalCoverView$1;->this$0:Lcom/google/glass/home/search/results/LocalCoverView;

    #getter for: Lcom/google/glass/home/search/results/LocalCoverView;->mapImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/home/search/results/LocalCoverView;->access$000(Lcom/google/glass/home/search/results/LocalCoverView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    iget-object v0, p0, Lcom/google/glass/home/search/results/LocalCoverView$1;->this$0:Lcom/google/glass/home/search/results/LocalCoverView;

    #getter for: Lcom/google/glass/home/search/results/LocalCoverView;->mapImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/home/search/results/LocalCoverView;->access$000(Lcom/google/glass/home/search/results/LocalCoverView;)Landroid/widget/ImageView;

    move-result-object v0

    #calls: Lcom/google/glass/home/search/results/LocalCoverView;->fadeIn(Landroid/view/View;)V
    invoke-static {v0}, Lcom/google/glass/home/search/results/LocalCoverView;->access$100(Landroid/view/View;)V

    .line 81
    return-void
.end method

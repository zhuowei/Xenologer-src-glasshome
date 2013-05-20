.class Lcom/google/glass/home/timeline/active/CallItemView$3$1;
.super Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
.source "CallItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/CallItemView$3;->onEntityMatched(Lcom/google/googlex/glass/common/proto/Entity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/active/CallItemView$3;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/CallItemView$3;Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/CallItemView$3$1;->this$1:Lcom/google/glass/home/timeline/active/CallItemView$3;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView$3$1;->this$1:Lcom/google/glass/home/timeline/active/CallItemView$3;

    iget-object v0, v0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #getter for: Lcom/google/glass/home/timeline/active/CallItemView;->callerPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/CallItemView;->access$700(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView$3$1;->this$1:Lcom/google/glass/home/timeline/active/CallItemView$3;

    iget-object v0, v0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #getter for: Lcom/google/glass/home/timeline/active/CallItemView;->callerPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/CallItemView;->access$700(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/active/CallItemView$3$1;->showView(Landroid/view/View;Z)V

    .line 304
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 292
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/active/CallItemView$3$1;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected prepareContent()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView$3$1;->this$1:Lcom/google/glass/home/timeline/active/CallItemView$3;

    iget-object v0, v0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #getter for: Lcom/google/glass/home/timeline/active/CallItemView;->callerPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/CallItemView;->access$700(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/home/timeline/active/CallItemView$3$1;->hideView(Landroid/view/View;ZZ)V

    .line 296
    return-void
.end method

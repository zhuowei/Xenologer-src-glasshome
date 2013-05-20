.class Lcom/google/glass/home/search/results/MajelProcessor$1;
.super Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
.source "MajelProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/search/results/MajelProcessor;->loadImageView(Landroid/widget/ImageView;Lcom/google/majel/proto/PeanutProtos$Image;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/search/results/MajelProcessor;

.field final synthetic val$height:I

.field final synthetic val$image:Lcom/google/majel/proto/PeanutProtos$Image;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$thumbnailOk:Z

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/results/MajelProcessor;Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;ZLcom/google/majel/proto/PeanutProtos$Image;Landroid/widget/ImageView;II)V
    .locals 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->this$0:Lcom/google/glass/home/search/results/MajelProcessor;

    iput-boolean p7, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$thumbnailOk:Z

    iput-object p8, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$image:Lcom/google/majel/proto/PeanutProtos$Image;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    move/from16 v0, p10

    iput v0, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$width:I

    move/from16 v0, p11

    iput v0, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$height:I

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 331
    iget-object v0, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v0, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/search/results/MajelProcessor$1;->showView(Landroid/view/View;Z)V

    .line 334
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 271
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/results/MajelProcessor$1;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected prepareContent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 279
    iget-boolean v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$thumbnailOk:Z

    if-nez v5, :cond_1

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 282
    .local v4, scaleType:Landroid/widget/ImageView$ScaleType;
    :goto_0
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$image:Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-virtual {v5}, Lcom/google/majel/proto/PeanutProtos$Image;->hasData()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$image:Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-virtual {v5}, Lcom/google/majel/proto/PeanutProtos$Image;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 285
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$image:Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-virtual {v5}, Lcom/google/majel/proto/PeanutProtos$Image;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    .line 286
    .local v1, bytes:[B
    array-length v5, v1

    invoke-static {v1, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 288
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    invoke-virtual {p0, v10}, Lcom/google/glass/home/search/results/MajelProcessor$1;->cancel(Z)V

    .line 324
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bytes:[B
    :cond_0
    :goto_1
    return-void

    .line 279
    .end local v4           #scaleType:Landroid/widget/ImageView$ScaleType;
    :cond_1
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 290
    .restart local v4       #scaleType:Landroid/widget/ImageView$ScaleType;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$image:Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-virtual {v5}, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbData()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$image:Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-virtual {v5}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 292
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$image:Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-virtual {v5}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    .line 293
    .restart local v1       #bytes:[B
    array-length v5, v1

    invoke-static {v1, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 296
    iget-boolean v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$thumbnailOk:Z

    if-nez v5, :cond_3

    .line 299
    iget v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$width:I

    iget v6, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$height:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/google/glass/home/search/results/MajelProcessor;->getTargetImageDimensions(IIII)Landroid/util/Pair;

    move-result-object v2

    .line 301
    .local v2, imageDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v6, v5}, Lcom/google/glass/home/search/results/MajelProcessor$1;->setImageDimensions(II)V

    .line 302
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 303
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 305
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v6, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 307
    .local v3, resized:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    const/high16 v6, 0x3f00

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 316
    .end local v2           #imageDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3           #resized:Landroid/graphics/Bitmap;
    :goto_2
    iget-boolean v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$thumbnailOk:Z

    if-eqz v5, :cond_0

    .line 317
    invoke-virtual {p0, v10}, Lcom/google/glass/home/search/results/MajelProcessor$1;->cancel(Z)V

    goto/16 :goto_1

    .line 310
    :cond_3
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 321
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bytes:[B
    :cond_4
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/google/glass/home/search/results/MajelProcessor$1;->this$0:Lcom/google/glass/home/search/results/MajelProcessor;

    #getter for: Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/glass/home/search/results/MajelProcessor;->access$000(Lcom/google/glass/home/search/results/MajelProcessor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->ic_anon_big:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1
.end method

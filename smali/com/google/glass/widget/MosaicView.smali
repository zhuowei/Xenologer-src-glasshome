.class public Lcom/google/glass/widget/MosaicView;
.super Landroid/widget/GridLayout;
.source "MosaicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/MosaicView$CellSpec;,
        Lcom/google/glass/widget/MosaicView$MosaicSpec;,
        Lcom/google/glass/widget/MosaicView$GroupCountType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CELL_LAYOUT_CACHE_CAPACITY:I = 0x50

.field private static final LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/widget/MosaicView$MosaicSpec;",
            ">;"
        }
    .end annotation
.end field

.field protected static final MAX_IMAGES_LANDSCAPE:I = 0x8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final MAX_IMAGES_PORTRAIT:I = 0x5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/widget/MosaicView$MosaicSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final cellLayoutCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final hasImagePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainThreadHandler:Landroid/os/Handler;


# instance fields
.field private entitySetIndex:I

.field private final imageDownloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 34
    const-class v0, Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/glass/widget/MosaicView;->$assertionsDisabled:Z

    .line 35
    const-class v0, Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/MosaicView;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    .line 50
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/4 v2, 0x6

    sget-object v3, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_6:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/4 v2, 0x7

    sget-object v3, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_7:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/16 v2, 0x8

    sget-object v3, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_8:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    .line 60
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->mainThreadHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/google/glass/widget/MosaicView$1;

    invoke-direct {v0}, Lcom/google/glass/widget/MosaicView$1;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->hasImagePredicate:Lcom/google/common/base/Predicate;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->entitySetIndex:I

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->entitySetIndex:I

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->entitySetIndex:I

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/MosaicView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/glass/widget/MosaicView;->entitySetIndex:I

    return v0
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/widget/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/widget/MosaicView;Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/MosaicView;->bindRemainingCountView(Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/widget/MosaicView;Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/widget/MosaicView;->bindEntityView(Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;II)V

    return-void
.end method

.method private addCell(ILcom/google/googlex/glass/common/proto/Entity;IIIILandroid/widget/GridLayout$LayoutParams;)V
    .locals 10
    .parameter "entitySetIndex"
    .parameter "entity"
    .parameter "remainingCount"
    .parameter "width"
    .parameter "height"
    .parameter "layoutId"
    .parameter "layoutParams"

    .prologue
    .line 321
    if-nez p2, :cond_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an entity and/or a remainingCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    sget-object v9, Lcom/google/glass/widget/MosaicView;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/glass/widget/MosaicView$2;

    move-object v1, p0

    move v2, p1

    move/from16 v3, p6

    move-object/from16 v4, p7

    move v5, p3

    move-object v6, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/widget/MosaicView$2;-><init>(Lcom/google/glass/widget/MosaicView;IILandroid/widget/GridLayout$LayoutParams;ILcom/google/googlex/glass/common/proto/Entity;II)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method private bindEntityView(Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;II)V
    .locals 7
    .parameter "cellView"
    .parameter "entity"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 363
    sget v1, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 364
    .local v3, imageView:Landroid/widget/ImageView;
    sget v1, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 365
    .local v4, textView:Landroid/widget/TextView;
    new-instance v0, Lcom/google/glass/util/EntityImageDownloadTask;

    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 367
    .local v0, imageDownloadTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
    iget-object v1, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-static {p0, v0}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 370
    return-void
.end method

.method private bindRemainingCountView(Landroid/widget/FrameLayout;Lcom/google/googlex/glass/common/proto/Entity;I)V
    .locals 3
    .parameter "cellView"
    .parameter "entity"
    .parameter "remainingCount"

    .prologue
    .line 373
    sget v1, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 374
    .local v0, text:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getDisplayableName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createLayoutParams(Lcom/google/glass/widget/MosaicView$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;
    .locals 5
    .parameter "cellSpec"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 278
    iget v3, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->row:I

    iget v4, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->rowSpan:I

    invoke-static {v3, v4}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    .line 279
    .local v2, rowSpec:Landroid/widget/GridLayout$Spec;
    iget v3, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->column:I

    iget v4, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->colSpan:I

    invoke-static {v3, v4}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    .line 280
    .local v0, colSpec:Landroid/widget/GridLayout$Spec;
    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 281
    .local v1, params:Landroid/widget/GridLayout$LayoutParams;
    iget v3, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->colSpan:I

    mul-int/2addr v3, p2

    iput v3, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 282
    iget v3, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->rowSpan:I

    mul-int/2addr v3, p3

    iput v3, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 283
    return-object v1
.end method

.method protected static getDrawingEntities(Ljava/util/List;I)Landroid/util/Pair;
    .locals 9
    .parameter
    .parameter "maxNumberOfCells"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Lcom/google/glass/widget/MosaicView$GroupCountType;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, allEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 224
    invoke-static {p0, p1}, Lcom/google/glass/widget/MosaicView;->getEntitiesWithImages(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, drawEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Entity;

    .line 228
    .local v2, firstEntity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    invoke-interface {v0, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 232
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 235
    .local v4, numInitialDrawEntities:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 236
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p0, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, p1, :cond_4

    .line 252
    add-int/lit8 v5, p1, -0x1

    invoke-static {v0, v5}, Lcom/google/glass/widget/MosaicView;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 253
    sget-object v5, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 261
    :goto_1
    return-object v5

    .line 237
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 240
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Entity;

    .line 241
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v5, v1}, Lcom/google/glass/entity/EntityHelper;->doEntitiesMatch(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 243
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_5

    if-ge v4, v8, :cond_5

    .line 257
    sget-object v5, Lcom/google/glass/widget/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 258
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 259
    add-int/lit8 v5, p1, -0x1

    invoke-static {v0, v5}, Lcom/google/glass/widget/MosaicView;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 261
    :cond_6
    sget-object v5, Lcom/google/glass/widget/MosaicView$GroupCountType;->NONE:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1
.end method

.method protected static getEntitiesWithImages(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "maxSize"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, input:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 423
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 424
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    sget-object v3, Lcom/google/glass/widget/MosaicView;->hasImagePredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 431
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    return-object v2
.end method

.method protected static trimToSize(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "size"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 271
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 273
    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_0
    return-object p0
.end method


# virtual methods
.method public cancelImageDownloads()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Ljava/util/List;)V

    .line 417
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 418
    return-void
.end method

.method public clearImages()V
    .locals 7

    .prologue
    .line 385
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 386
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/MosaicView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 389
    .local v1, cellView:Landroid/widget/FrameLayout;
    sget v6, Lcom/google/glass/common/R$id;->tag_cell_layout_type:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 392
    .local v4, layoutId:I
    sget v6, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 393
    .local v3, imageView:Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 394
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    :cond_0
    sget v6, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 397
    .local v5, textView:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 398
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_1
    sget-object v6, Lcom/google/glass/widget/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 403
    .local v0, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    if-nez v0, :cond_2

    .line 404
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v0           #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    const/16 v6, 0x50

    invoke-direct {v0, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 405
    .restart local v0       #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    sget-object v6, Lcom/google/glass/widget/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v0           #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    .end local v1           #cellView:Landroid/widget/FrameLayout;
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v4           #layoutId:I
    .end local v5           #textView:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->removeAllViews()V

    .line 412
    return-void
.end method

.method public getMaxNumSupportedEntities(II)I
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 124
    if-le p1, p2, :cond_0

    .line 125
    const/16 v0, 0x8

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public setEntities(Ljava/util/List;II)V
    .locals 29
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, allEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    :cond_0
    sget-object v4, Lcom/google/glass/widget/MosaicView;->TAG:Ljava/lang/String;

    const-string v5, "No entities set for mosaic."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/glass/widget/MosaicView;->entitySetIndex:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/glass/widget/MosaicView;->entitySetIndex:I

    .line 156
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MosaicView;->getMaxNumSupportedEntities(II)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/glass/widget/MosaicView;->getDrawingEntities(Ljava/util/List;I)Landroid/util/Pair;

    move-result-object v23

    .line 158
    .local v23, drawEntitiesAndGroupCount:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;Lcom/google/glass/widget/MosaicView$GroupCountType;>;"
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/List;

    .line 159
    .local v24, drawParticipants:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/google/glass/widget/MosaicView$GroupCountType;

    .line 162
    .local v25, groupCountType:Lcom/google/glass/widget/MosaicView$GroupCountType;
    sget-boolean v4, Lcom/google/glass/widget/MosaicView;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 164
    :cond_3
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v28

    .line 165
    .local v28, numOfCells:I
    sget-object v4, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_4

    .line 166
    add-int/lit8 v28, v28, 0x1

    .line 171
    :cond_4
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_5

    .line 172
    sget-object v4, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 178
    .local v27, mosaic:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    :goto_1
    if-nez v27, :cond_6

    .line 179
    sget-object v4, Lcom/google/glass/widget/MosaicView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BUG: missing mosaic specification for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v27           #mosaic:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    :cond_5
    sget-object v4, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .restart local v27       #mosaic:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    goto :goto_1

    .line 183
    :cond_6
    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->columns:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MosaicView;->setColumnCount(I)V

    .line 184
    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->rows:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MosaicView;->setRowCount(I)V

    .line 186
    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->columns:I

    div-int v22, p2, v4

    .line 187
    .local v22, cellWidth:I
    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->rows:I

    div-int v20, p3, v4

    .line 190
    .local v20, cellHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/MosaicView;->clearImages()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/MosaicView;->cancelImageDownloads()V

    .line 195
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_8

    .line 196
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->cellSpecs:[Lcom/google/glass/widget/MosaicView$CellSpec;

    aget-object v21, v4, v26

    .line 197
    .local v21, cellSpec:Lcom/google/glass/widget/MosaicView$CellSpec;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/widget/MosaicView;->createLayoutParams(Lcom/google/glass/widget/MosaicView$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v11

    .line 200
    .local v11, params:Landroid/widget/GridLayout$LayoutParams;
    sget-object v4, Lcom/google/glass/widget/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_7

    .line 201
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    sub-int v7, v4, v5

    .line 202
    .local v7, remainingCount:I
    move-object/from16 v0, v27

    iget v10, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->embededRemainingCountLayoutId:I

    .line 208
    .local v10, layoutId:I
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/glass/widget/MosaicView;->entitySetIndex:I

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/Entity;

    iget v8, v11, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v9, v11, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/google/glass/widget/MosaicView;->addCell(ILcom/google/googlex/glass/common/proto/Entity;IIIILandroid/widget/GridLayout$LayoutParams;)V

    .line 195
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 204
    .end local v7           #remainingCount:I
    .end local v10           #layoutId:I
    :cond_7
    const/4 v7, -0x1

    .line 205
    .restart local v7       #remainingCount:I
    move-object/from16 v0, v21

    iget v10, v0, Lcom/google/glass/widget/MosaicView$CellSpec;->layoutId:I

    .restart local v10       #layoutId:I
    goto :goto_3

    .line 211
    .end local v7           #remainingCount:I
    .end local v10           #layoutId:I
    .end local v11           #params:Landroid/widget/GridLayout$LayoutParams;
    .end local v21           #cellSpec:Lcom/google/glass/widget/MosaicView$CellSpec;
    :cond_8
    sget-object v4, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_1

    .line 212
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->cellSpecs:[Lcom/google/glass/widget/MosaicView$CellSpec;

    add-int/lit8 v5, v28, -0x1

    aget-object v21, v4, v5

    .line 213
    .restart local v21       #cellSpec:Lcom/google/glass/widget/MosaicView$CellSpec;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/widget/MosaicView;->createLayoutParams(Lcom/google/glass/widget/MosaicView$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v11

    .line 215
    .restart local v11       #params:Landroid/widget/GridLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/glass/widget/MosaicView;->entitySetIndex:I

    const/4 v14, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    sub-int v15, v4, v5

    iget v0, v11, Landroid/widget/GridLayout$LayoutParams;->width:I

    move/from16 v16, v0

    iget v0, v11, Landroid/widget/GridLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->remainingLayoutId:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/google/glass/widget/MosaicView;->addCell(ILcom/google/googlex/glass/common/proto/Entity;IIIILandroid/widget/GridLayout$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setImageUrls(Ljava/util/List;II)V
    .locals 4
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    :cond_0
    sget-object v2, Lcom/google/glass/widget/MosaicView;->TAG:Ljava/lang/String;

    const-string v3, "No image URLs set for mosaic."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return-void

    .line 297
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    .local v0, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 300
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->addImageUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/glass/widget/MosaicView;->setEntities(Ljava/util/List;II)V

    goto :goto_0
.end method

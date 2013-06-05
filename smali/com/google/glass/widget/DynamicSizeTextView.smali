.class public Lcom/google/glass/widget/DynamicSizeTextView;
.super Lcom/google/glass/widget/TypophileTextView;
.source "DynamicSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;,
        Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;,
        Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;,
        Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;,
        Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService; = null

.field private static final LAYOUT_CACHE_SIZE:I = 0x10

.field private static final SIZING_CACHE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static layoutCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sizingCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;",
            "Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isForcedToSmallestSize:Z

.field private shouldUpdateTextSize:Z

.field private sizeTextOnBackgroundThread:Z

.field private textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

.field private textSizeTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;",
            ">;"
        }
    .end annotation
.end field

.field private textSizes:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/google/glass/util/PriorityThreadFactory;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/widget/DynamicSizeTextView;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    .line 216
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->initialize()V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->initialize()V

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/google/glass/widget/DynamicSizeTextView;->calculateTextSize(Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/widget/DynamicSizeTextView;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    return-void
.end method

.method private applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    .locals 5
    .parameter "sizingResult"

    .prologue
    const/4 v4, 0x0

    .line 510
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 514
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextSize(IF)V

    .line 517
    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textSize:F

    invoke-virtual {p0, v4, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextSize(IF)V

    .line 529
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 530
    .local v0, f:Landroid/graphics/Paint$FontMetrics;
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    neg-float v3, v3

    float-to-int v2, v3

    .line 531
    .local v2, padding:I
    invoke-virtual {p0, v4, v2, v4, v4}, Lcom/google/glass/widget/DynamicSizeTextView;->setPadding(IIII)V

    .line 534
    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->numLines:I

    invoke-virtual {p0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setMaxLines(I)V

    .line 535
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 538
    iget-object v3, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    if-eqz v3, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, originalText:Ljava/lang/String;
    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 543
    iget-object v3, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    iget v4, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;->onTextClipped(Ljava/lang/String;)V

    .line 546
    .end local v1           #originalText:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private calculateTextSize(Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 26
    .parameter "text"
    .parameter "width"
    .parameter "textViewLineSpacingMultiplier"
    .parameter "textViewLineSpacingExtra"
    .parameter "textViewIncludeFontPadding"
    .parameter "alignment"

    .prologue
    .line 426
    const/16 v24, 0x0

    .line 427
    .local v24, startIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    .line 428
    .local v14, endIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v8, v4

    .line 431
    .local v8, largestSizeThatFits:F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    if-nez v4, :cond_2

    move/from16 v16, v8

    .line 434
    .end local v8           #largestSizeThatFits:F
    .local v16, largestSizeThatFits:F
    :goto_0
    move/from16 v0, v24

    if-gt v0, v14, :cond_1

    .line 435
    add-int v4, v24, v14

    shr-int/lit8 v15, v4, 0x1

    .line 438
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v5, v4

    .line 439
    .local v5, textSizePx:F
    new-instance v3, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    move/from16 v4, p2

    move-object/from16 v6, p6

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;-><init>(IFLandroid/text/Layout$Alignment;FFZ)V

    .line 443
    .local v3, key:Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;

    move-result-object v17

    .line 446
    .local v17, layout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V

    .line 447
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v18

    .line 450
    .local v18, layoutHeight:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v4

    move/from16 v0, v18

    if-gt v0, v4, :cond_0

    .line 454
    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 457
    .end local v16           #largestSizeThatFits:F
    .restart local v8       #largestSizeThatFits:F
    add-int/lit8 v14, v15, -0x1

    :goto_1
    move/from16 v16, v8

    .line 463
    .end local v8           #largestSizeThatFits:F
    .restart local v16       #largestSizeThatFits:F
    goto :goto_0

    .line 461
    :cond_0
    add-int/lit8 v24, v15, 0x1

    move/from16 v8, v16

    .end local v16           #largestSizeThatFits:F
    .restart local v8       #largestSizeThatFits:F
    goto :goto_1

    .end local v3           #key:Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    .end local v5           #textSizePx:F
    .end local v8           #largestSizeThatFits:F
    .end local v15           #index:I
    .end local v17           #layout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    .end local v18           #layoutHeight:I
    .restart local v16       #largestSizeThatFits:F
    :cond_1
    move/from16 v8, v16

    .line 467
    .end local v16           #largestSizeThatFits:F
    .restart local v8       #largestSizeThatFits:F
    :cond_2
    new-instance v3, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    move-object v6, v3

    move/from16 v7, p2

    move-object/from16 v9, p6

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;-><init>(IFLandroid/text/Layout$Alignment;FFZ)V

    .line 469
    .restart local v3       #key:Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;

    move-result-object v17

    .line 472
    .restart local v17       #layout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V

    .line 473
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v18

    .line 478
    .restart local v18       #layoutHeight:I
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v13

    .line 479
    .local v13, allLines:I
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getBottomPadding()I

    move-result v20

    .line 480
    .local v20, pad:I
    mul-int/lit8 v4, v20, 0x2

    sub-int v4, v18, v4

    div-int v21, v4, v13

    .line 481
    .local v21, pixelsPerLine:I
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v6

    div-int v6, v6, v21

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 482
    .local v19, numVisibleLines:I
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    add-int/lit8 v6, v19, -0x1

    invoke-virtual {v4, v6}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v25

    .line 485
    .local v25, textEnd:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 488
    new-instance v22, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v8, v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;-><init>(FII)V

    .line 489
    .local v22, result:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    new-instance v23, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 491
    .local v23, sizingCacheKey:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    sget-object v4, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    return-object v22
.end method

.method private getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;
    .locals 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v9

    .line 553
    .local v9, pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 554
    .local v8, cachedLayout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    if-nez v8, :cond_0

    .line 555
    new-instance v1, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;

    invoke-direct {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;-><init>()V

    .line 556
    .local v1, textContainer:Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 557
    .local v2, paint:Landroid/text/TextPaint;
    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 558
    new-instance v0, Landroid/text/DynamicLayout;

    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    iget-object v4, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingMultiplier:F

    iget v6, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    iget-boolean v7, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewIncludeFontPadding:Z

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 566
    .local v0, layout:Landroid/text/DynamicLayout;
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 568
    .end local v0           #layout:Landroid/text/DynamicLayout;
    .end local v1           #textContainer:Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
    .end local v2           #paint:Landroid/text/TextPaint;
    :cond_0
    return-object v8
.end method

.method private getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;",
            ")",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 575
    sget-object v2, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    monitor-enter v2

    .line 576
    :try_start_0
    sget-object v1, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 577
    .local v0, pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    if-nez v0, :cond_0

    .line 578
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v0           #pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 579
    .restart local v0       #pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    sget-object v1, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_0
    monitor-exit v2

    .line 582
    return-object v0

    .line 581
    .end local v0           #pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$array;->dynamic_text_sizes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 257
    return-void
.end method

.method private reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, layout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    const/4 v4, 0x0

    .line 499
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;

    .line 500
    .local v1, textContainer:Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
    invoke-virtual {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->length()I

    move-result v0

    .line 501
    .local v0, lengthBeforeChange:I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, p2, v4, v2}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->changeText(Ljava/lang/CharSequence;II)V

    .line 504
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->length()I

    move-result v3

    invoke-static {v2, v1, v4, v0, v3}, Lcom/google/glass/util/HiddenApiHelper;->reflow(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V

    .line 506
    return-void
.end method

.method private setMaximumTextSize()V
    .locals 19

    .prologue
    .line 315
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getWidth()I

    move-result v3

    .line 319
    .local v3, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 322
    .local v4, text:Ljava/lang/CharSequence;
    invoke-static/range {p0 .. p0}, Lcom/google/glass/util/HiddenApiHelper;->getTextViewLineSpacingMultiplier(Landroid/widget/TextView;)F

    move-result v5

    .line 324
    .local v5, textViewLineSpacingMultiplier:F
    invoke-static/range {p0 .. p0}, Lcom/google/glass/util/HiddenApiHelper;->getTextViewLineSpacingExtra(Landroid/widget/TextView;)F

    move-result v6

    .line 326
    .local v6, textViewLineSpacingExtra:F
    invoke-static/range {p0 .. p0}, Lcom/google/glass/util/HiddenApiHelper;->getTextViewIncludeFontPadding(Landroid/widget/TextView;)Z

    move-result v7

    .line 330
    .local v7, textViewIncludeFontPadding:Z
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 334
    .local v8, alignment:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    .line 340
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    new-instance v18, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v3, v2, v9}, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 345
    .local v18, sizingCacheKey:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    sget-object v2, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    .line 346
    .local v16, cached:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    if-eqz v16, :cond_2

    .line 347
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    .line 371
    .end local v16           #cached:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .end local v18           #sizingCacheKey:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 372
    return-void

    .line 352
    .restart local v16       #cached:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .restart local v18       #sizingCacheKey:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    if-eqz v2, :cond_3

    .line 353
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    move-object/from16 v2, p0

    .line 354
    invoke-direct/range {v2 .. v8}, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread(ILjava/lang/CharSequence;FFZLandroid/text/Layout$Alignment;)V

    goto :goto_0

    .line 360
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    move-object/from16 v9, p0

    move-object v10, v4

    move v11, v3

    move v12, v5

    move v13, v6

    move v14, v7

    move-object v15, v8

    .line 361
    invoke-direct/range {v9 .. v15}, Lcom/google/glass/widget/DynamicSizeTextView;->calculateTextSize(Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v17

    .line 364
    .local v17, result:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    goto :goto_0
.end method

.method private sizeTextOnBackgroundThread(ILjava/lang/CharSequence;FFZLandroid/text/Layout$Alignment;)V
    .locals 8
    .parameter "width"
    .parameter "text"
    .parameter "textViewLineSpacingMultiplier"
    .parameter "textViewLineSpacingExtra"
    .parameter "textViewIncludeFontPadding"
    .parameter "alignment"

    .prologue
    .line 380
    new-instance v0, Lcom/google/glass/widget/DynamicSizeTextView$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/DynamicSizeTextView$1;-><init>(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)V

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    .line 417
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    sget-object v1, Lcom/google/glass/widget/DynamicSizeTextView;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 418
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/google/glass/widget/TypophileTextView;->onDetachedFromWindow()V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 268
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    .line 272
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 304
    invoke-super/range {p0 .. p5}, Lcom/google/glass/widget/TypophileTextView;->onLayout(ZIIII)V

    .line 307
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    .line 309
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->setMaximumTextSize()V

    .line 311
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/glass/widget/TypophileTextView;->onSizeChanged(IIII)V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    .line 299
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->requestLayout()V

    .line 300
    return-void
.end method

.method public setForcedToSmallestSize(Z)V
    .locals 0
    .parameter "isForcedToSmallestSize"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    .line 277
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    .line 290
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->requestLayout()V

    .line 291
    return-void
.end method

.method public setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V
    .locals 0
    .parameter "textClipListener"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    .line 282
    return-void
.end method

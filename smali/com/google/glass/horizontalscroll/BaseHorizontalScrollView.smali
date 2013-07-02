.class public abstract Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.super Landroid/widget/AdapterView;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;,
        Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Lcom/google/glass/input/InputListener;"
    }
.end annotation


# static fields
.field private static final MAX_CARD_SPACING_PX:I = 0xa

.field private static final MIN_CARD_SPACING_PX:I = 0x2

.field private static final NUM_VIEWS_TO_LOAD:I = 0x5

.field private static final SCREEN_WIDTH:I = 0x280

.field private static final TAG:Ljava/lang/String; = null

.field private static final VIEW_INDEX_CARD:I = 0x0

.field private static final VIEW_INDEX_SHEEN:I = 0x1


# instance fields
.field private adapter:Landroid/widget/Adapter;

.field private final cardSheenCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private currentScale:F

.field private currentTranslation:I

.field private datasetObserver:Landroid/database/DataSetObserver;

.field private final focusSoundRunnable:Ljava/lang/Runnable;

.field private final frameLayoutCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private isActivated:Z

.field private final itemScroller:Lcom/google/glass/input/ItemScroller;

.field private final loadedPositions:Landroid/util/SparseBooleanArray;

.field private final positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

.field private final rebindViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private scrollVelocity:F

.field private final scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

.field private scrollerPosition:F

.field private scrollerPositionUpdateTime:D

.field private selectedPosition:I

.field private selectedViewIndex:I

.field private final sheenDrawable:Landroid/graphics/drawable/Drawable;

.field private final shouldShowCardSheen:Z

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private viewUpdatePending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "shouldShowCardSheen"

    .prologue
    .line 262
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    new-instance v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;-><init>(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;)V

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    .line 176
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->rebindViews:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    .line 198
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    .line 212
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    .line 231
    new-instance v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$1;-><init>(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->datasetObserver:Landroid/database/DataSetObserver;

    .line 244
    new-instance v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;-><init>(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->focusSoundRunnable:Ljava/lang/Runnable;

    .line 263
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 264
    iput-boolean p4, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->shouldShowCardSheen:Z

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->card_sheen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->sheenDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    new-instance v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$3;

    invoke-direct {v0, p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$3;-><init>(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    .line 405
    new-instance v0, Lcom/google/glass/input/ItemScroller;

    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/input/ItemScroller;-><init>(Landroid/content/Context;Lcom/google/glass/input/ItemScroller$Scrollable;)V

    iput-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    .line 406
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "shouldShowCardSheen"

    .prologue
    .line 257
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "shouldShowCardSheen"

    .prologue
    .line 252
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 253
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->internalSetSelectedPosition(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->updateViewsInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentTranslation:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    return v0
.end method

.method static synthetic access$1500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;IF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onUnsettledInternal()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->hasData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    return v0
.end method

.method private addChildView(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 1249
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1250
    invoke-virtual {p0, v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v4

    .line 1251
    .local v4, view:Landroid/view/View;
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1252
    .local v1, existing:I
    if-ne p1, v1, :cond_1

    .line 1282
    .end local v1           #existing:I
    :cond_0
    :goto_1
    return-void

    .line 1249
    .restart local v1       #existing:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1260
    .end local v1           #existing:I
    .end local v4           #view:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_4

    .line 1261
    invoke-virtual {p0, v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v4

    .line 1262
    .restart local v4       #view:Landroid/view/View;
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1263
    .restart local v1       #existing:I
    if-le v1, p1, :cond_3

    .line 1266
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->loadView(I)Landroid/view/View;

    move-result-object v4

    .line 1267
    if-eqz v4, :cond_0

    .line 1268
    invoke-direct {p0, v2, v4}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->constructFrame(ILandroid/view/View;)V

    goto :goto_1

    .line 1260
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1277
    .end local v1           #existing:I
    .end local v4           #view:Landroid/view/View;
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->loadView(I)Landroid/view/View;

    move-result-object v4

    .line 1278
    .restart local v4       #view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1279
    const/4 v0, -0x1

    .line 1280
    .local v0, endOfList:I
    const/4 v5, -0x1

    invoke-direct {p0, v5, v4}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->constructFrame(ILandroid/view/View;)V

    goto :goto_1
.end method

.method private calculateCardSpacingPx()I
    .locals 3

    .prologue
    .line 1036
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getZoomOutFactor()F

    move-result v0

    .line 1037
    .local v0, howFarZoomedOut:F
    const/high16 v1, 0x4000

    const/high16 v2, 0x4120

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private constructFrame(ILandroid/view/View;)V
    .locals 4
    .parameter "index"
    .parameter "card"

    .prologue
    .line 1286
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->createFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1289
    .local v0, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1292
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->createCardSheen()Landroid/widget/ImageView;

    move-result-object v1

    .line 1293
    .local v1, sheen:Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1294
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1297
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1300
    invoke-static {}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1303
    invoke-direct {p0, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/CardStateManager;->onLoad()V

    .line 1304
    return-void
.end method

.method private createCardSheen()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 1317
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1324
    .local v0, sheen:Landroid/widget/ImageView;
    :goto_0
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->sheenDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1325
    return-object v0

    .line 1320
    .end local v0           #sheen:Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    iget-object v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #sheen:Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private createFrame()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 1308
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1311
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method private getCardSheen(I)Landroid/widget/ImageView;
    .locals 2
    .parameter "index"

    .prologue
    .line 1429
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private static getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1433
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getItemCount()I
    .locals 1

    .prologue
    .line 531
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 534
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method private getNumViewsToLoadInternal()I
    .locals 2

    .prologue
    .line 1438
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getNumViewsToLoad()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;
    .locals 1
    .parameter "view"

    .prologue
    .line 1419
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    sget v0, Lcom/google/glass/common/R$id;->tag_card_state_manager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/horizontalscroll/CardStateManager;

    return-object v0
.end method

.method private hasData()Z
    .locals 1

    .prologue
    .line 551
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internalSetSelectedPosition(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 849
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    if-eq p1, v0, :cond_1

    .line 851
    iput p1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    .line 854
    if-eqz p2, :cond_0

    .line 855
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->focusSoundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 859
    :cond_0
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    invoke-virtual {p0, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onFocused(I)V

    .line 862
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->onFocused(I)V

    .line 866
    :cond_1
    return-void
.end method

.method private loadView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 1370
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    .line 1371
    .local v0, view:Landroid/view/View;
    if-ltz p1, :cond_2

    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1372
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1373
    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1377
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returned View already has a parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1382
    :cond_0
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1383
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recycler must be set, position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1387
    :cond_1
    sget v1, Lcom/google/glass/common/R$id;->tag_card_state_manager:I

    new-instance v2, Lcom/google/glass/horizontalscroll/CardStateManager;

    invoke-direct {v2, v0}, Lcom/google/glass/horizontalscroll/CardStateManager;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1390
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1392
    :cond_2
    return-object v0
.end method

.method private onSettledInternal()V
    .locals 2

    .prologue
    .line 768
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/CardStateManager;->onSettled()V

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSettled()V

    .line 776
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->resetScrollVelocity()V

    .line 779
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->onSettled(I)V

    .line 782
    :cond_1
    return-void
.end method

.method private onUnsettledInternal()V
    .locals 2

    .prologue
    .line 796
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/CardStateManager;->onUnsettled()V

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onUnsettled()V

    .line 804
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->onUnsettled(I)V

    .line 807
    :cond_1
    return-void
.end method

.method private removeChildView(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 1330
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    if-ne p1, v3, :cond_1

    .line 1333
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/CardStateManager;->onUnfocus()V

    .line 1334
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    .line 1344
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v0

    .line 1345
    .local v0, card:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCardSheen(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 1346
    .local v2, sheen:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1347
    .local v1, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1348
    invoke-virtual {p0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->removeViewInLayout(Landroid/view/View;)V

    .line 1351
    invoke-direct {p0, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->unloadView(Landroid/view/View;)V

    .line 1354
    sget v3, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_card_sheen:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1357
    iget-object v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    iget-object v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    return-void

    .line 1336
    .end local v0           #card:Landroid/view/View;
    .end local v1           #frame:Landroid/widget/FrameLayout;
    .end local v2           #sheen:Landroid/widget/ImageView;
    :cond_1
    iget v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    if-ge p1, v3, :cond_0

    .line 1340
    iget v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    goto :goto_0
.end method

.method private resetScrollVelocity()V
    .locals 2

    .prologue
    .line 940
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    .line 941
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D

    .line 942
    return-void
.end method

.method private setTranslationAndScale(IF)V
    .locals 4
    .parameter "translation"
    .parameter "scale"

    .prologue
    .line 747
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iput p1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentTranslation:I

    .line 748
    iput p2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    .line 751
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->invalidate()V

    .line 752
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->calculateCardSpacingPx()I

    move-result v0

    .line 753
    .local v0, cardSpacingPx:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 754
    invoke-virtual {p0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 755
    .local v3, view:Landroid/view/View;
    invoke-direct {p0, v3, v1, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->translateAndScaleChild(Landroid/view/View;II)V

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private translateAndScaleChild(Landroid/view/View;II)V
    .locals 11
    .parameter "view"
    .parameter "index"
    .parameter "cardSpacingPx"

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const/high16 v8, 0x4420

    .line 998
    iget v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    mul-float v1, v8, v5

    .line 999
    .local v1, cardWidthPx:F
    int-to-float v5, p3

    add-float/2addr v5, v1

    iget v6, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    iget v7, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    mul-float v2, v5, v6

    .line 1001
    .local v2, periodicOffset:F
    iget v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    int-to-float v6, p3

    add-float/2addr v6, v1

    mul-float/2addr v5, v6

    sub-float v3, v5, v2

    .line 1004
    .local v3, relLeft:F
    const/high16 v5, 0x43a0

    iget v6, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    sub-float v6, v9, v6

    mul-float/2addr v5, v6

    add-float v0, v3, v5

    .line 1005
    .local v0, absLeft:F
    cmpl-float v5, v0, v8

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    mul-float/2addr v5, v8

    neg-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 1006
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    :goto_0
    iget-boolean v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->shouldShowCardSheen:Z

    if-eqz v5, :cond_1

    .line 1021
    invoke-direct {p0, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCardSheen(I)Landroid/widget/ImageView;

    move-result-object v4

    .line 1022
    .local v4, sheen:Landroid/widget/ImageView;
    iget v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_3

    .line 1023
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1024
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getZoomOutFactor()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1029
    .end local v4           #sheen:Landroid/widget/ImageView;
    :cond_1
    :goto_1
    return-void

    .line 1009
    :cond_2
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1015
    iget v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1016
    iget v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 1026
    .restart local v4       #sheen:Landroid/widget/ImageView;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private unloadView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v4, -0x1

    .line 1402
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/CardStateManager;->onUnload()V

    .line 1403
    sget v2, Lcom/google/glass/common/R$id;->tag_card_state_manager:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1406
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1407
    .local v0, position:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 1409
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1412
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/horizontalscroll/ViewRecycler;

    .line 1414
    .local v1, viewRecycler:Lcom/google/glass/horizontalscroll/ViewRecycler;
    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/ViewRecycler;->recycleView(Landroid/view/View;)V

    .line 1415
    return-void

    .line 1408
    .end local v1           #viewRecycler:Lcom/google/glass/horizontalscroll/ViewRecycler;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateViewsInternal(Z)Z
    .locals 15
    .parameter "hasDataChanged"

    .prologue
    .line 1085
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I

    move-result v5

    .line 1089
    .local v5, itemCount:I
    iget-boolean v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v13, :cond_0

    .line 1090
    iget-boolean v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->viewUpdatePending:Z

    or-int v13, v13, p1

    iput-boolean v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->viewUpdatePending:Z

    .line 1091
    const/4 v13, 0x0

    .line 1237
    :goto_0
    return v13

    .line 1094
    :cond_0
    if-eqz p1, :cond_8

    .line 1098
    const/4 v2, 0x0

    .line 1099
    .local v2, foundCurrentItem:Z
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_1

    .line 1100
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    .line 1103
    .local v11, selectedItem:Ljava/lang/Object;,"TT;"
    if-eqz v11, :cond_1

    .line 1104
    invoke-virtual {p0, v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->findItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 1105
    .local v9, position:I
    const/4 v13, -0x1

    if-eq v9, v13, :cond_3

    const/4 v2, 0x1

    .line 1106
    :goto_1
    if-eqz v2, :cond_1

    .line 1109
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v13

    sget v14, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v13, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1111
    .local v0, currentPosition:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v9, v13, :cond_1

    .line 1114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int v1, v9, v13

    .line 1115
    .local v1, delta:I
    const/4 v13, 0x0

    invoke-direct {p0, v9, v13}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->internalSetSelectedPosition(IZ)V

    .line 1116
    iget v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    int-to-float v14, v1

    add-float/2addr v13, v14

    iput v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    .line 1118
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->resetScrollVelocity()V

    .line 1126
    .end local v0           #currentPosition:Ljava/lang/Integer;
    .end local v1           #delta:I
    .end local v9           #position:I
    .end local v11           #selectedItem:Ljava/lang/Object;,"TT;"
    :cond_1
    if-nez v2, :cond_2

    .line 1127
    iget v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    if-lt v13, v5, :cond_2

    .line 1128
    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1129
    .restart local v9       #position:I
    iget v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    sub-int v1, v9, v13

    .line 1130
    .restart local v1       #delta:I
    const/4 v13, 0x0

    invoke-direct {p0, v9, v13}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->internalSetSelectedPosition(IZ)V

    .line 1131
    iget v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    int-to-float v14, v1

    add-float/2addr v13, v14

    iput v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    .line 1133
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->resetScrollVelocity()V

    .line 1139
    .end local v1           #delta:I
    .end local v9           #position:I
    :cond_2
    iget-object v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->rebindViews:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    invoke-static {v13}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 1140
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_6

    .line 1141
    invoke-virtual {p0, v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v12

    .line 1142
    .local v12, view:Landroid/view/View;
    sget v13, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v12, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 1143
    .local v4, item:Ljava/lang/Object;,"TT;"
    if-eqz v4, :cond_5

    .line 1144
    invoke-virtual {p0, v4}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->findItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 1145
    .restart local v9       #position:I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_4

    .line 1148
    invoke-direct {p0, v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->removeChildView(I)V

    .line 1140
    .end local v9           #position:I
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1105
    .end local v3           #i:I
    .end local v4           #item:Ljava/lang/Object;,"TT;"
    .end local v12           #view:Landroid/view/View;
    .restart local v9       #position:I
    .restart local v11       #selectedItem:Ljava/lang/Object;,"TT;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1152
    .end local v11           #selectedItem:Ljava/lang/Object;,"TT;"
    .restart local v3       #i:I
    .restart local v4       #item:Ljava/lang/Object;,"TT;"
    .restart local v12       #view:Landroid/view/View;
    :cond_4
    sget v13, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1157
    iget-object v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->rebindViews:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1163
    .end local v9           #position:I
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->removeChildView(I)V

    goto :goto_3

    .line 1168
    .end local v4           #item:Ljava/lang/Object;,"TT;"
    .end local v12           #view:Landroid/view/View;
    :cond_6
    iget-object v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->rebindViews:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    .line 1169
    const/4 v3, 0x0

    iget-object v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->rebindViews:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    .local v6, n:I
    :goto_4
    if-ge v3, v6, :cond_7

    .line 1170
    iget-object v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->rebindViews:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1171
    .restart local v12       #view:Landroid/view/View;
    sget v13, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v12, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1172
    .restart local v9       #position:I
    invoke-virtual {p0, v9, v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->rebindView(ILandroid/view/View;)V

    .line 1169
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1174
    .end local v9           #position:I
    .end local v12           #view:Landroid/view/View;
    :cond_7
    iget-object v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->rebindViews:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 1179
    .end local v2           #foundCurrentItem:Z
    .end local v3           #i:I
    .end local v6           #n:I
    :cond_8
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v10

    .line 1182
    .local v10, previousSelectedView:Landroid/view/View;
    iget-object v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1183
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->hasData()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1184
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getNumViewsToLoadInternal()I

    move-result v8

    .line 1185
    .local v8, numViewsToLoad:I
    iget v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    div-int/lit8 v14, v8, 0x2

    sub-int v9, v13, v14

    .line 1186
    .restart local v9       #position:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v8, :cond_9

    .line 1187
    iget-object v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    const/4 v14, 0x1

    invoke-virtual {v13, v9, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1188
    invoke-direct {p0, v9}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->addChildView(I)V

    .line 1189
    add-int/lit8 v9, v9, 0x1

    .line 1186
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1194
    .end local v3           #i:I
    .end local v8           #numViewsToLoad:I
    .end local v9           #position:I
    :cond_9
    const/4 v13, -0x1

    iput v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    .line 1195
    const/4 v3, 0x0

    .restart local v3       #i:I
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v6

    .restart local v6       #n:I
    :goto_6
    if-ge v3, v6, :cond_a

    .line 1196
    invoke-virtual {p0, v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v13

    sget v14, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v13, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1197
    .local v9, position:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget v14, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    if-ne v13, v14, :cond_10

    .line 1198
    iput v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    .line 1204
    .end local v9           #position:Ljava/lang/Integer;
    :cond_a
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v5, :cond_b

    iget v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_11

    :cond_b
    const/4 v13, 0x1

    :goto_7
    invoke-static {v13}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 1209
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v7

    .line 1210
    .local v7, nextSelectedView:Landroid/view/View;
    if-eq v7, v10, :cond_d

    .line 1211
    if-eqz v10, :cond_c

    .line 1212
    invoke-direct {p0, v10}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/glass/horizontalscroll/CardStateManager;->onUnfocus()V

    .line 1214
    :cond_c
    if-eqz v7, :cond_d

    .line 1215
    invoke-direct {p0, v7}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/glass/horizontalscroll/CardStateManager;->onFocus()V

    .line 1221
    :cond_d
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    :goto_8
    if-ltz v3, :cond_13

    .line 1222
    invoke-virtual {p0, v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v12

    .line 1223
    .restart local v12       #view:Landroid/view/View;
    sget v13, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v12, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1224
    .restart local v9       #position:Ljava/lang/Integer;
    iget-object v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-nez v13, :cond_f

    .line 1227
    iget v13, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    if-ne v3, v13, :cond_e

    if-nez v5, :cond_12

    :cond_e
    const/4 v13, 0x1

    :goto_9
    invoke-static {v13}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 1228
    invoke-direct {p0, v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->removeChildView(I)V

    .line 1221
    :cond_f
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 1195
    .end local v7           #nextSelectedView:Landroid/view/View;
    .end local v12           #view:Landroid/view/View;
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1204
    .end local v9           #position:Ljava/lang/Integer;
    :cond_11
    const/4 v13, 0x0

    goto :goto_7

    .line 1227
    .restart local v7       #nextSelectedView:Landroid/view/View;
    .restart local v9       #position:Ljava/lang/Integer;
    .restart local v12       #view:Landroid/view/View;
    :cond_12
    const/4 v13, 0x0

    goto :goto_9

    .line 1231
    .end local v9           #position:Ljava/lang/Integer;
    .end local v12           #view:Landroid/view/View;
    :cond_13
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v13

    if-ne v13, v7, :cond_14

    const/4 v13, 0x1

    :goto_a
    invoke-static {v13}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 1234
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->requestLayout()V

    .line 1237
    if-eq v10, v7, :cond_15

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1231
    :cond_14
    const/4 v13, 0x0

    goto :goto_a

    .line 1237
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public final activate()V
    .locals 6

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 438
    sget-object v2, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v3, "Activating."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 440
    iget-boolean v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    invoke-static {v2}, Lcom/google/glass/util/Assert;->assertFalse(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onPreActivate()V

    .line 446
    iput-boolean v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    .line 449
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 450
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 453
    invoke-virtual {p0, v4}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 478
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->viewUpdatePending:Z

    .line 479
    return-void

    .line 454
    :cond_1
    if-lez v0, :cond_0

    .line 457
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 458
    invoke-virtual {p0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/CardStateManager;->onLoad()V

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 462
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/CardStateManager;->onFocus()V

    .line 465
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 466
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V

    .line 470
    :cond_3
    iget-boolean v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->viewUpdatePending:Z

    if-eqz v2, :cond_0

    .line 473
    invoke-virtual {p0, v5}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    goto :goto_0
.end method

.method public final addPositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V
    .locals 1
    .parameter "positionListener"

    .prologue
    .line 420
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    invoke-virtual {v0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->addPositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 421
    return-void
.end method

.method public final deactivate()V
    .locals 5

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v4, 0x0

    .line 491
    sget-object v2, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v3, "Deactivating."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 493
    iget-boolean v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    invoke-static {v2}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 496
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onPreDeactivate()V

    .line 499
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 500
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 504
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v2, v4}, Lcom/google/glass/input/ItemScroller;->snapToNearest(Z)Z

    .line 507
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/CardStateManager;->onUnfocus()V

    .line 510
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 511
    invoke-virtual {p0, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/CardStateManager;->onUnload()V

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v1           #i:I
    :cond_0
    iput-boolean v4, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    .line 517
    return-void
.end method

.method public abstract findIdPosition(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)I"
        }
    .end annotation
.end method

.method public abstract findItemPosition(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 526
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getAnticipatedSettlePosition()I
    .locals 4

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v3, 0x0

    .line 946
    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 947
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    .line 952
    :goto_0
    return v0

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    iget v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    invoke-virtual {v1, v2}, Lcom/google/glass/input/ItemScroller;->getAnticipatedSettlePosition(F)I

    move-result v0

    .line 950
    .local v0, position:I
    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    if-gt v0, v1, :cond_3

    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getCard(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 1424
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHomePosition()I
.end method

.method public final getItemForChildAt(I)Ljava/lang/Object;
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v0

    .line 925
    .local v0, card:Landroid/view/View;
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getItemViewForChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 918
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getNumViewsToLoad()I
    .locals 1

    .prologue
    .line 1443
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x5

    return v0
.end method

.method public final getScrollPosition()F
    .locals 1

    .prologue
    .line 930
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    return v0
.end method

.method public final getScrollVelocity()F
    .locals 1

    .prologue
    .line 935
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    return v0
.end method

.method public getScrollable()Lcom/google/glass/input/ItemScroller$Scrollable;
    .locals 1

    .prologue
    .line 410
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    return-object v0
.end method

.method public final getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 958
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 959
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 960
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 962
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedItemParent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 974
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 897
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    return v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    .line 904
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-object v0

    .line 909
    :cond_1
    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    if-ltz v1, :cond_0

    .line 913
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    invoke-virtual {p0, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getViewForPosition(I)Landroid/view/View;
.end method

.method public getZoomOutFactor()F
    .locals 3

    .prologue
    .line 1047
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    const v2, 0x3ea8f5c3

    sub-float/2addr v1, v2

    const v2, 0x3f2b851e

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getZoomScale()F
    .locals 1

    .prologue
    .line 1042
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    return v0
.end method

.method public final isActivated()Z
    .locals 1

    .prologue
    .line 433
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-boolean v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    return v0
.end method

.method public isSettled()Z
    .locals 2

    .prologue
    .line 761
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 708
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfirm()Z
    .locals 7

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 620
    iget-boolean v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v5, :cond_1

    .line 621
    sget-object v4, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v5, "onConfirm while deactivated."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    :goto_0
    return v3

    .line 626
    :cond_1
    iget-object v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v5}, Lcom/google/glass/input/ItemScroller;->onConfirm()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 627
    goto :goto_0

    .line 635
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/horizontalscroll/Card;

    .line 639
    .local v2, selectedView:Lcom/google/glass/horizontalscroll/Card;
    invoke-interface {v2}, Lcom/google/glass/horizontalscroll/Card;->getBundleEntryPoint()Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v0

    .line 640
    .local v0, bundleEntryPoint:Lcom/google/glass/timeline/TimelineItemId;
    if-eqz v0, :cond_3

    .line 641
    iget-object v5, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v6, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v5, v6}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 644
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v3, v3}, Lcom/google/glass/timeline/TimelineHelper;->goToBundle(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZZ)V

    move v3, v4

    .line 646
    goto :goto_0

    .line 653
    :cond_3
    invoke-interface {v2}, Lcom/google/glass/horizontalscroll/Card;->getReadMoreEntryPoint()Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v1

    .line 654
    .local v1, readMoreEntryPoint:Lcom/google/glass/timeline/TimelineItemId;
    if-eqz v1, :cond_4

    .line 655
    iget-object v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 658
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/glass/timeline/TimelineHelper;->readMoreText(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    move v3, v4

    .line 659
    goto :goto_0

    .line 662
    :cond_4
    invoke-interface {v2}, Lcom/google/glass/horizontalscroll/Card;->onConfirm()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 663
    invoke-interface {v2}, Lcom/google/glass/horizontalscroll/Card;->shouldSuppressSingleTapSound()Z

    move-result v3

    if-nez v3, :cond_5

    .line 668
    iget-object v3, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    :cond_5
    move v3, v4

    .line 670
    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 713
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final onDoubleTap()Z
    .locals 4

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v1, 0x0

    .line 685
    iget-boolean v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v2, :cond_1

    .line 686
    sget-object v2, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v3, "onDoubleTap while deactivated."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    :goto_0
    return v1

    .line 690
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/horizontalscroll/Card;

    .line 692
    .local v0, selectedView:Lcom/google/glass/horizontalscroll/Card;
    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onDoubleTap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 694
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final onFingerCountChanged(IZ)Z
    .locals 3
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 597
    iget-boolean v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v2, :cond_1

    .line 598
    sget-object v1, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v2, "onFingerCountChanged while deactivated."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v2, p1, p2}, Lcom/google/glass/input/ItemScroller;->onFingerCountChanged(IZ)Z

    .line 605
    if-eqz p2, :cond_0

    if-ne p1, v1, :cond_0

    .line 606
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->resetScrollVelocity()V

    move v0, v1

    .line 607
    goto :goto_0
.end method

.method protected onFocused(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 870
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/high16 v7, 0x4000

    const/4 v8, 0x0

    .line 979
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 981
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 982
    .local v5, widthMeasureSpec:I
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 985
    .local v1, heightMeasureSpec:I
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->calculateCardSpacingPx()I

    move-result v0

    .line 986
    .local v0, cardSpacingPx:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 987
    invoke-virtual {p0, v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 988
    .local v4, view:Landroid/view/View;
    invoke-direct {p0, v4, v2, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->translateAndScaleChild(Landroid/view/View;II)V

    .line 991
    invoke-virtual {v4, v5, v1}, Landroid/view/View;->measure(II)V

    .line 992
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 986
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 994
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onPreActivate()V
    .locals 0

    .prologue
    .line 484
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    return-void
.end method

.method protected onPreDeactivate()V
    .locals 0

    .prologue
    .line 522
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    return-void
.end method

.method public final onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 560
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-boolean v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v0, :cond_0

    .line 561
    sget-object v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareSwipe while deactivated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/input/ItemScroller;->onPrepareSwipe(IFFFFII)Z

    .line 567
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onSettled()V
    .locals 0

    .prologue
    .line 786
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    return-void
.end method

.method public final onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 578
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-boolean v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v0, :cond_0

    .line 579
    sget-object v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v1, "onSwipe while deactivated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/ItemScroller;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSwipeCanceled(I)Z
    .locals 1
    .parameter "fingerCount"

    .prologue
    .line 718
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onUnsettled()V
    .locals 0

    .prologue
    .line 811
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    return-void
.end method

.method public onVerticalHeadScroll(FF)Z
    .locals 1
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 703
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract rebindView(ILandroid/view/View;)V
.end method

.method public final removePositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V
    .locals 1
    .parameter "positionListener"

    .prologue
    .line 427
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    invoke-virtual {v0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->removePositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 428
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 540
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->datasetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 543
    :cond_0
    iput-object p1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    .line 544
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->datasetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 547
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 548
    return-void
.end method

.method public final setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 815
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v0, 0x0

    .line 816
    .local v0, animate:Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->setSelection(IZ)V

    .line 817
    return-void
.end method

.method public final setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v2, 0x0

    .line 826
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->hasData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 830
    :cond_2
    if-nez p2, :cond_0

    .line 831
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    invoke-direct {p0, v2, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V

    goto :goto_0

    .line 836
    :cond_3
    int-to-float v0, p1

    iget v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 839
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/ItemScroller;->setItem(I)V

    .line 842
    :cond_4
    if-nez p2, :cond_0

    .line 843
    iget v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    invoke-direct {p0, v2, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V

    goto :goto_0
.end method

.method public final setSelection(Ljava/lang/Object;Z)Z
    .locals 5
    .parameter
    .parameter "animate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    .local p1, id:Ljava/lang/Object;,"TI;"
    const/4 v1, 0x0

    .line 881
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 892
    :cond_0
    :goto_0
    return v1

    .line 886
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->findIdPosition(Ljava/lang/Object;)I

    move-result v0

    .line 887
    .local v0, position:I
    sget-object v2, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Searched for ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; result position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 889
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->setSelection(IZ)V

    .line 890
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final shouldSuppressSingleTapSound()Z
    .locals 3

    .prologue
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    const/4 v1, 0x0

    .line 730
    iget-boolean v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v2, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v1

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/horizontalscroll/Card;

    .line 736
    .local v0, selectedView:Lcom/google/glass/horizontalscroll/Card;
    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->shouldSuppressSingleTapSound()Z

    move-result v1

    goto :goto_0
.end method

.method public final updateViews(Z)V
    .locals 2
    .parameter "hasDataChanged"

    .prologue
    .line 1061
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<TI;TT;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->updateViewsInternal(Z)Z

    move-result v0

    .line 1062
    .local v0, changedViews:Z
    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1066
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V

    .line 1069
    :cond_0
    return-void
.end method

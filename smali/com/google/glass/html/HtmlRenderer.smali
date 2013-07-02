.class public Lcom/google/glass/html/HtmlRenderer;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;,
        Lcom/google/glass/html/HtmlRenderer$Pool;,
        Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;,
        Lcom/google/glass/html/HtmlRenderer$OnRenderListener;
    }
.end annotation


# static fields
.field private static final CSS_URL_ATTACHMENT:Ljava/util/regex/Pattern; = null

.field static final FORCE_COMPILED_CSS:Z = false
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final GLASS_CSS_PATH:Ljava/lang/String; = "stylesheets/base_style.css"

.field private static final INITIAL_POOL_SIZE:I = 0x5

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final SRC_ATTACHMENT:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;


# instance fields
.field private autoSizerFinished:Z

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;

.field private final height:I

.field private isAllocated:Z

.field private itemId:Ljava/lang/String;

.field private numPages:I

.field private onlyLoadFirstPage:Z

.field private pageBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

.field private pageListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/html/HtmlRenderer$OnRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceLoadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;

.field private webviewHasRendered:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/html/HtmlRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    .line 61
    const-string v0, "src=[\'\"](attachment:\\d+)[\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->SRC_ATTACHMENT:Ljava/util/regex/Pattern;

    .line 65
    const-string v0, "url\\([\'\"]?(attachment:\\d+)[\'\"]?\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->CSS_URL_ATTACHMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 5
    .parameter "context"
    .parameter "bitmapFactory"

    .prologue
    const/4 v3, 0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    .line 195
    iput v3, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    .line 200
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    .line 212
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageBitmaps:Landroid/util/SparseArray;

    .line 218
    iput-boolean v3, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    .line 225
    new-instance v1, Lcom/google/glass/html/Timer;

    invoke-direct {v1}, Lcom/google/glass/html/Timer;-><init>()V

    .line 226
    .local v1, timer:Lcom/google/glass/html/Timer;
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/google/glass/html/HtmlRenderer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 230
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    .line 231
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    .line 233
    invoke-static {p1}, Lcom/google/glass/html/HtmlRenderer;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    .line 234
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    const-string v4, "GLASS"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$1;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$1;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 245
    sget-object v2, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    const-string v3, "Created HtmlRenderer"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/html/HtmlRenderer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/html/HtmlRenderer;->setIsAllocated(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/html/HtmlRenderer;->doLayout(Landroid/webkit/WebView;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/glass/html/HtmlRenderer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->webviewHasRendered:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/html/HtmlRenderer;->destroy()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/glass/html/HtmlRenderer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/glass/html/HtmlRenderer;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    return v0
.end method

.method static createForTesting(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)Lcom/google/glass/html/HtmlRenderer;
    .locals 1
    .parameter "context"
    .parameter "bitmapFactory"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 149
    new-instance v0, Lcom/google/glass/html/HtmlRenderer;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    return-object v0
.end method

.method private static createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 462
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 463
    .local v1, webView:Landroid/webkit/WebView;
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 464
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 465
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 467
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 468
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 469
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 470
    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 471
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 472
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 475
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 479
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 483
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 484
    .local v2, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 486
    return-object v1
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 284
    return-void
.end method

.method private doLayout(Landroid/webkit/WebView;II)V
    .locals 4
    .parameter "webView"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 490
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 491
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 492
    .local v1, widthMeasureSpec:I
    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 493
    .local v0, heightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->measure(II)V

    .line 494
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/webkit/WebView;->layout(IIII)V

    .line 495
    return-void
.end method

.method private getCssUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 443
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stylesheets/base_style.css"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 444
    .local v0, downloadedCssFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "base_style.css"

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 1
    .parameter "context"
    .parameter "bitmapFactory"

    .prologue
    .line 133
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 134
    new-instance v0, Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/html/HtmlRenderer$Pool;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    .line 135
    return-void
.end method

.method public static obtain()Lcom/google/glass/html/HtmlRenderer;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 143
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-virtual {v0}, Lcom/google/glass/html/HtmlRenderer$Pool;->obtainRenderer()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v0

    return-object v0
.end method

.method private render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    .locals 10
    .parameter "item"
    .parameter "footerMarginRight"
    .parameter "loadUncachedResources"
    .parameter "onlyLoadFirstPage"
    .parameter "listener"

    .prologue
    .line 342
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 343
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called render() on an unallocated renderer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    new-instance v8, Lcom/google/glass/html/Timer;

    invoke-direct {v8}, Lcom/google/glass/html/Timer;-><init>()V

    .line 348
    .local v8, timer:Lcom/google/glass/html/Timer;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    .line 349
    iput-object p5, p0, Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    .line 350
    iput-boolean p4, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z

    .line 354
    iget-object v9, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v4

    iget-object v6, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    new-instance v7, Lcom/google/glass/html/HtmlRenderer$2;

    invoke-direct {v7, p0, p1, p2, p4}, Lcom/google/glass/html/HtmlRenderer$2;-><init>(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineItem;IZ)V

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/html/ResourceLoadingWebViewClient;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 371
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/glass/html/HtmlRenderer$3;

    invoke-direct {v1, p0}, Lcom/google/glass/html/HtmlRenderer$3;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 381
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer;->generateHtml(Lcom/google/googlex/glass/common/proto/TimelineItem;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private renderToImage(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "webView"

    .prologue
    .line 499
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 500
    iget-boolean v2, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-eqz v2, :cond_0

    .line 501
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 503
    .local v1, pageNumber:I
    invoke-direct {p0, p1, v1}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;I)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    .end local v0           #i:I
    .end local v1           #pageNumber:I
    :cond_0
    return-void
.end method

.method private renderToImage(Landroid/webkit/WebView;I)V
    .locals 7
    .parameter "webView"
    .parameter "pageNumber"

    .prologue
    .line 515
    iget-boolean v4, p0, Lcom/google/glass/html/HtmlRenderer;->webviewHasRendered:Z

    if-nez v4, :cond_0

    .line 536
    :goto_0
    return-void

    .line 519
    :cond_0
    new-instance v3, Lcom/google/glass/html/Timer;

    invoke-direct {v3}, Lcom/google/glass/html/Timer;-><init>()V

    .line 522
    .local v3, timer:Lcom/google/glass/html/Timer;
    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->pageBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 523
    .local v2, renderedPage:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 524
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 527
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v4, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    mul-int/2addr v4, p2

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 528
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 532
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :cond_1
    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/html/HtmlRenderer$OnRenderListener;

    .line 533
    .local v1, listener:Lcom/google/glass/html/HtmlRenderer$OnRenderListener;
    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-interface {v1, p0}, Lcom/google/glass/html/HtmlRenderer$OnRenderListener;->onRender(Lcom/google/glass/html/HtmlRenderer;)V

    .line 535
    sget-object v4, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RenderToImage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", page number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rewriteAttachmentUrls(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "html"

    .prologue
    .line 455
    sget-object v3, Lcom/google/glass/html/HtmlRenderer;->SRC_ATTACHMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 456
    .local v1, srcMatcher:Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "src=\"$1#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, s:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/html/HtmlRenderer;->CSS_URL_ATTACHMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 458
    .local v2, urlMatcher:Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url($1#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setIsAllocated(Z)V
    .locals 0
    .parameter "isAllocated"

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    .line 288
    return-void
.end method


# virtual methods
.method generateHtml(Lcom/google/googlex/glass/common/proto/TimelineItem;I)Ljava/lang/String;
    .locals 6
    .parameter "item"
    .parameter "footerRightMargin"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<html><head><link rel=\"stylesheet\" type=\"text/css\" href=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/google/glass/html/HtmlRenderer;->getCssUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<script src=\"cards_compiled.js\"></script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<script>AutoSizer.init();Paginator.init("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");</script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<style>footer {margin-right:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "px;}</style>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</head><body>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, htmlStart:Ljava/lang/String;
    const-string v2, "</body></html>"

    .line 431
    .local v2, htmlEnd:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v0, cardHtml:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/glass/html/HtmlRenderer;->rewriteAttachmentUrls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, firstPage:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return v0
.end method

.method public isDoneLoadingResources()Z
    .locals 4

    .prologue
    .line 292
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    .line 293
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 294
    const/4 v2, 0x0

    .line 297
    .end local v1           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerListenerForPage(ILandroid/graphics/Bitmap;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    .locals 1
    .parameter "pageNumber"
    .parameter "bitmap"
    .parameter "listener"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    if-eqz p2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p1}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;I)V

    .line 405
    return-void
.end method

.method public release()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 253
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 254
    iget-boolean v4, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-nez v4, :cond_0

    .line 255
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Called release() on an unallocated renderer!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    :cond_0
    iput-object v5, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    .line 260
    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 261
    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 262
    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    const-string v5, ""

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/AsyncTask;

    .line 266
    .local v3, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v3, v8}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 268
    .end local v3           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :cond_1
    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 270
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/glass/html/HtmlRenderer;->webviewHasRendered:Z

    .line 271
    iput v8, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 275
    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 276
    .local v2, pageNumber:I
    invoke-virtual {p0, v2}, Lcom/google/glass/html/HtmlRenderer;->unregisterListenerForPage(I)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    .end local v2           #pageNumber:I
    :cond_2
    sget-object v4, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-virtual {v4, p0}, Lcom/google/glass/html/HtmlRenderer$Pool;->releaseRenderer(Lcom/google/glass/html/HtmlRenderer;)V

    .line 280
    return-void
.end method

.method public render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    .locals 6
    .parameter "item"
    .parameter "footerMarginRight"
    .parameter "onlyLoadFirstPage"
    .parameter "listener"

    .prologue
    .line 319
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    .line 320
    return-void
.end method

.method public unregisterListenerForPage(I)V
    .locals 1
    .parameter "pageNumber"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 416
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 417
    return-void
.end method

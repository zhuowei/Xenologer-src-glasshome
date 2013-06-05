.class public Lcom/google/glass/html/HtmlRenderer;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/HtmlRenderer$Pool;,
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
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final canvas:Landroid/graphics/Canvas;

.field private final context:Landroid/content/Context;

.field private final height:I

.field private isAllocated:Z

.field private itemId:Ljava/lang/String;

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

.field private final target:Landroid/graphics/Bitmap;

.field private final webView:Landroid/webkit/WebView;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/glass/html/HtmlRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    .line 52
    const-string v0, "src=[\'\"](attachment:\\d+)[\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->SRC_ATTACHMENT:Ljava/util/regex/Pattern;

    .line 56
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
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    .line 160
    new-instance v1, Lcom/google/glass/html/Timer;

    invoke-direct {v1}, Lcom/google/glass/html/Timer;-><init>()V

    .line 161
    .local v1, timer:Lcom/google/glass/html/Timer;
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/google/glass/html/HtmlRenderer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 165
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    .line 166
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    .line 168
    iget v2, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    iget v3, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->target:Landroid/graphics/Bitmap;

    .line 169
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer;->target:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->canvas:Landroid/graphics/Canvas;

    .line 171
    invoke-static {p1}, Lcom/google/glass/html/HtmlRenderer;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    .line 175
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$1;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$1;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 182
    sget-object v2, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    const-string v3, "Created HtmlRenderer"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/html/HtmlRenderer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/html/HtmlRenderer;->setIsAllocated(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/html/HtmlRenderer;->destroy()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/html/HtmlRenderer;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/html/HtmlRenderer;->doLayout(Landroid/webkit/WebView;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/html/HtmlRenderer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    return-void
.end method

.method static createForTesting(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)Lcom/google/glass/html/HtmlRenderer;
    .locals 1
    .parameter "context"
    .parameter "bitmapFactory"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 140
    new-instance v0, Lcom/google/glass/html/HtmlRenderer;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    return-object v0
.end method

.method private static createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 339
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, webView:Landroid/webkit/WebView;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 342
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 343
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 344
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 345
    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 346
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 347
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 350
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 354
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 356
    return-object v1
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 212
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

    .line 360
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 361
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 362
    .local v1, widthMeasureSpec:I
    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 363
    .local v0, heightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->measure(II)V

    .line 364
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/webkit/WebView;->layout(IIII)V

    .line 365
    return-void
.end method

.method private getCssUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 320
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stylesheets/base_style.css"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .local v0, downloadedCssFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
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

    .line 324
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
    .line 124
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 125
    new-instance v0, Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/html/HtmlRenderer$Pool;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    .line 126
    return-void
.end method

.method public static obtain()Lcom/google/glass/html/HtmlRenderer;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 134
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-virtual {v0}, Lcom/google/glass/html/HtmlRenderer$Pool;->obtainRenderer()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v0

    return-object v0
.end method

.method private render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    .locals 10
    .parameter "item"
    .parameter "footerMarginRight"
    .parameter "loadUncachedResources"
    .parameter "listener"

    .prologue
    .line 259
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 260
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called render() on an unallocated renderer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    new-instance v8, Lcom/google/glass/html/Timer;

    invoke-direct {v8}, Lcom/google/glass/html/Timer;-><init>()V

    .line 265
    .local v8, timer:Lcom/google/glass/html/Timer;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    .line 268
    iget-object v9, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v4

    iget-object v6, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    new-instance v7, Lcom/google/glass/html/HtmlRenderer$2;

    invoke-direct {v7, p0, p1, p2, p4}, Lcom/google/glass/html/HtmlRenderer$2;-><init>(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineItem;ILcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/html/ResourceLoadingWebViewClient;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 285
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/glass/html/HtmlRenderer$3;

    invoke-direct {v1, p0, p4}, Lcom/google/glass/html/HtmlRenderer$3;-><init>(Lcom/google/glass/html/HtmlRenderer;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 294
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer;->generateHtml(Lcom/google/googlex/glass/common/proto/TimelineItem;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
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

    .line 298
    return-void
.end method

.method private renderToImage(Landroid/webkit/WebView;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    .locals 4
    .parameter "webView"
    .parameter "listener"

    .prologue
    .line 369
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 370
    iget-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-eqz v1, :cond_0

    .line 371
    new-instance v0, Lcom/google/glass/html/Timer;

    invoke-direct {v0}, Lcom/google/glass/html/Timer;-><init>()V

    .line 372
    .local v0, timer:Lcom/google/glass/html/Timer;
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 373
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->target:Landroid/graphics/Bitmap;

    invoke-interface {p2, p0, v1}, Lcom/google/glass/html/HtmlRenderer$OnRenderListener;->onRender(Lcom/google/glass/html/HtmlRenderer;Landroid/graphics/Bitmap;)V

    .line 374
    sget-object v1, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RenderToImage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v0           #timer:Lcom/google/glass/html/Timer;
    :cond_0
    return-void
.end method

.method private rewriteAttachmentUrls(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "html"

    .prologue
    .line 332
    sget-object v3, Lcom/google/glass/html/HtmlRenderer;->SRC_ATTACHMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 333
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

    .line 334
    .local v0, s:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/html/HtmlRenderer;->CSS_URL_ATTACHMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 335
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
    .line 215
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    .line 216
    return-void
.end method


# virtual methods
.method generateHtml(Lcom/google/googlex/glass/common/proto/TimelineItem;I)Ljava/lang/String;
    .locals 3
    .parameter "item"
    .parameter "footerRightMargin"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/html/HtmlRenderer;->rewriteAttachmentUrls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, cardHtml:Ljava/lang/String;
    const-string v1, "<article>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<div class=\"card\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><link rel=\"stylesheet\" type=\"text/css\" href=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/google/glass/html/HtmlRenderer;->getCssUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<script src=\"cards_compiled.js\"></script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<script>AutoSizer.init();</script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<style>footer {margin-right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px;}</style>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDoneLoadingResources()Z
    .locals 4

    .prologue
    .line 220
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

    .line 221
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 222
    const/4 v2, 0x0

    .line 225
    .end local v1           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 191
    iget-boolean v2, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-nez v2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called release() on an unallocated renderer!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    iput-object v3, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 198
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 199
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    const-string v3, ""

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    .line 203
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 205
    .end local v1           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 207
    sget-object v2, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-virtual {v2, p0}, Lcom/google/glass/html/HtmlRenderer$Pool;->releaseRenderer(Lcom/google/glass/html/HtmlRenderer;)V

    .line 208
    return-void
.end method

.method public render(Lcom/google/googlex/glass/common/proto/TimelineItem;ILcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    .locals 1
    .parameter "item"
    .parameter "footerMarginRight"
    .parameter "listener"

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    .line 240
    return-void
.end method

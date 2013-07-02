.class public Lcom/google/glass/home/search/results/WebAnswerView;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "WebAnswerView.java"

# interfaces
.implements Lcom/google/glass/home/search/results/LazyLoadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;,
        Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewClient;,
        Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewJavascriptInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static glassJs:Ljava/lang/String;

.field private static final log:Lcom/google/glass/util/FormattingLogger;


# instance fields
.field private clientData:Ljava/lang/String;

.field private container:Landroid/widget/FrameLayout;

.field private context:Landroid/content/Context;

.field private isLazyLoading:Z

.field webView:Landroid/webkit/WebView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/google/glass/home/search/results/WebAnswerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView;->TAG:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/google/glass/util/FormattingLoggers;->getContextLogger()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView;->log:Lcom/google/glass/util/FormattingLogger;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "isLazyLoading"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->isLazyLoading:Z

    .line 62
    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    .line 64
    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->container:Landroid/widget/FrameLayout;

    .line 65
    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 83
    iput-object p1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    .line 84
    iput-boolean p4, p0, Lcom/google/glass/home/search/results/WebAnswerView;->isLazyLoading:Z

    .line 85
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "isLazyLoading"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->isLazyLoading:Z

    .line 62
    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    .line 64
    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->container:Landroid/widget/FrameLayout;

    .line 65
    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 76
    iput-object p1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    .line 77
    iput-boolean p3, p0, Lcom/google/glass/home/search/results/WebAnswerView;->isLazyLoading:Z

    .line 78
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isLazyLoading"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->isLazyLoading:Z

    .line 62
    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    .line 64
    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->container:Landroid/widget/FrameLayout;

    .line 65
    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 69
    iput-object p1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    .line 70
    iput-boolean p2, p0, Lcom/google/glass/home/search/results/WebAnswerView;->isLazyLoading:Z

    .line 71
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/util/FormattingLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView;->log:Lcom/google/glass/util/FormattingLogger;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->isLazyLoading:Z

    if-eqz v1, :cond_0

    .line 92
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_web_answer_lazy:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    sget v1, Lcom/google/glass/home/R$id;->container:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WebAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->container:Landroid/widget/FrameLayout;

    .line 100
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->loadJs()V

    .line 101
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->getWebAnswerViewClient()Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 102
    return-void

    .line 97
    :cond_0
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_web_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    sget v1, Lcom/google/glass/home/R$id;->webview:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WebAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method private loadDataIntoWebView()V
    .locals 6

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->getData()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, fullData:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    const-string v1, "https://www.google.com"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadJs()V
    .locals 4

    .prologue
    .line 199
    sget-object v2, Lcom/google/glass/home/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "cards_compiled.js"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 204
    .local v1, is:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v2}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/glass/home/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    .line 205
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v1           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/home/search/results/WebAnswerView;->TAG:Ljava/lang/String;

    const-string v3, "Failed to load Glass JS"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v2, 0x0

    sput-object v2, Lcom/google/glass/home/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupWebView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 131
    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 133
    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 135
    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewJavascriptInterface;

    invoke-direct {v2}, Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewJavascriptInterface;-><init>()V

    const-string v3, "GlassDebug"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 138
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 139
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 140
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 141
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 143
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</style><script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/home/search/results/WebAnswerView;->glassJs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "try {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  AutoSizer.init(false, function(){});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} catch (e) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  GlassDebug && GlassDebug.logDebug && "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      GlassDebug.logDebug(\'exception calling AutoSizer.init: \' + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "          e.message);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</head><body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->clientData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getWebAnswerViewClient()Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewClient;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewClient;

    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/home/search/results/WebAnswerView$WebAnswerViewClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->clientData:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/results/WebAnswerView;->setData(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public seen()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    .line 154
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->setupWebView()V

    .line 156
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->loadDataIntoWebView()V

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->clientData:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/glass/home/search/results/WebAnswerView$StaticCssLoader;->refreshAfterLoad(Landroid/content/Context;Lcom/google/glass/home/search/results/WebAnswerView;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->isLazyLoading:Z

    if-nez v0, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->setupWebView()V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->loadDataIntoWebView()V

    goto :goto_0
.end method

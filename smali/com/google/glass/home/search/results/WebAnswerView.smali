.class public Lcom/google/glass/home/search/results/WebAnswerView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "WebAnswerView.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static glassCss:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/home/search/results/WebAnswerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/home/search/results/WebAnswerView;->glassCss:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object p1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_web_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    sget v1, Lcom/google/glass/home/R$id;->webview:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WebAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    .line 55
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WebAnswerView;->loadCss()V

    .line 56
    return-void
.end method

.method private loadCss()V
    .locals 4

    .prologue
    .line 73
    sget-object v2, Lcom/google/glass/home/search/results/WebAnswerView;->glassCss:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/glass/home/search/results/WebAnswerView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "stylesheets/base_style.css"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v0, cssFile:Ljava/io/File;
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/google/common/io/Files;->toString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/glass/home/search/results/WebAnswerView;->glassCss:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0           #cssFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/home/search/results/WebAnswerView;->TAG:Ljava/lang/String;

    const-string v3, "Failed to load Glass CSS"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public loadData(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/home/search/results/WebAnswerView;->glassCss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/home/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    const-string v1, "http://www.google.com"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

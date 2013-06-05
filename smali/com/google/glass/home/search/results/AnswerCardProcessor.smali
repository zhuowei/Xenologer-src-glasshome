.class public Lcom/google/glass/home/search/results/AnswerCardProcessor;
.super Ljava/lang/Object;
.source "AnswerCardProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final recognitionResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/home/search/results/AnswerCardProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/AnswerCardProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "recognitionResult"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/glass/home/search/results/AnswerCardProcessor;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/google/glass/home/search/results/AnswerCardProcessor;->recognitionResult:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private addCardToResults(Lcom/google/glass/home/search/results/ResultsContainer$Builder;Lcom/google/glass/home/search/results/HtmlAnswerCard;)V
    .locals 7
    .parameter "results"
    .parameter "card"

    .prologue
    .line 75
    new-instance v3, Lcom/google/glass/home/search/results/WebAnswerView;

    iget-object v4, p0, Lcom/google/glass/home/search/results/AnswerCardProcessor;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/glass/home/search/results/WebAnswerView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v3, view:Lcom/google/glass/home/search/results/WebAnswerView;
    iget-object v4, p2, Lcom/google/glass/home/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/glass/home/search/results/WebAnswerView;->loadData(Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Lcom/google/glass/widget/OptionMenu;

    iget-object v4, p0, Lcom/google/glass/home/search/results/AnswerCardProcessor;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, optionMenu:Lcom/google/glass/widget/OptionMenu;
    iget-object v2, p2, Lcom/google/glass/home/search/results/HtmlAnswerCard;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 81
    .local v2, tts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    const-string v4, "TTS_FORMAT_STRING_KEY"

    iget-object v5, v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, "TTS_LANGUAGE_KEY"

    iget-object v5, v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->shouldReadOnDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    const-string v4, "URL_KEY"

    iget-object v5, v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/voice/network/translate/NetworkTts;->getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/search/results/AnswerCardProcessor;->context:Landroid/content/Context;

    invoke-virtual {p2, v4, v1, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->addMenuActionsToResults(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p1, v3, v1, v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 91
    return-void
.end method

.method private processHtml(Ljava/lang/String;ZZ)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 9
    .parameter "response"
    .parameter "isFromTimeline"
    .parameter "isInBundle"

    .prologue
    .line 51
    new-instance v0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    invoke-direct {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;-><init>()V

    .line 52
    .local v0, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    .line 55
    .local v2, displayCtx:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->parseForContext(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;[B)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;

    move-result-object v5

    .line 57
    .local v5, results:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    if-nez v5, :cond_2

    .line 58
    const/4 v7, 0x0

    .line 71
    :goto_1
    return-object v7

    .line 52
    .end local v2           #displayCtx:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;
    .end local v5           #results:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    :cond_0
    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->INITIAL_SEARCH:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    goto :goto_0

    .line 60
    .restart local v2       #displayCtx:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;
    .restart local v5       #results:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    :cond_2
    iget-object v7, v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/search/results/HtmlAnswerCard;

    .line 61
    .local v1, card:Lcom/google/glass/home/search/results/HtmlAnswerCard;
    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/search/results/AnswerCardProcessor;->addCardToResults(Lcom/google/glass/home/search/results/ResultsContainer$Builder;Lcom/google/glass/home/search/results/HtmlAnswerCard;)V

    goto :goto_2

    .line 64
    .end local v1           #card:Lcom/google/glass/home/search/results/HtmlAnswerCard;
    :cond_3
    if-nez p2, :cond_4

    iget-object v7, v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v7, v7, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 66
    iget-object v7, v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v6, v7, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    .line 67
    .local v6, text:Ljava/lang/String;
    iget-object v7, v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v4, v7, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    .line 68
    .local v4, lang:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/glass/home/search/results/AnswerCardProcessor;->context:Landroid/content/Context;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v7, v6, v4, v8}, Lcom/google/glass/timeline/TimelineHelper;->formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 71
    .end local v4           #lang:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v7

    goto :goto_1
.end method


# virtual methods
.method public process(Ljava/lang/String;ZZ)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 6
    .parameter "response"
    .parameter "isFromTimeline"
    .parameter "isInBundle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/search/results/AnswerCardProcessor;->processHtml(Ljava/lang/String;ZZ)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v2

    .line 37
    .local v2, resultsContainer:Lcom/google/glass/home/search/results/ResultsContainer;
    if-eqz v2, :cond_0

    .line 46
    .end local v2           #resultsContainer:Lcom/google/glass/home/search/results/ResultsContainer;
    :goto_0
    return-object v2

    .line 42
    .restart local v2       #resultsContainer:Lcom/google/glass/home/search/results/ResultsContainer;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/home/search/results/AnswerCardProcessor;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    .line 43
    .local v0, application:Lcom/google/glass/app/GlassApplication;
    const-string v3, "query"

    iget-object v4, p0, Lcom/google/glass/home/search/results/AnswerCardProcessor;->recognitionResult:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, eventTuple:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x0

    goto :goto_0
.end method

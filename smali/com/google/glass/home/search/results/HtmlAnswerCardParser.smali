.class public Lcom/google/glass/home/search/results/HtmlAnswerCardParser;
.super Ljava/lang/Object;
.source "HtmlAnswerCardParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;,
        Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;,
        Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;,
        Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    }
.end annotation


# static fields
.field private static final ACTION_GROUP_ALL:I = 0x0

.field private static final ACTION_GROUP_ATTRIBUTE_CLASS_POSTFIX:I = 0x3

.field private static final ACTION_GROUP_ATTRIBUTE_CLASS_PREFIX:I = 0x2

.field private static final ACTION_GROUP_ATTRIBUTE_POST_CLASS:I = 0x4

.field private static final ACTION_GROUP_ATTRIBUTE_PRE_CLASS:I = 0x1

.field private static final ACTION_GROUP_DATA:I = 0x5

.field static final ACTION_SPAN_PATTERN:Ljava/util/regex/Pattern; = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ARTICLE_GROUP_ATTRIBUTE_CLASS:I = 0x2

.field private static final ARTICLE_GROUP_ATTRIBUTE_POST_CLASS:I = 0x3

.field private static final ARTICLE_GROUP_ATTRIBUTE_PRE_CLASS:I = 0x1

.field private static final ARTICLE_GROUP_DATA:I = 0x4

.field static final ARTICLE_PATTERN:Ljava/util/regex/Pattern; = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final GLASS_CARD_CLASS:Ljava/lang/String; = "gls-crd"

.field private static final GLASS_COMMON_SECTION_CLASS:Ljava/lang/String; = "gls-com"

.field private static final GLASS_IN_BUNDLE_CLASS:Ljava/lang/String; = "gls-in-bdl"

.field private static final GLASS_IN_COVER_CLASS:Ljava/lang/String; = "gls-in-tl"

.field private static final GLASS_IN_IS_CLASS:Ljava/lang/String; = "gls-in-is"

.field private static final GLASS_MENU_ACTION_CLASS:Ljava/lang/String; = "gls-ma"

.field private static final GLASS_NO_BUNDLE_CLASS:Ljava/lang/String; = "gls-no-bdl"

.field private static final GLASS_NO_COVER_CLASS:Ljava/lang/String; = "gls-no-tl"

.field private static final GLASS_NO_IS_CLASS:Ljava/lang/String; = "gls-no-is"

.field private static final GLASS_TTS_CLASS:Ljava/lang/String; = "gls-tts"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TTS_GROUP_ALL:I = 0x0

.field private static final TTS_GROUP_ATTRIBUTE_CLASS_POSTFIX:I = 0x3

.field private static final TTS_GROUP_ATTRIBUTE_CLASS_PREFIX:I = 0x2

.field private static final TTS_GROUP_ATTRIBUTE_POST_CLASS:I = 0x4

.field private static final TTS_GROUP_ATTRIBUTE_PRE_CLASS:I = 0x1

.field private static final TTS_GROUP_DATA:I = 0x5

.field private static final TTS_LANG_GROUP_VALUE:I = 0x1

.field private static final TTS_LANG_PATTERN:Ljava/util/regex/Pattern; = null

.field static final TTS_SPAN_PATTERN:Ljava/util/regex/Pattern; = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final VALID_ATTRIBUTE_GROUP:Ljava/lang/String; = "([^>]*?)"

.field private static final VALID_CLASS_GROUP:Ljava/lang/String; = "([^\"]*?)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    .line 86
    const-string v0, "<article([^>]*?) class=\"([^\"]*?)\"([^>]*?)>(.*?)</article>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->ARTICLE_PATTERN:Ljava/util/regex/Pattern;

    .line 97
    const-string v0, "<span([^>]*?) class=\"([^\"]*?)gls-tts([^\"]*?)\"([^>]*?)>(.*?)</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TTS_SPAN_PATTERN:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, " lang=\"([^\"]*?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TTS_LANG_PATTERN:Ljava/util/regex/Pattern;

    .line 114
    const-string v0, "<span([^>]*?) class=\"([^\"]*?)gls-ma([^\"]*?)\"([^>]*?)>(.*?)</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->ACTION_SPAN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->contextualClassFor(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static allowedContextFromClassNames(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Z
    .locals 4
    .parameter "classNames"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 418
    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    if-ne p1, v2, :cond_2

    .line 419
    const-string v2, " gls-no-bdl "

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 419
    goto :goto_0

    .line 421
    :cond_2
    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    if-ne p1, v2, :cond_3

    .line 422
    const-string v2, " gls-no-tl "

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 424
    :cond_3
    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->INITIAL_SEARCH:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    if-ne p1, v2, :cond_0

    .line 425
    const-string v2, " gls-no-is "

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static contextualClassFor(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 401
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$home$search$results$HtmlAnswerCard$DisplayContext:[I

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 409
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 403
    :pswitch_0
    const-string v0, "gls-in-is"

    goto :goto_0

    .line 405
    :pswitch_1
    const-string v0, "gls-in-tl"

    goto :goto_0

    .line 407
    :pswitch_2
    const-string v0, "gls-in-bdl"

    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static isValidClass(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "target"
    .parameter "classNames"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static parseForContext(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    .locals 13
    .parameter "context"
    .parameter "source"

    .prologue
    .line 204
    sget-object v10, Lcom/google/glass/util/Labs$Feature;->USE_SAX_PARSER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v10}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 206
    :try_start_0
    const-string v10, "UTF-8"

    invoke-virtual {p1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 207
    .local v1, bytes:[B
    invoke-static {p0, v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->parseForContext(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;[B)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 292
    .end local v1           #bytes:[B
    :goto_0
    return-object v9

    .line 208
    :catch_0
    move-exception v4

    .line 209
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v11, "Couldn\'t parse HTML result"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 v9, 0x0

    goto :goto_0

    .line 214
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;

    invoke-direct {v8}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;-><init>()V

    .line 217
    .local v8, parsingState:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;
    invoke-static {p0, p1, v8}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->parseOutAutoPlayTts(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;)V

    .line 219
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;

    .line 220
    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->sawNonCoverBundleCard:Z

    .line 223
    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->ARTICLE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 224
    .local v0, articleMatcher:Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 225
    new-instance v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    invoke-direct {v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;-><init>()V

    iput-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentCardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 226
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleHeaders:Ljava/lang/String;

    .line 228
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleHeaders:Ljava/lang/String;

    const-string v11, "gls-com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 233
    .local v7, isCommonContent:Z
    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p0, v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-boolean v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->sawNonCoverBundleCard:Z

    if-nez v10, :cond_3

    .line 234
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->cardBuilders:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleHeaders:Ljava/lang/String;

    sget-object v11, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-static {v10, v11}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->allowedContextFromClassNames(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    .line 236
    .local v5, eligibleForCover:Z
    :goto_2
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleHeaders:Ljava/lang/String;

    sget-object v11, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-static {v10, v11}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->allowedContextFromClassNames(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez v5, :cond_3

    .line 238
    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->sawNonCoverBundleCard:Z

    goto :goto_1

    .line 234
    .end local v5           #eligibleForCover:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 245
    :cond_3
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleHeaders:Ljava/lang/String;

    invoke-static {v10, p0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->allowedContextFromClassNames(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 249
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    .line 250
    if-nez v7, :cond_4

    .line 251
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentCardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<article"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " class=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleHeaders:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->contextualClassFor(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 255
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</article>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    .line 259
    :cond_4
    invoke-static {p0, v8}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->parseOutTts(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;)V

    .line 262
    invoke-static {p0, v8}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->parseOutActions(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;)V

    .line 264
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentCardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iget-object v10, v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleHeaders:Ljava/lang/String;

    const-string v11, "gls-com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 268
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentCardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iget-object v11, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;

    invoke-virtual {v10, v11}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/home/search/results/HtmlAnswerCard;)Lcom/google/glass/home/search/results/HtmlAnswerCard;

    move-result-object v10

    iput-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;

    .line 275
    :cond_5
    :goto_3
    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p0, v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->cardBuilders:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->sawNonCoverBundleCard:Z

    if-eqz v10, :cond_1

    .line 283
    .end local v7           #isCommonContent:Z
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v3, cards:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/HtmlAnswerCard;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->cardBuilders:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_a

    .line 285
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->cardBuilders:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 286
    .local v2, cardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p0, v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-boolean v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->sawNonCoverBundleCard:Z

    if-eqz v10, :cond_7

    .line 287
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->getsImplicitSearchAction:Z

    .line 289
    :cond_7
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;

    invoke-virtual {v2, v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/home/search/results/HtmlAnswerCard;)Lcom/google/glass/home/search/results/HtmlAnswerCard;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 270
    .end local v2           #cardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    .end local v3           #cards:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/HtmlAnswerCard;>;"
    .end local v6           #i:I
    .restart local v7       #isCommonContent:Z
    :cond_8
    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p0, v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->cardBuilders:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 272
    :cond_9
    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->cardBuilders:Ljava/util/List;

    iget-object v11, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentCardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 291
    .end local v7           #isCommonContent:Z
    .restart local v3       #cards:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/HtmlAnswerCard;>;"
    .restart local v6       #i:I
    :cond_a
    new-instance v9, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;

    iget-object v10, v8, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->autoplayTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    const/4 v11, 0x0

    invoke-direct {v9, v3, v10, v11}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;-><init>(Ljava/util/List;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;)V

    .line 292
    .local v9, results:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    goto/16 :goto_0
.end method

.method public static parseForContext(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;[B)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    .locals 18
    .parameter "context"
    .parameter "bytes"

    .prologue
    .line 153
    sget-object v14, Lcom/google/glass/util/Labs$Feature;->USE_SAX_PARSER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v14}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 158
    :try_start_0
    const-string v14, "org.ccil.cowan.tagsoup.Parser"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 159
    .local v10, parser:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v14, "parse"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Lorg/xml/sax/InputSource;

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 160
    .local v9, parse:Ljava/lang/reflect/Method;
    const-string v14, "setContentHandler"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Lorg/xml/sax/ContentHandler;

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 162
    .local v12, setContentHandler:Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 163
    .local v7, instance:Ljava/lang/Object;
    new-instance v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;-><init>(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;)V

    .line 164
    .local v5, handler:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-virtual {v12, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 167
    .local v8, is:Ljava/io/InputStream;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Lorg/xml/sax/InputSource;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v16 .. v17}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    aput-object v16, v14, v15

    invoke-virtual {v9, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, cards:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/HtmlAnswerCard;>;"
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    invoke-static {v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->access$100(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/home/search/results/HtmlAnswerCard;)Lcom/google/glass/home/search/results/HtmlAnswerCard;

    move-result-object v3

    .line 171
    .local v3, commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;
    invoke-static {v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->access$200(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 172
    .local v1, card:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    sget-object v14, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    iget-boolean v14, v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->sawNonCoverBundleCard:Z

    if-eqz v14, :cond_0

    .line 174
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->getsImplicitSearchAction:Z

    .line 176
    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/home/search/results/HtmlAnswerCard;)Lcom/google/glass/home/search/results/HtmlAnswerCard;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 182
    .end local v1           #card:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    .end local v2           #cards:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/HtmlAnswerCard;>;"
    .end local v3           #commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;
    .end local v5           #handler:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #instance:Ljava/lang/Object;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #parse:Ljava/lang/reflect/Method;
    .end local v10           #parser:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #setContentHandler:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 183
    .local v4, e:Ljava/lang/ClassNotFoundException;
    sget-object v14, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v15, "Couldn\'t parse HTML result"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v11, 0x0

    .line 197
    :goto_2
    return-object v11

    .line 179
    .restart local v2       #cards:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/HtmlAnswerCard;>;"
    .restart local v3       #commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;
    .restart local v5       #handler:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #instance:Ljava/lang/Object;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #parse:Ljava/lang/reflect/Method;
    .restart local v10       #parser:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v12       #setContentHandler:Ljava/lang/reflect/Method;
    :cond_1
    :try_start_1
    new-instance v11, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    invoke-static {v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->access$300(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v11, v2, v14, v15}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;-><init>(Ljava/util/List;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 181
    .local v11, results:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    goto :goto_2

    .line 184
    .end local v2           #cards:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/HtmlAnswerCard;>;"
    .end local v3           #commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;
    .end local v5           #handler:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #instance:Ljava/lang/Object;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #parse:Ljava/lang/reflect/Method;
    .end local v10           #parser:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v11           #results:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    .end local v12           #setContentHandler:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    .line 185
    .local v4, e:Ljava/lang/NoSuchMethodException;
    sget-object v14, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v15, "Couldn\'t parse HTML result"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 186
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 187
    .local v4, e:Ljava/lang/InstantiationException;
    sget-object v14, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v15, "Couldn\'t parse HTML result"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 188
    .end local v4           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v4

    .line 189
    .local v4, e:Ljava/lang/IllegalAccessException;
    sget-object v14, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v15, "Couldn\'t parse HTML result"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 190
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    .line 191
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    sget-object v14, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v15, "Couldn\'t parse HTML result"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 196
    .end local v4           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    .line 197
    .local v13, source:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->parseForContext(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;

    move-result-object v11

    goto :goto_2
.end method

.method static parseMenuAction(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "actionSpec"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 437
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, actionParams:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->validateActionSpec(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    .end local v0           #actionParams:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, e:Lorg/json/JSONException;
    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v3, "Failed to parse menu action JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static parseOutActions(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;)V
    .locals 9
    .parameter "context"
    .parameter "parsingState"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 371
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->ACTION_SPAN_PATTERN:Ljava/util/regex/Pattern;

    iget-object v8, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 372
    .local v2, actionMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 373
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, actionSpan:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "gls-ma"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, actionClass:Ljava/lang/String;
    const-string v7, "gls-ma"

    invoke-static {v7, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->isValidClass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 380
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, actionJsonBlob:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->allowedContextFromClassNames(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Z

    move-result v4

    .line 382
    .local v4, includeAction:Z
    if-eqz v4, :cond_1

    .line 383
    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, spanWithEscapedText:Ljava/lang/String;
    iget-object v7, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    .line 387
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->parseMenuAction(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 388
    .local v5, newAction:Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 389
    iget-object v7, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentCardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iget-object v7, v7, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v5           #newAction:Lorg/json/JSONObject;
    .end local v6           #spanWithEscapedText:Ljava/lang/String;
    :cond_1
    iget-object v7, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    goto :goto_0

    .line 395
    .end local v0           #actionClass:Ljava/lang/String;
    .end local v1           #actionJsonBlob:Ljava/lang/String;
    .end local v3           #actionSpan:Ljava/lang/String;
    .end local v4           #includeAction:Z
    :cond_2
    return-void
.end method

.method static parseOutAutoPlayTts(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;)V
    .locals 10
    .parameter "context"
    .parameter "source"
    .parameter "parsingState"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 313
    const/4 v6, 0x0

    iput-object v6, p2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->autoplayTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 314
    const-string v6, "<article "

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 315
    .local v0, articleStart:I
    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TTS_SPAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 316
    .local v1, autoPlayTtsMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-gt v6, v0, :cond_1

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gls-tts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, ttsClass:Ljava/lang/String;
    invoke-static {v3, p0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->allowedContextFromClassNames(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, ttsText:Ljava/lang/String;
    const-string v2, "en"

    .line 322
    .local v2, lang:Ljava/lang/String;
    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TTS_LANG_PATTERN:Ljava/util/regex/Pattern;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 325
    .local v4, ttsLangMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 326
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    :cond_0
    new-instance v6, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    invoke-direct {v6, v5, v2}, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->autoplayTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 331
    .end local v2           #lang:Ljava/lang/String;
    .end local v3           #ttsClass:Ljava/lang/String;
    .end local v4           #ttsLangMatcher:Ljava/util/regex/Matcher;
    .end local v5           #ttsText:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static parseOutTts(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;)V
    .locals 10
    .parameter "context"
    .parameter "parsingState"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 339
    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TTS_SPAN_PATTERN:Ljava/util/regex/Pattern;

    iget-object v7, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 340
    .local v3, ttsMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 341
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, ttsSpan:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gls-tts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, ttsClass:Ljava/lang/String;
    const-string v6, "gls-tts"

    invoke-static {v6, v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->isValidClass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 348
    iget-object v6, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    .line 350
    invoke-static {v1, p0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->allowedContextFromClassNames(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 353
    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, ttsText:Ljava/lang/String;
    const-string v0, "en"

    .line 355
    .local v0, lang:Ljava/lang/String;
    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TTS_LANG_PATTERN:Ljava/util/regex/Pattern;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 358
    .local v2, ttsLangMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 359
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_1
    iget-object v6, p1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentCardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    new-instance v7, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    invoke-direct {v7, v5, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    goto/16 :goto_0

    .line 363
    .end local v0           #lang:Ljava/lang/String;
    .end local v1           #ttsClass:Ljava/lang/String;
    .end local v2           #ttsLangMatcher:Ljava/util/regex/Matcher;
    .end local v4           #ttsSpan:Ljava/lang/String;
    .end local v5           #ttsText:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static validateActionSpec(Lorg/json/JSONObject;)Z
    .locals 7
    .parameter "spec"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 451
    const-string v1, ""

    .line 452
    .local v1, actionName:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;

    move-result-object v0

    .line 453
    .local v0, action:Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;
    if-nez v0, :cond_0

    .line 454
    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v6, "Ignoring action with invalid spec."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$home$search$results$HtmlAnswerCard$ParsableActionType:[I

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 506
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t know how to validate params for recognized action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 508
    :goto_0
    :pswitch_0
    return v3

    .line 461
    :pswitch_1
    :try_start_0
    const-string v5, "value"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v2

    .line 463
    .local v2, e:Lorg/json/JSONException;
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring READ_ALOUD action with no value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 464
    goto :goto_0

    .line 469
    .end local v2           #e:Lorg/json/JSONException;
    :pswitch_2
    :try_start_1
    const-string v5, "phoneNumber"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 470
    :catch_1
    move-exception v2

    .line 471
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring VOICE_CALL action with no number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 473
    goto :goto_0

    .line 478
    .end local v2           #e:Lorg/json/JSONException;
    :pswitch_3
    :try_start_2
    const-string v5, "address"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 485
    :try_start_3
    const-string v5, "lat"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 486
    const-string v5, "lng"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 487
    :catch_2
    move-exception v2

    .line 488
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring NAVIGATE action with no lat/lng: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 490
    goto :goto_0

    .line 479
    .end local v2           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v2

    .line 480
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring NAVIGATE action with no address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 482
    goto/16 :goto_0

    .line 494
    .end local v2           #e:Lorg/json/JSONException;
    :pswitch_4
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v5, "Ignoring explicit SEARCH action"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 495
    goto/16 :goto_0

    .line 498
    :pswitch_5
    :try_start_4
    const-string v5, "url"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 499
    :catch_4
    move-exception v2

    .line 500
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring VIEW_WEB_SITE action with no url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 502
    goto/16 :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

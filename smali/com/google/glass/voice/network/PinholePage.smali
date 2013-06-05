.class public Lcom/google/glass/voice/network/PinholePage;
.super Ljava/lang/Object;
.source "PinholePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/PinholePage$1;,
        Lcom/google/glass/voice/network/PinholePage$ElementExtraction;,
        Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;,
        Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    }
.end annotation


# static fields
.field public static final END_OF_CARD_MARKER_ECT:Ljava/lang/String; = "eoc"

.field private static final GLASS_CARD_CLASS:Ljava/lang/String; = "gls-crd"

.field private static final GLASS_COMMON_SECTION_CLASS:Ljava/lang/String; = "gls-com"

.field private static final GLASS_TOP_LEVEL_CLASSNAMES:[Ljava/lang/String; = null

.field private static final GLASS_TTS_CLASS:Ljava/lang/String; = "gls-tts"

.field public static final MAIN_ANSWER_CARD_ECT:Ljava/lang/String; = "ans0"

.field private static final PELLET_SEPARATOR_PATTERN:Ljava/lang/String; = "/\\*\"\"\\*/"

.field private static final TAG:Ljava/lang/String;

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private answerCardsComplete:Z

.field private blobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/network/PinholePage$PinholeDocument;",
            ">;"
        }
    .end annotation
.end field

.field private headerBuilder:Ljava/lang/StringBuilder;

.field private headerComplete:Z

.field private responseComplete:Z

.field private unparsedBlobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unparsedPelletFragment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/voice/network/PinholePage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "\"u\":\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/PinholePage;->URL_PATTERN:Ljava/util/regex/Pattern;

    .line 271
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gls-com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gls-crd"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gls-tts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/network/PinholePage;->GLASS_TOP_LEVEL_CLASSNAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 83
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 89
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->answerCardsComplete:Z

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerBuilder:Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedBlobs:Ljava/util/List;

    .line 411
    return-void
.end method

.method private addGwsBodyFragmentPellet(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "pellet"

    .prologue
    .line 188
    :try_start_0
    const-string v4, "u"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, url:Ljava/lang/String;
    const-string v4, "d"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 191
    .local v0, blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .end local v0           #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    invoke-direct {v0, v3}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v0       #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "eoc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/glass/voice/network/PinholePage;->answerCardsComplete:Z

    .line 198
    :cond_1
    #getter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0           #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Lorg/json/JSONException;
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t parse gwsBodyFragment pellet."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleJsonBlobs(Ljava/lang/String;Z)V
    .locals 6
    .parameter "jsonBlob"
    .parameter "forceParse"

    .prologue
    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, source:Ljava/lang/String;
    const-string v4, ""

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 113
    const-string v4, "/\\*\"\"\\*/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, pellets:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 115
    if-nez p2, :cond_2

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/google/glass/voice/network/PinholePage;->shouldParseJson(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 116
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    iget-boolean v4, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-nez v4, :cond_1

    aget-object v4, v2, v0

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    aget-object v4, v2, v0

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedBlobs:Ljava/util/List;

    aget-object v5, v2, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_2
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/google/glass/voice/network/PinholePage;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 129
    .local v1, pellet:Lorg/json/JSONObject;
    if-nez v1, :cond_4

    .line 130
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    iget-boolean v4, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-nez v4, :cond_3

    .line 131
    aget-object v4, v2, v0

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    goto :goto_1

    .line 133
    :cond_3
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t parse gwsBodyFragment pellet."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    aget-object v5, v2, v0

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/PinholePage;->addGwsBodyFragmentPellet(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 140
    .end local v1           #pellet:Lorg/json/JSONObject;
    :cond_5
    return-void
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "source"

    .prologue
    .line 179
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-object v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reducePinholeDocToGlassContent(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .locals 16
    .parameter "d"

    .prologue
    .line 285
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getBaseUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "?ect="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ans0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, newUrl:Ljava/lang/String;
    new-instance v9, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    invoke-direct {v9, v6}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;-><init>(Ljava/lang/String;)V

    .line 291
    .local v9, result:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    :try_start_0
    const-string v12, "org.ccil.cowan.tagsoup.Parser"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 292
    .local v8, parser:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v12, "parse"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Lorg/xml/sax/InputSource;

    aput-object v15, v13, v14

    invoke-virtual {v8, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 293
    .local v7, parse:Ljava/lang/reflect/Method;
    const-string v12, "setContentHandler"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Lorg/xml/sax/ContentHandler;

    aput-object v15, v13, v14

    invoke-virtual {v8, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 294
    .local v11, setContentHandler:Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 295
    .local v3, instance:Ljava/lang/Object;
    new-instance v1, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;

    sget-object v12, Lcom/google/glass/voice/network/PinholePage;->GLASS_TOP_LEVEL_CLASSNAMES:[Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v1, v12, v13}, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;-><init>([Ljava/lang/String;Lcom/google/glass/voice/network/PinholePage$1;)V

    .line 296
    .local v1, handler:Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {v11, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 299
    .local v4, is:Ljava/io/InputStream;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Lorg/xml/sax/InputSource;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    aput-object v14, v12, v13

    invoke-virtual {v7, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v10, resultHtml:Ljava/lang/StringBuilder;
    const-string v12, "<div>"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    #getter for: Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->matchingElements:Ljava/util/List;
    invoke-static {v1}, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->access$200(Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;

    .line 304
    .local v5, matchedElement:Lcom/google/glass/voice/network/PinholePage$ElementExtraction;
    #getter for: Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->extractedHtml:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->access$300(Lcom/google/glass/voice/network/PinholePage$ElementExtraction;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    .end local v1           #handler:Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #instance:Ljava/lang/Object;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #matchedElement:Lcom/google/glass/voice/network/PinholePage$ElementExtraction;
    .end local v7           #parse:Ljava/lang/reflect/Method;
    .end local v8           #parser:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #resultHtml:Ljava/lang/StringBuilder;
    .end local v11           #setContentHandler:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    sget-object v12, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    const-string v13, "Couldn\'t parse HTML result"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-object v9

    .line 306
    .restart local v1       #handler:Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #instance:Ljava/lang/Object;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #parse:Ljava/lang/reflect/Method;
    .restart local v8       #parser:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v10       #resultHtml:Ljava/lang/StringBuilder;
    .restart local v11       #setContentHandler:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    const-string v12, "</div>"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    #setter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v9, v10}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$002(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static shouldParseJson(Ljava/lang/String;)Z
    .locals 3
    .parameter "source"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    sget-object v2, Lcom/google/glass/voice/network/PinholePage;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 171
    .local v0, urlMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\u0026ect="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .locals 11
    .parameter "type"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 216
    const-string v9, "ans0"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v7

    .line 223
    :cond_1
    iget-boolean v9, p0, Lcom/google/glass/voice/network/PinholePage;->answerCardsComplete:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-eqz v9, :cond_0

    .line 225
    :cond_2
    const/4 v3, 0x0

    .line 226
    .local v3, hasAnswer:Z
    iget-object v9, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 227
    .local v1, blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    invoke-virtual {v1}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ans0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gls-crd"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 229
    const/4 v3, 0x1

    .line 233
    .end local v1           #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    :cond_4
    if-nez v3, :cond_5

    iget-boolean v9, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-eqz v9, :cond_0

    .line 236
    :cond_5
    if-nez v3, :cond_6

    .line 239
    iget-object v9, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedBlobs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, blob:Ljava/lang/String;
    invoke-direct {p0, v1, v8}, Lcom/google/glass/voice/network/PinholePage;->handleJsonBlobs(Ljava/lang/String;Z)V

    goto :goto_1

    .line 246
    .end local v1           #blob:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    .line 247
    .local v0, bestDoc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    iget-object v9, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 248
    .local v2, doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    invoke-virtual {v2}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, html:Ljava/lang/String;
    const-string v9, "gls-crd"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 251
    invoke-virtual {v2}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ans0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v6, v8

    .line 252
    .local v6, isAnswer:Z
    :goto_3
    if-eqz v0, :cond_8

    if-eqz v6, :cond_7

    .line 254
    :cond_8
    move-object v0, v2

    goto :goto_2

    .line 251
    .end local v6           #isAnswer:Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 258
    .end local v2           #doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v4           #html:Ljava/lang/String;
    :cond_a
    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/PinholePage;->reducePinholeDocToGlassContent(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getPinholeDocuments()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/voice/network/PinholePage$PinholeDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 2
    .parameter "output"

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 144
    iget-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsResponseComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 148
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsBodyFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsBodyFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/PinholePage;->handleJsonBlobs(Ljava/lang/String;Z)V

    .line 151
    :cond_1
    return-void
.end method

.method public updateDirectlyFromFullGwsResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-boolean v1, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 158
    iput-boolean v1, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/network/PinholePage;->handleJsonBlobs(Ljava/lang/String;Z)V

    goto :goto_0
.end method

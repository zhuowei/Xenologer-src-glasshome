.class public Lcom/google/glass/home/search/results/HtmlAnswerCardParser;
.super Ljava/lang/Object;
.source "HtmlAnswerCardParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;,
        Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;,
        Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static makeActionOfType(Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;)Lorg/json/JSONObject;
    .locals 3
    .parameter "type"

    .prologue
    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v0, spec:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseForContext(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    .locals 2
    .parameter "context"
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    .local v0, bytes:[B
    invoke-static {p0, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->parseForContext(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;[B)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;

    move-result-object v1

    return-object v1
.end method

.method public static parseForContext(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;[B)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    .locals 17
    .parameter "context"
    .parameter "bytes"

    .prologue
    .line 64
    :try_start_0
    const-string v13, "org.ccil.cowan.tagsoup.Parser"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 65
    .local v10, parser:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v13, "parse"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Lorg/xml/sax/InputSource;

    aput-object v16, v14, v15

    invoke-virtual {v10, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 66
    .local v9, parse:Ljava/lang/reflect/Method;
    const-string v13, "setContentHandler"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Lorg/xml/sax/ContentHandler;

    aput-object v16, v14, v15

    invoke-virtual {v10, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 68
    .local v12, setContentHandler:Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 69
    .local v7, instance:Ljava/lang/Object;
    new-instance v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;-><init>(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;)V

    .line 70
    .local v5, handler:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-virtual {v12, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 73
    .local v8, is:Ljava/io/InputStream;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Lorg/xml/sax/InputSource;

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v15 .. v16}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    aput-object v15, v13, v14

    invoke-virtual {v9, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, cards:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/HtmlAnswerCard;>;"
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    invoke-static {v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->access$100(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/home/search/results/HtmlAnswerCard;)Lcom/google/glass/home/search/results/HtmlAnswerCard;

    move-result-object v3

    .line 77
    .local v3, commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;
    invoke-static {v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->access$200(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 78
    .local v1, card:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    sget-object v13, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    iget-boolean v13, v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->sawNonCoverBundleCard:Z

    if-eqz v13, :cond_0

    .line 80
    iget-object v13, v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->implicitActions:Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->makeSearchActionSpec()Lorg/json/JSONObject;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->build(Lcom/google/glass/home/search/results/HtmlAnswerCard;)Lcom/google/glass/home/search/results/HtmlAnswerCard;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 88
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

    .line 89
    .local v4, e:Ljava/lang/ClassNotFoundException;
    sget-object v13, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v14, "Couldn\'t parse HTML result"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v11, 0x0

    :goto_2
    return-object v11

    .line 85
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

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v2, v13, v14}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;-><init>(Ljava/util/List;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 87
    .local v11, results:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
    goto :goto_2

    .line 90
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

    .line 91
    .local v4, e:Ljava/lang/NoSuchMethodException;
    sget-object v13, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v14, "Couldn\'t parse HTML result"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 92
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 93
    .local v4, e:Ljava/lang/InstantiationException;
    sget-object v13, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v14, "Couldn\'t parse HTML result"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 94
    .end local v4           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v4

    .line 95
    .local v4, e:Ljava/lang/IllegalAccessException;
    sget-object v13, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v14, "Couldn\'t parse HTML result"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 96
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    .line 97
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    sget-object v13, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->TAG:Ljava/lang/String;

    const-string v14, "Couldn\'t parse HTML result"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

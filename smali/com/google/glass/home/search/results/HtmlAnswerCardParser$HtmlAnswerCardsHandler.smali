.class Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "HtmlAnswerCardParser.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/HtmlAnswerCardParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtmlAnswerCardsHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;,
        Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    }
.end annotation


# static fields
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


# instance fields
.field private autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

.field private cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

.field private domDepth:I

.field private parserState:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;",
            ">;"
        }
    .end annotation
.end field

.field private parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

.field sawNonCoverBundleCard:Z


# direct methods
.method private constructor <init>(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 167
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    .line 170
    iput v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    .line 178
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    invoke-direct {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 185
    iput-boolean v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->sawNonCoverBundleCard:Z

    .line 191
    iput-object p1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    .line 192
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    new-instance v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->NONE:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;-><init>(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;-><init>(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    return-object v0
.end method

.method private advanceStateIfStartingField(Ljava/util/List;Ljava/util/EnumSet;Lorg/xml/sax/Attributes;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    .locals 2
    .parameter
    .parameter
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            ")",
            "Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, classnames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, contexts:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;>;"
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 349
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 359
    :goto_0
    return-object v0

    .line 351
    :cond_0
    const-string v0, "gls-tts"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 352
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v0

    invoke-static {p3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->newTtsFormatString(Lorg/xml/sax/Attributes;)Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    goto :goto_0

    .line 355
    :cond_1
    const-string v0, "gls-ma"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 356
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ACTION:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ACTION:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    goto :goto_0

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v0

    goto :goto_0
.end method

.method private static contextsFromClassNames(Ljava/util/List;)Ljava/util/EnumSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, classnames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 216
    .local v2, r:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    .local v0, classname:Ljava/lang/String;
    const-string v3, "gls-no-is"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->INITIAL_SEARCH:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 220
    :cond_1
    const-string v3, "gls-no-tl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 223
    :cond_2
    const-string v3, "gls-no-bdl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v0           #classname:Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method private static contextualClassFor(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 199
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$home$search$results$HtmlAnswerCard$DisplayContext:[I

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 207
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 201
    :pswitch_0
    const-string v0, "gls-in-is"

    goto :goto_0

    .line 203
    :pswitch_1
    const-string v0, "gls-in-tl"

    goto :goto_0

    .line 205
    :pswitch_2
    const-string v0, "gls-in-bdl"

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    .locals 2
    .parameter "type"

    .prologue
    .line 299
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    iget v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;-><init>(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;I)V

    .line 300
    .local v0, newFrame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    iget-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-object v0
.end method

.method private finishParserState(Ljava/lang/String;)V
    .locals 9
    .parameter "qname"

    .prologue
    .line 308
    iget-object v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 309
    .local v4, oldFrame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    iget-object v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 310
    .local v3, nextFrame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    const/4 v1, 0x0

    .line 311
    .local v1, container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v6

    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v6, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v6

    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v6, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 313
    :cond_0
    iget-object v1, v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .end local v1           #container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    check-cast v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 316
    .restart local v1       #container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    :cond_1
    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$home$search$results$HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType:[I

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 337
    :cond_2
    :goto_0
    return-void

    .line 318
    :pswitch_0
    if-eqz v1, :cond_2

    .line 319
    iget-object v6, v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v6, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    iput-object v6, v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    goto :goto_0

    .line 323
    :pswitch_1
    if-eqz v1, :cond_2

    .line 324
    iget-object v5, v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    .line 325
    .local v5, recorder:Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parseMenuAction(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 326
    .local v2, newAction:Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 327
    iget-object v6, v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    .end local v2           #newAction:Lorg/json/JSONObject;
    .end local v5           #recorder:Ljava/lang/StringBuilder;
    :pswitch_2
    iget-object v0, v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 333
    .local v0, card:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    iget-object v6, v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "</"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static getAttributesString(Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 1
    .parameter "attrs"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->getAttributesString(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAttributesString(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "attrs"
    .parameter "extraClass"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v1, b:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 250
    .local v0, addedExtraClass:Z
    invoke-interface {p0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 251
    .local v3, numAttributes:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 252
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v4, "=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 256
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/4 v0, 0x1

    .line 262
    :cond_1
    const-string v4, "\" "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getClassNames(Lorg/xml/sax/Attributes;)Ljava/util/List;
    .locals 4
    .parameter "attrs"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    const-string v2, "class"

    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, classIndex:I
    if-gez v1, :cond_0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    .line 238
    .local v0, classArray:[Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 236
    .end local v0           #classArray:[Ljava/lang/String;
    :cond_0
    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static newTtsFormatString(Lorg/xml/sax/Attributes;)Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .locals 4
    .parameter "attrs"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 286
    const-string v2, "lang"

    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 290
    .local v1, langIndex:I
    if-gez v1, :cond_0

    const-string v0, "en"

    .line 291
    .local v0, lang:Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    const-string v3, ""

    invoke-direct {v2, v3, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 290
    .end local v0           #lang:Ljava/lang/String;
    :cond_0
    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static parseMenuAction(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "actionSpec"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 506
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, actionParams:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->validateActionSpec(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    .end local v0           #actionParams:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to parse menu action JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTopLevelElement(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/util/List;Ljava/util/EnumSet;)V
    .locals 11
    .parameter "qname"
    .parameter "attributes"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, classes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, contexts:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 413
    const-string v9, "article"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "gls-crd"

    invoke-interface {p3, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_1

    move v5, v7

    .line 415
    .local v5, isCard:Z
    :goto_0
    const-string v9, "gls-com"

    invoke-interface {p3, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_2

    move v6, v7

    .line 416
    .local v6, isCommon:Z
    :goto_1
    const-string v9, "gls-tts"

    invoke-interface {p3, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_3

    move v4, v7

    .line 417
    .local v4, isAutoTts:Z
    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    .line 451
    :cond_0
    :goto_3
    return-void

    .end local v4           #isAutoTts:Z
    .end local v5           #isCard:Z
    .end local v6           #isCommon:Z
    :cond_1
    move v5, v8

    .line 413
    goto :goto_0

    .restart local v5       #isCard:Z
    :cond_2
    move v6, v8

    .line 415
    goto :goto_1

    .restart local v6       #isCommon:Z
    :cond_3
    move v4, v8

    .line 416
    goto :goto_2

    .line 422
    .restart local v4       #isAutoTts:Z
    :cond_4
    iget-object v9, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v9, v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v5, :cond_6

    .line 423
    iget-object v9, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p4, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v3, v7

    .line 425
    .local v3, eligibleForCover:Z
    :goto_4
    sget-object v8, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p4, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v3, :cond_6

    .line 426
    iput-boolean v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->sawNonCoverBundleCard:Z

    .line 427
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    goto :goto_3

    .end local v3           #eligibleForCover:Z
    :cond_5
    move v3, v8

    .line 423
    goto :goto_4

    .line 431
    :cond_6
    iget-object v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 432
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    goto :goto_3

    .line 436
    :cond_7
    if-eqz v5, :cond_9

    .line 437
    iget-object v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-static {v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->contextualClassFor(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, contextClass:Ljava/lang/String;
    new-instance v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    invoke-direct {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;-><init>()V

    .line 440
    .local v1, card:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2, v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->getAttributesString(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, attrs:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v0, ""

    .line 442
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 443
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v7

    iput-object v1, v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    goto/16 :goto_3

    .line 444
    .end local v0           #attrs:Ljava/lang/String;
    .end local v1           #card:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    .end local v2           #contextClass:Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_a

    .line 445
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iput-object v8, v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    goto/16 :goto_3

    .line 446
    :cond_a
    if-eqz v4, :cond_0

    .line 448
    invoke-static {p2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->newTtsFormatString(Lorg/xml/sax/Attributes;)Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 449
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->AUTOPLAY_TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    iput-object v8, v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method private static validateActionSpec(Lorg/json/JSONObject;)Z
    .locals 7
    .parameter "spec"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    const-string v1, ""

    .line 521
    .local v1, actionName:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;

    move-result-object v0

    .line 522
    .local v0, action:Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;
    if-nez v0, :cond_0

    .line 523
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Ignoring action with invalid spec."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$home$search$results$HtmlAnswerCard$ParsableActionType:[I

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 570
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v4

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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_0
    return v3

    .line 527
    :pswitch_0
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Ignoring explicit READ_ALOUD action"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    move v3, v4

    .line 530
    goto :goto_0

    .line 533
    :pswitch_2
    :try_start_0
    const-string v5, "phoneNumber"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 539
    goto :goto_0

    .line 534
    :catch_0
    move-exception v2

    .line 535
    .local v2, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v4

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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    .end local v2           #e:Lorg/json/JSONException;
    :pswitch_3
    :try_start_1
    const-string v5, "address"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 549
    :try_start_2
    const-string v5, "lat"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 550
    const-string v5, "lng"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move v3, v4

    .line 556
    goto :goto_0

    .line 543
    :catch_1
    move-exception v2

    .line 544
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v4

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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    .end local v2           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 552
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v4

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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 558
    .end local v2           #e:Lorg/json/JSONException;
    :pswitch_4
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Ignoring explicit SEARCH action"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 562
    :pswitch_5
    :try_start_3
    const-string v5, "url"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move v3, v4

    .line 568
    goto/16 :goto_0

    .line 563
    :catch_3
    move-exception v2

    .line 564
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v4

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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 525
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


# virtual methods
.method public characters([CII)V
    .locals 6
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 477
    iget-object v3, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 478
    .local v1, frame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v3

    sget-object v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->NONE:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v3, v4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v3

    sget-object v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v3, v4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 482
    .local v2, newFragment:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$home$search$results$HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType:[I

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 491
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v5, v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    goto :goto_0

    .line 485
    :pswitch_1
    iget-object v0, v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 487
    .local v0, container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    iget-object v3, v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 494
    .end local v0           #container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    :pswitch_2
    iget-object v3, v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qname"

    .prologue
    .line 458
    iget v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    .line 460
    iget-object v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->endDepth:I
    invoke-static {v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$700(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)I

    move-result v2

    iget v3, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    if-ne v2, v3, :cond_1

    .line 461
    invoke-direct {p0, p3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->finishParserState(Ljava/lang/String;)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 466
    .local v1, frame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v2

    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v2, v3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v2

    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v2, v3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    :cond_2
    iget-object v0, v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 468
    .local v0, container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    iget-object v2, v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .parameter "uri"
    .parameter "localName"
    .parameter "qname"
    .parameter "attributes"

    .prologue
    .line 368
    iget v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    .line 370
    invoke-static {p4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->getClassNames(Lorg/xml/sax/Attributes;)Ljava/util/List;

    move-result-object v1

    .line 371
    .local v1, classes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->contextsFromClassNames(Ljava/util/List;)Ljava/util/EnumSet;

    move-result-object v3

    .line 372
    .local v3, contexts:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;>;"
    iget-object v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v4

    .line 374
    .local v4, currentState:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v4, v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->NONE:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v4, v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 379
    invoke-direct {p0, p3, p4, v1, v3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->startTopLevelElement(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/util/List;Ljava/util/EnumSet;)V

    goto :goto_0

    .line 383
    :cond_2
    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v4, v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v4, v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 387
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring embedded <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> tag in state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :cond_3
    invoke-direct {p0, v1, v3, p4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->advanceStateIfStartingField(Ljava/util/List;Ljava/util/EnumSet;Lorg/xml/sax/Attributes;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v4

    .line 394
    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v4, v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v4, v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 396
    :cond_4
    iget-object v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    iget-object v2, v6, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 398
    .local v2, container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    iget-object v5, v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    .line 399
    .local v5, recorder:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->getAttributesString(Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, attrs:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v0, ""

    .line 402
    :cond_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

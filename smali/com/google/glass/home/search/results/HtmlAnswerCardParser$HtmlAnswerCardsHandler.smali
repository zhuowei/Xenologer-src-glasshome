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

.field currentCard:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

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
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 574
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 548
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    .line 551
    iput v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    .line 558
    iput-object v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 562
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    invoke-direct {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 564
    iput-object v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 569
    iput-boolean v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->sawNonCoverBundleCard:Z

    .line 575
    iput-object p1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    .line 576
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    new-instance v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->NONE:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;-><init>(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;-><init>(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;)Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 516
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
    .line 716
    .local p1, classnames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, contexts:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;>;"
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 718
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 728
    :goto_0
    return-object v0

    .line 720
    :cond_0
    const-string v0, "gls-tts"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 721
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v0

    invoke-static {p3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->newTtsFormatString(Lorg/xml/sax/Attributes;)Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 722
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    goto :goto_0

    .line 724
    :cond_1
    const-string v0, "gls-ma"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 725
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ACTION:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 726
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ACTION:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    goto :goto_0

    .line 728
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
    .line 584
    .local p0, classnames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 585
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

    .line 586
    .local v0, classname:Ljava/lang/String;
    const-string v3, "gls-no-is"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->INITIAL_SEARCH:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 589
    :cond_1
    const-string v3, "gls-no-tl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 590
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 592
    :cond_2
    const-string v3, "gls-no-bdl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    .end local v0           #classname:Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method private enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    .locals 2
    .parameter "type"

    .prologue
    .line 668
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    iget v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;-><init>(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;I)V

    .line 669
    .local v0, newFrame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    iget-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    return-object v0
.end method

.method private finishParserState(Ljava/lang/String;)V
    .locals 9
    .parameter "qname"

    .prologue
    .line 677
    iget-object v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 678
    .local v4, oldFrame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    iget-object v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 679
    .local v3, nextFrame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    const/4 v1, 0x0

    .line 680
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

    .line 682
    :cond_0
    iget-object v1, v3, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .end local v1           #container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    check-cast v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 685
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

    .line 706
    :cond_2
    :goto_0
    return-void

    .line 687
    :pswitch_0
    if-eqz v1, :cond_2

    .line 688
    iget-object v6, v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v6, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    iput-object v6, v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    goto :goto_0

    .line 692
    :pswitch_1
    if-eqz v1, :cond_2

    .line 693
    iget-object v5, v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    .line 694
    .local v5, recorder:Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->parseMenuAction(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 695
    .local v2, newAction:Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 696
    iget-object v6, v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 701
    .end local v2           #newAction:Lorg/json/JSONObject;
    .end local v5           #recorder:Ljava/lang/StringBuilder;
    :pswitch_2
    iget-object v0, v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 702
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

    .line 703
    iget-object v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 685
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
    .line 644
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
    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v1, b:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 619
    .local v0, addedExtraClass:Z
    invoke-interface {p0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 620
    .local v3, numAttributes:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 621
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v4, "=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 625
    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 626
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const/4 v0, 0x1

    .line 631
    :cond_1
    const-string v4, "\" "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 634
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

    .line 636
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
    .line 604
    const-string v2, "class"

    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 605
    .local v1, classIndex:I
    if-gez v1, :cond_0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    .line 607
    .local v0, classArray:[Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 605
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
    .line 655
    const-string v2, "lang"

    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 659
    .local v1, langIndex:I
    if-gez v1, :cond_0

    const-string v0, "en"

    .line 660
    .local v0, lang:Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    const-string v3, ""

    invoke-direct {v2, v3, v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 659
    .end local v0           #lang:Ljava/lang/String;
    :cond_0
    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

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

    .line 780
    const-string v9, "article"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "gls-crd"

    invoke-interface {p3, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_1

    move v5, v7

    .line 782
    .local v5, isCard:Z
    :goto_0
    const-string v9, "gls-com"

    invoke-interface {p3, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_2

    move v6, v7

    .line 783
    .local v6, isCommon:Z
    :goto_1
    const-string v9, "gls-tts"

    invoke-interface {p3, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_3

    move v4, v7

    .line 784
    .local v4, isAutoTts:Z
    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    .line 820
    :cond_0
    :goto_3
    return-void

    .end local v4           #isAutoTts:Z
    .end local v5           #isCard:Z
    .end local v6           #isCommon:Z
    :cond_1
    move v5, v8

    .line 780
    goto :goto_0

    .restart local v5       #isCard:Z
    :cond_2
    move v6, v8

    .line 782
    goto :goto_1

    .restart local v6       #isCommon:Z
    :cond_3
    move v4, v8

    .line 783
    goto :goto_2

    .line 789
    .restart local v4       #isAutoTts:Z
    :cond_4
    iget-object v9, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v9, v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v5, :cond_6

    .line 790
    iget-object v9, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->cards:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p4, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v3, v7

    .line 792
    .local v3, eligibleForCover:Z
    :goto_4
    sget-object v8, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p4, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v3, :cond_6

    .line 793
    iput-boolean v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->sawNonCoverBundleCard:Z

    .line 794
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    goto :goto_3

    .end local v3           #eligibleForCover:Z
    :cond_5
    move v3, v8

    .line 790
    goto :goto_4

    .line 798
    :cond_6
    iget-object v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {p4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 799
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    goto :goto_3

    .line 803
    :cond_7
    if-eqz v5, :cond_9

    .line 804
    iget-object v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parsingForContext:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    #calls: Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->contextualClassFor(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;
    invoke-static {v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$700(Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;

    move-result-object v2

    .line 806
    .local v2, contextClass:Ljava/lang/String;
    new-instance v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    invoke-direct {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;-><init>()V

    .line 807
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

    .line 808
    .local v0, attrs:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v0, ""

    .line 809
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

    .line 810
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v7

    iput-object v1, v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 811
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    goto/16 :goto_3

    .line 812
    .end local v0           #attrs:Ljava/lang/String;
    .end local v1           #card:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    .end local v2           #contextClass:Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_a

    .line 813
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iput-object v8, v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 814
    iget-object v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iput-object v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    goto/16 :goto_3

    .line 815
    :cond_a
    if-eqz v4, :cond_0

    .line 817
    invoke-static {p2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->newTtsFormatString(Lorg/xml/sax/Attributes;)Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 818
    sget-object v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->AUTOPLAY_TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->enterParserState(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    iput-object v8, v7, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    goto/16 :goto_3
.end method


# virtual methods
.method public characters([CII)V
    .locals 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 849
    iget-object v4, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 850
    .local v2, frame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v4

    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->NONE:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v4, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v4

    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v4, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 856
    .local v3, newFragment:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, escapedFragment:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$home$search$results$HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType:[I

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 870
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v4, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    iget-object v6, v4, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    goto :goto_0

    .line 860
    :pswitch_1
    iget-object v0, v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 862
    .local v0, container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    iget-object v4, v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 865
    .end local v0           #container:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
    :pswitch_2
    iget-object v4, v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    iget-object v4, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iget-object v4, v4, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 857
    nop

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
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qname"

    .prologue
    .line 827
    iget v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    .line 829
    iget-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    .line 830
    .local v0, frame:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ACTION:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v1, v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iget-object v1, v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->endDepth:I
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$800(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)I

    move-result v1

    iget v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    if-ne v1, v2, :cond_2

    .line 835
    invoke-direct {p0, p3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->finishParserState(Ljava/lang/String;)V

    .line 842
    :cond_1
    :goto_0
    return-void

    .line 839
    :cond_2
    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v1, v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v1, v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    :cond_3
    iget-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iget-object v1, v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .parameter "uri"
    .parameter "localName"
    .parameter "qname"
    .parameter "attributes"

    .prologue
    .line 737
    iget v5, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->domDepth:I

    .line 739
    invoke-static {p4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->getClassNames(Lorg/xml/sax/Attributes;)Ljava/util/List;

    move-result-object v1

    .line 740
    .local v1, classes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->contextsFromClassNames(Ljava/util/List;)Ljava/util/EnumSet;

    move-result-object v2

    .line 741
    .local v2, contexts:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;>;"
    iget-object v5, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->parserState:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;

    #getter for: Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    invoke-static {v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v3

    .line 743
    .local v3, currentState:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->NONE:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 748
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->startTopLevelElement(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/util/List;Ljava/util/EnumSet;)V

    goto :goto_0

    .line 752
    :cond_2
    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 756
    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser;->access$600()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring embedded <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> tag in state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :cond_3
    invoke-direct {p0, v1, v2, p4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->advanceStateIfStartingField(Ljava/util/List;Ljava/util/EnumSet;Lorg/xml/sax/Attributes;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    move-result-object v3

    .line 763
    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ACTION:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v3, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 765
    :cond_4
    iget-object v5, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->currentCard:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    iget-object v4, v5, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    .line 766
    .local v4, recorder:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;->getAttributesString(Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, attrs:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, ""

    .line 769
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

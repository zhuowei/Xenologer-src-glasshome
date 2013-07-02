.class Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;
.super Ljava/lang/Object;
.source "HtmlAnswerCardParser.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/HtmlAnswerCardParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtmlAnswerCardsParsingState"
.end annotation


# instance fields
.field autoplayTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

.field cardBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;",
            ">;"
        }
    .end annotation
.end field

.field commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;

.field currentArticleBody:Ljava/lang/String;

.field currentArticleHeaders:Ljava/lang/String;

.field currentCardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

.field sawNonCoverBundleCard:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->cardBuilders:Ljava/util/List;

    .line 135
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->autoplayTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 137
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->commonContent:Lcom/google/glass/home/search/results/HtmlAnswerCard;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->sawNonCoverBundleCard:Z

    .line 143
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentCardBuilder:Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;

    .line 145
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleHeaders:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsParsingState;->currentArticleBody:Ljava/lang/String;

    return-void
.end method

.class public Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;
.super Ljava/lang/Object;
.source "HtmlAnswerCardParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/HtmlAnswerCardParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtmlAnswerCardResults"
.end annotation


# instance fields
.field public final autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

.field public final cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/HtmlAnswerCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;)V
    .locals 1
    .parameter
    .parameter "autoplayTtsFormatString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/HtmlAnswerCard;",
            ">;",
            "Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, cards:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/HtmlAnswerCard;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;->cards:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;->autoplayTtsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardResults;-><init>(Ljava/util/List;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;)V

    return-void
.end method

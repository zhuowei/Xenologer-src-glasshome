.class Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;
.super Ljava/lang/Object;
.source "HtmlAnswerCardParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParserFrame"
.end annotation


# instance fields
.field private endDepth:I

.field extra:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;

.field private type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;I)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "endDepth"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->this$0:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 162
    iput p3, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->endDepth:I

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->extra:Ljava/lang/Object;

    .line 164
    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->type:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$ParserFrame;->endDepth:I

    return v0
.end method

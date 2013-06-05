.class final enum Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
.super Ljava/lang/Enum;
.source "HtmlAnswerCardParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

.field public static final enum ACTION:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

.field public static final enum AUTOPLAY_TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

.field public static final enum CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

.field public static final enum COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

.field public static final enum NONE:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

.field public static final enum SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

.field public static final enum TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->NONE:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 140
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 142
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    const-string v1, "CARD"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 144
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 146
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    const-string v1, "TTS"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 148
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    const-string v1, "ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ACTION:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 150
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    const-string v1, "AUTOPLAY_TTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->AUTOPLAY_TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    .line 136
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    sget-object v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->NONE:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->SKIP:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->CARD:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->COMMON:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->ACTION:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->AUTOPLAY_TTS:Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->$VALUES:[Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    .locals 1
    .parameter "name"

    .prologue
    .line 136
    const-class v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->$VALUES:[Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    invoke-virtual {v0}, [Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/home/search/results/HtmlAnswerCardParser$HtmlAnswerCardsHandler$StateType;

    return-object v0
.end method

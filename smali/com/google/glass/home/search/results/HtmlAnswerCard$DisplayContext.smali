.class public final enum Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;
.super Ljava/lang/Enum;
.source "HtmlAnswerCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/HtmlAnswerCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

.field public static final enum BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

.field public static final enum COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

.field public static final enum INITIAL_SEARCH:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    const-string v1, "INITIAL_SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->INITIAL_SEARCH:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    new-instance v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    const-string v1, "BUNDLE"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    sget-object v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->INITIAL_SEARCH:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->$VALUES:[Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->$VALUES:[Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v0}, [Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;

    return-object v0
.end method

.class public Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
.super Ljava/lang/Object;
.source "HtmlAnswerCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/HtmlAnswerCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TtsFormatString"
.end annotation


# instance fields
.field public lang:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "lang"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public shouldReadOnDevice()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    const-string v1, "en"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    const-string v1, "en-us"

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

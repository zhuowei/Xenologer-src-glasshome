.class public Lcom/google/glass/home/search/results/AnswerData;
.super Ljava/lang/Object;
.source "AnswerData.java"


# instance fields
.field private final answer:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final disclaimer:Ljava/lang/String;

.field private final image:Lcom/google/majel/proto/PeanutProtos$Image;

.field private final imageSource:Lcom/google/majel/proto/AttributionProtos$Attribution;

.field private final isMediumConfidence:Z

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/AttributionProtos$Attribution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "answer"
    .parameter "description"

    .prologue
    const/4 v3, 0x0

    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/home/search/results/AnswerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/majel/proto/AttributionProtos$Attribution;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/majel/proto/AttributionProtos$Attribution;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Ljava/lang/String;)V
    .locals 8
    .parameter "answer"
    .parameter "description"
    .parameter "source"
    .parameter "image"
    .parameter "imageSource"
    .parameter "disclaimer"

    .prologue
    const/4 v7, 0x0

    .line 27
    if-nez p3, :cond_0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/home/search/results/AnswerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Ljava/lang/String;Z)V

    .line 31
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/majel/proto/AttributionProtos$Attribution;

    aput-object p3, v0, v7

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Ljava/lang/String;Z)V
    .locals 1
    .parameter "answer"
    .parameter "description"
    .parameter
    .parameter "image"
    .parameter "imageSource"
    .parameter "disclaimer"
    .parameter "isMediumConfidence"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/AttributionProtos$Attribution;",
            ">;",
            "Lcom/google/majel/proto/PeanutProtos$Image;",
            "Lcom/google/majel/proto/AttributionProtos$Attribution;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, sources:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/AttributionProtos$Attribution;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/glass/home/search/results/AnswerData;->answer:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/glass/home/search/results/AnswerData;->description:Ljava/lang/String;

    .line 39
    if-nez p3, :cond_0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/glass/home/search/results/AnswerData;->sources:Ljava/util/List;

    .line 41
    iput-object p4, p0, Lcom/google/glass/home/search/results/AnswerData;->image:Lcom/google/majel/proto/PeanutProtos$Image;

    .line 42
    iput-object p5, p0, Lcom/google/glass/home/search/results/AnswerData;->imageSource:Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 43
    iput-object p6, p0, Lcom/google/glass/home/search/results/AnswerData;->disclaimer:Ljava/lang/String;

    .line 44
    iput-boolean p7, p0, Lcom/google/glass/home/search/results/AnswerData;->isMediumConfidence:Z

    .line 45
    return-void

    .line 39
    :cond_0
    invoke-static {p3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAnswer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/home/search/results/AnswerData;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswerDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/home/search/results/AnswerData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/home/search/results/AnswerData;->disclaimer:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/home/search/results/AnswerData;->image:Lcom/google/majel/proto/PeanutProtos$Image;

    return-object v0
.end method

.method public getImageSource()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/home/search/results/AnswerData;->imageSource:Lcom/google/majel/proto/AttributionProtos$Attribution;

    return-object v0
.end method

.method public getSource()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/home/search/results/AnswerData;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/search/results/AnswerData;->sources:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    goto :goto_0
.end method

.method public getSourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/AttributionProtos$Attribution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/home/search/results/AnswerData;->sources:Ljava/util/List;

    return-object v0
.end method

.method public isMediumConfidence()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/glass/home/search/results/AnswerData;->isMediumConfidence:Z

    return v0
.end method

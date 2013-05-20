.class public Lcom/google/glass/voice/SensoryResult;
.super Ljava/lang/Object;
.source "SensoryResult.java"


# instance fields
.field private alignmentInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final literal:Ljava/lang/String;

.field private final score:F

.field final wordAlignment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;)V
    .locals 0
    .parameter "literal"
    .parameter "score"
    .parameter "wordAlignment"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/glass/voice/SensoryResult;->literal:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/google/glass/voice/SensoryResult;->score:F

    .line 33
    iput-object p3, p0, Lcom/google/glass/voice/SensoryResult;->wordAlignment:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method getAlignmentInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v3, p0, Lcom/google/glass/voice/SensoryResult;->alignmentInfoList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 62
    const-string v3, "\n"

    invoke-static {v3}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/SensoryResult;->wordAlignment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    .line 64
    .local v1, alignmentSegments:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/google/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/SensoryResult;->alignmentInfoList:Ljava/util/List;

    .line 65
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, alignmentSegment:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/voice/SensoryResult;->alignmentInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/google/glass/voice/AlignmentInfo;->parseSensoryAlignmentSegment(Ljava/lang/String;)Lcom/google/glass/voice/AlignmentInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0           #alignmentSegment:Ljava/lang/String;
    .end local v1           #alignmentSegments:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/SensoryResult;->alignmentInfoList:Ljava/util/List;

    return-object v3
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/voice/SensoryResult;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public getPhraseDurationMillis()J
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/voice/SensoryResult;->getPhraseEndMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/glass/voice/SensoryResult;->getPhraseStartMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPhraseEndMillis()J
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/glass/voice/SensoryResult;->getAlignmentInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/AlignmentInfo;

    iget-wide v0, v0, Lcom/google/glass/voice/AlignmentInfo;->endMillis:J

    return-wide v0
.end method

.method public getPhraseStartMillis()J
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/glass/voice/SensoryResult;->getAlignmentInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/AlignmentInfo;

    iget-wide v0, v0, Lcom/google/glass/voice/AlignmentInfo;->startMillis:J

    return-wide v0
.end method

.method public getScore()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/glass/voice/SensoryResult;->score:F

    return v0
.end method

.method getWordAlignmentRawString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/voice/SensoryResult;->wordAlignment:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensoryResult [literal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/SensoryResult;->literal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/voice/SensoryResult;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wordAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/SensoryResult;->wordAlignment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

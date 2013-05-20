.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PartialResult"
.end annotation


# static fields
.field public static final END_TIME_USEC_FIELD_NUMBER:I = 0x3

.field public static final HOTWORD_CONFIDENCE_FIELD_NUMBER:I = 0x8

.field public static final HOTWORD_CONF_FEATURE_FIELD_NUMBER:I = 0x7

.field public static final HOTWORD_FIRED_FIELD_NUMBER:I = 0x9

.field public static final PART_FIELD_NUMBER:I = 0x1

.field public static final PHONE_ALIGN_FIELD_NUMBER:I = 0x5

.field public static final START_TIME_USEC_FIELD_NUMBER:I = 0x2

.field public static final STATE_ALIGN_FIELD_NUMBER:I = 0xa

.field public static final WORD_ALIGN_FIELD_NUMBER:I = 0x4

.field public static final WORD_CONF_FEATURE_FIELD_NUMBER:I = 0x6


# instance fields
.field private cachedSize:I

.field private endTimeUsec_:J

.field private hasEndTimeUsec:Z

.field private hasHotwordConfFeature:Z

.field private hasHotwordConfidence:Z

.field private hasHotwordFired:Z

.field private hasPhoneAlign:Z

.field private hasStartTimeUsec:Z

.field private hasStateAlign:Z

.field private hasWordAlign:Z

.field private hotwordConfFeature_:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

.field private hotwordConfidence_:F

.field private hotwordFired_:Z

.field private part_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;",
            ">;"
        }
    .end annotation
.end field

.field private phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field private startTimeUsec_:J

.field private stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field private wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field private wordConfFeature_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1432
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part_:Ljava/util/List;

    .line 1470
    iput-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    .line 1487
    iput-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    .line 1504
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1524
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1544
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1563
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature_:Ljava/util/List;

    .line 1597
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature_:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 1617
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    .line 1634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    .line 1714
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->cachedSize:I

    .line 1432
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1850
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1844
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    return-object v0
.end method


# virtual methods
.method public addPart(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1453
    if-nez p1, :cond_0

    .line 1454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part_:Ljava/util/List;

    .line 1459
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    return-object p0
.end method

.method public addWordConfFeature(Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1580
    if-nez p1, :cond_0

    .line 1581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature_:Ljava/util/List;

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    return-object p0
.end method

.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearPart()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1650
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearStartTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1651
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearEndTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1652
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearWordAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1653
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearPhoneAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1654
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearStateAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1655
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearWordConfFeature()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1656
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearHotwordConfFeature()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1657
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearHotwordConfidence()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1658
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clearHotwordFired()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1659
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->cachedSize:I

    .line 1660
    return-object p0
.end method

.method public clearEndTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 2

    .prologue
    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasEndTimeUsec:Z

    .line 1497
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    .line 1498
    return-object p0
.end method

.method public clearHotwordConfFeature()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfFeature:Z

    .line 1610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature_:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 1611
    return-object p0
.end method

.method public clearHotwordConfidence()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfidence:Z

    .line 1627
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    .line 1628
    return-object p0
.end method

.method public clearHotwordFired()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1643
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordFired:Z

    .line 1644
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    .line 1645
    return-object p0
.end method

.method public clearPart()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part_:Ljava/util/List;

    .line 1464
    return-object p0
.end method

.method public clearPhoneAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasPhoneAlign:Z

    .line 1537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1538
    return-object p0
.end method

.method public clearStartTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 2

    .prologue
    .line 1479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStartTimeUsec:Z

    .line 1480
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    .line 1481
    return-object p0
.end method

.method public clearStateAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStateAlign:Z

    .line 1557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1558
    return-object p0
.end method

.method public clearWordAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasWordAlign:Z

    .line 1517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1518
    return-object p0
.end method

.method public clearWordConfFeature()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1590
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature_:Ljava/util/List;

    .line 1591
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1717
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 1719
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getSerializedSize()I

    .line 1721
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->cachedSize:I

    return v0
.end method

.method public getEndTimeUsec()J
    .locals 2

    .prologue
    .line 1488
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    return-wide v0
.end method

.method public getHotwordConfFeature()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature_:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    return-object v0
.end method

.method public getHotwordConfidence()F
    .locals 1

    .prologue
    .line 1618
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    return v0
.end method

.method public getHotwordFired()Z
    .locals 1

    .prologue
    .line 1635
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    return v0
.end method

.method public getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .parameter "index"

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    return-object v0
.end method

.method public getPartCount()I
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPartList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1726
    const/4 v2, 0x0

    .line 1727
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1728
    .local v0, element:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1731
    .end local v0           #element:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStartTimeUsec()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1732
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStartTimeUsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1735
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasEndTimeUsec()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1736
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getEndTimeUsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1739
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasWordAlign()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1740
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getWordAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1743
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasPhoneAlign()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1744
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPhoneAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1747
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getWordConfFeatureList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 1748
    .local v0, element:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 1751
    .end local v0           #element:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfFeature()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1752
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfFeature()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1755
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfidence()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1756
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfidence()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 1759
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordFired()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1760
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordFired()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1763
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStateAlign()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1764
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStateAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1767
    :cond_9
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->cachedSize:I

    .line 1768
    return v2
.end method

.method public getStartTimeUsec()J
    .locals 2

    .prologue
    .line 1471
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    return-wide v0
.end method

.method public getStateAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    return-object v0
.end method

.method public getWordAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    return-object v0
.end method

.method public getWordConfFeature(I)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "index"

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    return-object v0
.end method

.method public getWordConfFeatureCount()I
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWordConfFeatureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature_:Ljava/util/List;

    return-object v0
.end method

.method public hasEndTimeUsec()Z
    .locals 1

    .prologue
    .line 1489
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasEndTimeUsec:Z

    return v0
.end method

.method public hasHotwordConfFeature()Z
    .locals 1

    .prologue
    .line 1598
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfFeature:Z

    return v0
.end method

.method public hasHotwordConfidence()Z
    .locals 1

    .prologue
    .line 1619
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfidence:Z

    return v0
.end method

.method public hasHotwordFired()Z
    .locals 1

    .prologue
    .line 1636
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordFired:Z

    return v0
.end method

.method public hasPhoneAlign()Z
    .locals 1

    .prologue
    .line 1525
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasPhoneAlign:Z

    return v0
.end method

.method public hasStartTimeUsec()Z
    .locals 1

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStartTimeUsec:Z

    return v0
.end method

.method public hasStateAlign()Z
    .locals 1

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStateAlign:Z

    return v0
.end method

.method public hasWordAlign()Z
    .locals 1

    .prologue
    .line 1505
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasWordAlign:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1664
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1665
    .local v0, element:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1676
    .end local v0           #element:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :cond_1
    :goto_0
    return v2

    .line 1667
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasWordAlign()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1668
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getWordAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1670
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasPhoneAlign()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1671
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPhoneAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1673
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStateAlign()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1674
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStateAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1676
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1776
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1777
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1781
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1782
    :sswitch_0
    return-object p0

    .line 1787
    :sswitch_1
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;-><init>()V

    .line 1788
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1789
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->addPart(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1793
    .end local v1           #value:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->setStartTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1797
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->setEndTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1801
    :sswitch_4
    new-instance v1, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    .line 1802
    .local v1, value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1803
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->setWordAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1807
    .end local v1           #value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    :sswitch_5
    new-instance v1, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    .line 1808
    .restart local v1       #value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1809
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->setPhoneAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1813
    .end local v1           #value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    :sswitch_6
    new-instance v1, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    .line 1814
    .local v1, value:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1815
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->addWordConfFeature(Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1819
    .end local v1           #value:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :sswitch_7
    new-instance v1, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;-><init>()V

    .line 1820
    .local v1, value:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1821
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->setHotwordConfFeature(Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1825
    .end local v1           #value:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->setHotwordConfidence(F)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1829
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->setHotwordFired(Z)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1833
    :sswitch_a
    new-instance v1, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    .line 1834
    .local v1, value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1835
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->setStateAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 1777
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x45 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public setEndTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasEndTimeUsec:Z

    .line 1492
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    .line 1493
    return-object p0
.end method

.method public setHotwordConfFeature(Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1601
    if-nez p1, :cond_0

    .line 1602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1604
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfFeature:Z

    .line 1605
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature_:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 1606
    return-object p0
.end method

.method public setHotwordConfidence(F)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfidence:Z

    .line 1622
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    .line 1623
    return-object p0
.end method

.method public setHotwordFired(Z)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordFired:Z

    .line 1639
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    .line 1640
    return-object p0
.end method

.method public setPart(ILcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1446
    if-nez p2, :cond_0

    .line 1447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1450
    return-object p0
.end method

.method public setPhoneAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1528
    if-nez p1, :cond_0

    .line 1529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1531
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasPhoneAlign:Z

    .line 1532
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1533
    return-object p0
.end method

.method public setStartTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStartTimeUsec:Z

    .line 1475
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    .line 1476
    return-object p0
.end method

.method public setStateAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1548
    if-nez p1, :cond_0

    .line 1549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1551
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStateAlign:Z

    .line 1552
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1553
    return-object p0
.end method

.method public setWordAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1508
    if-nez p1, :cond_0

    .line 1509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1511
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasWordAlign:Z

    .line 1512
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1513
    return-object p0
.end method

.method public setWordConfFeature(ILcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1573
    if-nez p2, :cond_0

    .line 1574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1577
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1682
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1683
    .local v0, element:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1685
    .end local v0           #element:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStartTimeUsec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1686
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStartTimeUsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1688
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasEndTimeUsec()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1689
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getEndTimeUsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1691
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasWordAlign()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1692
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getWordAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1694
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasPhoneAlign()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1695
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPhoneAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1697
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getWordConfFeatureList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 1698
    .local v0, element:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1700
    .end local v0           #element:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfFeature()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1701
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfFeature()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1703
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordConfidence()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1704
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1706
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasHotwordFired()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1707
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordFired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1709
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hasStateAlign()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1710
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStateAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1712
    :cond_9
    return-void
.end method

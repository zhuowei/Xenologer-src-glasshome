.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegularSeasonStandings"
.end annotation


# static fields
.field public static final ASSOCIATION_NAME_FIELD_NUMBER:I = 0x1

.field public static final ASSOCIATION_STANDING_FIELD_NUMBER:I = 0x2

.field public static final POINTS_FIELD_NUMBER:I = 0x3

.field public static final RECORD_FIELD_NUMBER:I = 0x4

.field public static final WIN_PERCENTAGE_FIELD_NUMBER:I = 0x5


# instance fields
.field private associationName_:Ljava/lang/String;

.field private associationStanding_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAssociationName:Z

.field private hasAssociationStanding:Z

.field private hasPoints:Z

.field private hasWinPercentage:Z

.field private points_:I

.field private record_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private winPercentage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8445
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    .line 8467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    .line 8484
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    .line 8500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record_:Ljava/util/List;

    .line 8528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    .line 8576
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->cachedSize:I

    .line 8445
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8665
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8659
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    return-object v0
.end method


# virtual methods
.method public addRecord(I)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 2
    .parameter "value"

    .prologue
    .line 8514
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record_:Ljava/util/List;

    .line 8517
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8518
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 8543
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->clearAssociationName()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 8544
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->clearAssociationStanding()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 8545
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->clearPoints()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 8546
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->clearRecord()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 8547
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->clearWinPercentage()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 8548
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->cachedSize:I

    .line 8549
    return-object p0
.end method

.method public clearAssociationName()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 8459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationName:Z

    .line 8460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    .line 8461
    return-object p0
.end method

.method public clearAssociationStanding()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 8476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationStanding:Z

    .line 8477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    .line 8478
    return-object p0
.end method

.method public clearPoints()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8493
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasPoints:Z

    .line 8494
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    .line 8495
    return-object p0
.end method

.method public clearRecord()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 8521
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record_:Ljava/util/List;

    .line 8522
    return-object p0
.end method

.method public clearWinPercentage()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 8537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasWinPercentage:Z

    .line 8538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    .line 8539
    return-object p0
.end method

.method public getAssociationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8451
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssociationStanding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8468
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8579
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->cachedSize:I

    if-gez v0, :cond_0

    .line 8581
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getSerializedSize()I

    .line 8583
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->cachedSize:I

    return v0
.end method

.method public getPoints()I
    .locals 1

    .prologue
    .line 8485
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    return v0
.end method

.method public getRecord(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 8507
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordCount()I
    .locals 1

    .prologue
    .line 8505
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8503
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 8588
    const/4 v3, 0x0

    .line 8589
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8590
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getAssociationName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 8593
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationStanding()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8594
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getAssociationStanding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 8597
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasPoints()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8598
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getPoints()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 8602
    :cond_2
    const/4 v0, 0x0

    .line 8603
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getRecordList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8604
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 8607
    .end local v1           #element:I
    :cond_3
    add-int/2addr v3, v0

    .line 8608
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getRecordList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 8610
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasWinPercentage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8611
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getWinPercentage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 8614
    :cond_4
    iput v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->cachedSize:I

    .line 8615
    return v3
.end method

.method public getWinPercentage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8529
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAssociationName()Z
    .locals 1

    .prologue
    .line 8452
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationName:Z

    return v0
.end method

.method public hasAssociationStanding()Z
    .locals 1

    .prologue
    .line 8469
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationStanding:Z

    return v0
.end method

.method public hasPoints()Z
    .locals 1

    .prologue
    .line 8486
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasPoints:Z

    return v0
.end method

.method public hasWinPercentage()Z
    .locals 1

    .prologue
    .line 8530
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasWinPercentage:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8553
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8623
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8624
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8628
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8629
    :sswitch_0
    return-object p0

    .line 8634
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->setAssociationName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    goto :goto_0

    .line 8638
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->setAssociationStanding(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    goto :goto_0

    .line 8642
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->setPoints(I)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    goto :goto_0

    .line 8646
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->addRecord(I)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    goto :goto_0

    .line 8650
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->setWinPercentage(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    goto :goto_0

    .line 8624
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
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
    .line 8442
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    move-result-object v0

    return-object v0
.end method

.method public setAssociationName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .parameter "value"

    .prologue
    .line 8454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationName:Z

    .line 8455
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    .line 8456
    return-object p0
.end method

.method public setAssociationStanding(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .parameter "value"

    .prologue
    .line 8471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationStanding:Z

    .line 8472
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    .line 8473
    return-object p0
.end method

.method public setPoints(I)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .parameter "value"

    .prologue
    .line 8488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasPoints:Z

    .line 8489
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    .line 8490
    return-object p0
.end method

.method public setRecord(II)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8510
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8511
    return-object p0
.end method

.method public setWinPercentage(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .parameter "value"

    .prologue
    .line 8532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasWinPercentage:Z

    .line 8533
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    .line 8534
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8559
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8560
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getAssociationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8562
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasAssociationStanding()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8563
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getAssociationStanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8565
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasPoints()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8566
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getPoints()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8568
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getRecordList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8569
    .local v0, element:I
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 8571
    .end local v0           #element:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->hasWinPercentage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8572
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->getWinPercentage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8574
    :cond_4
    return-void
.end method

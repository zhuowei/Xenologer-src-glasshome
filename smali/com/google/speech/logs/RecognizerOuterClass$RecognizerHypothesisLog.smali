.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerHypothesisLog"
.end annotation


# static fields
.field public static final AM_COST_FIELD_NUMBER:I = 0x5

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x3

.field public static final HYPOTHESIS_FIELD_NUMBER:I = 0x2

.field public static final IS_REDACTED_FIELD_NUMBER:I = 0x7

.field public static final LM_COST_FIELD_NUMBER:I = 0x6

.field public static final PRENORM_HYPOTHESIS_FIELD_NUMBER:I = 0x1

.field public static final RECOGNIZER_COST_FIELD_NUMBER:I = 0x4


# instance fields
.field private amCost_:F

.field private cachedSize:I

.field private confidence_:F

.field private hasAmCost:Z

.field private hasConfidence:Z

.field private hasHypothesis:Z

.field private hasIsRedacted:Z

.field private hasLmCost:Z

.field private hasPrenormHypothesis:Z

.field private hasRecognizerCost:Z

.field private hypothesis_:Ljava/lang/String;

.field private isRedacted_:Z

.field private lmCost_:F

.field private prenormHypothesis_:Ljava/lang/String;

.field private recognizerCost_:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1322
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 1344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 1361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 1378
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 1395
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 1412
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 1429
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 1485
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    .line 1322
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1585
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1579
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearPrenormHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1445
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1446
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearIsRedacted()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1447
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1448
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearRecognizerCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1449
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearAmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1450
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearLmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1451
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    .line 1452
    return-object p0
.end method

.method public clearAmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost:Z

    .line 1422
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 1423
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence:Z

    .line 1388
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 1389
    return-object p0
.end method

.method public clearHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis:Z

    .line 1354
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 1355
    return-object p0
.end method

.method public clearIsRedacted()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1370
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted:Z

    .line 1371
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 1372
    return-object p0
.end method

.method public clearLmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost:Z

    .line 1439
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 1440
    return-object p0
.end method

.method public clearPrenormHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis:Z

    .line 1337
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 1338
    return-object p0
.end method

.method public clearRecognizerCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost:Z

    .line 1405
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 1406
    return-object p0
.end method

.method public getAmCost()F
    .locals 1

    .prologue
    .line 1413
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1488
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getSerializedSize()I

    .line 1492
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1379
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    return v0
.end method

.method public getHypothesis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRedacted()Z
    .locals 1

    .prologue
    .line 1362
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    return v0
.end method

.method public getLmCost()F
    .locals 1

    .prologue
    .line 1430
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    return v0
.end method

.method public getPrenormHypothesis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerCost()F
    .locals 1

    .prologue
    .line 1396
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1497
    const/4 v0, 0x0

    .line 1498
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1499
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getPrenormHypothesis()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1502
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1503
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getHypothesis()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1506
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1507
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getConfidence()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1510
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1511
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getRecognizerCost()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1514
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1515
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getAmCost()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1518
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1519
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getLmCost()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1522
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1523
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getIsRedacted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1526
    :cond_6
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    .line 1527
    return v0
.end method

.method public hasAmCost()Z
    .locals 1

    .prologue
    .line 1414
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost:Z

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1380
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence:Z

    return v0
.end method

.method public hasHypothesis()Z
    .locals 1

    .prologue
    .line 1346
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis:Z

    return v0
.end method

.method public hasIsRedacted()Z
    .locals 1

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted:Z

    return v0
.end method

.method public hasLmCost()Z
    .locals 1

    .prologue
    .line 1431
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost:Z

    return v0
.end method

.method public hasPrenormHypothesis()Z
    .locals 1

    .prologue
    .line 1329
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis:Z

    return v0
.end method

.method public hasRecognizerCost()Z
    .locals 1

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1456
    const/4 v0, 0x1

    return v0
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
    .line 1319
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1535
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1536
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1540
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1541
    :sswitch_0
    return-object p0

    .line 1546
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setPrenormHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1550
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1554
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1558
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setRecognizerCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1562
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setAmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1566
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setLmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1570
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setIsRedacted(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1536
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setAmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost:Z

    .line 1417
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 1418
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence:Z

    .line 1383
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 1384
    return-object p0
.end method

.method public setHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis:Z

    .line 1349
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 1350
    return-object p0
.end method

.method public setIsRedacted(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted:Z

    .line 1366
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 1367
    return-object p0
.end method

.method public setLmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost:Z

    .line 1434
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 1435
    return-object p0
.end method

.method public setPrenormHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis:Z

    .line 1332
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 1333
    return-object p0
.end method

.method public setRecognizerCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost:Z

    .line 1400
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 1401
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1462
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getPrenormHypothesis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getHypothesis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1468
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1469
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getConfidence()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1471
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1472
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getRecognizerCost()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1474
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1475
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getAmCost()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1477
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1478
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getLmCost()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1480
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1481
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getIsRedacted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1483
    :cond_6
    return-void
.end method

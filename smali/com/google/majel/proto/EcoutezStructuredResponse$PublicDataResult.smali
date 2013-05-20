.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublicDataResult"
.end annotation


# static fields
.field public static final DISCLAIMER_TEXT_FIELD_NUMBER:I = 0x9

.field public static final DISCLAIMER_URL_FIELD_NUMBER:I = 0x8

.field public static final SOURCE_LABEL_FIELD_NUMBER:I = 0x6

.field public static final SOURCE_NAME_FIELD_NUMBER:I = 0x7

.field public static final SYMBOL_AFTER_FIELD_NUMBER:I = 0x3

.field public static final SYMBOL_BEFORE_FIELD_NUMBER:I = 0x1

.field public static final TIME_FIELD_NUMBER:I = 0x5

.field public static final UNIT_FIELD_NUMBER:I = 0x4

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private disclaimerText_:Ljava/lang/String;

.field private disclaimerUrl_:Ljava/lang/String;

.field private hasDisclaimerText:Z

.field private hasDisclaimerUrl:Z

.field private hasSourceLabel:Z

.field private hasSourceName:Z

.field private hasSymbolAfter:Z

.field private hasSymbolBefore:Z

.field private hasTime:Z

.field private hasUnit:Z

.field private hasValue:Z

.field private sourceLabel_:Ljava/lang/String;

.field private sourceName_:Ljava/lang/String;

.field private symbolAfter_:Ljava/lang/String;

.field private symbolBefore_:Ljava/lang/String;

.field private time_:Ljava/lang/String;

.field private unit_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10299
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    .line 10321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    .line 10338
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    .line 10355
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    .line 10372
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    .line 10389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    .line 10406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    .line 10423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    .line 10440
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    .line 10504
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->cachedSize:I

    .line 10299
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10620
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 10614
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10455
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clearSymbolBefore()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 10456
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clearValue()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 10457
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clearSymbolAfter()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 10458
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clearUnit()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 10459
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clearTime()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 10460
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clearSourceLabel()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 10461
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clearSourceName()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 10462
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clearDisclaimerUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 10463
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clearDisclaimerText()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 10464
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->cachedSize:I

    .line 10465
    return-object p0
.end method

.method public clearDisclaimerText()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerText:Z

    .line 10450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    .line 10451
    return-object p0
.end method

.method public clearDisclaimerUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerUrl:Z

    .line 10433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    .line 10434
    return-object p0
.end method

.method public clearSourceLabel()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceLabel:Z

    .line 10399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    .line 10400
    return-object p0
.end method

.method public clearSourceName()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceName:Z

    .line 10416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    .line 10417
    return-object p0
.end method

.method public clearSymbolAfter()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolAfter:Z

    .line 10348
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    .line 10349
    return-object p0
.end method

.method public clearSymbolBefore()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolBefore:Z

    .line 10314
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    .line 10315
    return-object p0
.end method

.method public clearTime()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasTime:Z

    .line 10382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    .line 10383
    return-object p0
.end method

.method public clearUnit()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasUnit:Z

    .line 10365
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    .line 10366
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 10330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasValue:Z

    .line 10331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    .line 10332
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10507
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 10509
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getSerializedSize()I

    .line 10511
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->cachedSize:I

    return v0
.end method

.method public getDisclaimerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10441
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10424
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10516
    const/4 v0, 0x0

    .line 10517
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolBefore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10518
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getSymbolBefore()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10521
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10522
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10525
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolAfter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10526
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getSymbolAfter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10529
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasUnit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10530
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10533
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10534
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10537
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceLabel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10538
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getSourceLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10541
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceName()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10542
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10545
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerUrl()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10546
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getDisclaimerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10549
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerText()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 10550
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getDisclaimerText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10553
    :cond_8
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->cachedSize:I

    .line 10554
    return v0
.end method

.method public getSourceLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10390
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10407
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10339
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10305
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10373
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10356
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10322
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisclaimerText()Z
    .locals 1

    .prologue
    .line 10442
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerText:Z

    return v0
.end method

.method public hasDisclaimerUrl()Z
    .locals 1

    .prologue
    .line 10425
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerUrl:Z

    return v0
.end method

.method public hasSourceLabel()Z
    .locals 1

    .prologue
    .line 10391
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceLabel:Z

    return v0
.end method

.method public hasSourceName()Z
    .locals 1

    .prologue
    .line 10408
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceName:Z

    return v0
.end method

.method public hasSymbolAfter()Z
    .locals 1

    .prologue
    .line 10340
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolAfter:Z

    return v0
.end method

.method public hasSymbolBefore()Z
    .locals 1

    .prologue
    .line 10306
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolBefore:Z

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 10374
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasTime:Z

    return v0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 10357
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasUnit:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 10323
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10469
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10562
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10563
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10567
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10568
    :sswitch_0
    return-object p0

    .line 10573
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->setSymbolBefore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    goto :goto_0

    .line 10577
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->setValue(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    goto :goto_0

    .line 10581
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->setSymbolAfter(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    goto :goto_0

    .line 10585
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->setUnit(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    goto :goto_0

    .line 10589
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->setTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    goto :goto_0

    .line 10593
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->setSourceLabel(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    goto :goto_0

    .line 10597
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->setSourceName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    goto :goto_0

    .line 10601
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->setDisclaimerUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    goto :goto_0

    .line 10605
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->setDisclaimerText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    goto :goto_0

    .line 10563
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
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
    .line 10296
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    move-result-object v0

    return-object v0
.end method

.method public setDisclaimerText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerText:Z

    .line 10445
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    .line 10446
    return-object p0
.end method

.method public setDisclaimerUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerUrl:Z

    .line 10428
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    .line 10429
    return-object p0
.end method

.method public setSourceLabel(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceLabel:Z

    .line 10394
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    .line 10395
    return-object p0
.end method

.method public setSourceName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceName:Z

    .line 10411
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    .line 10412
    return-object p0
.end method

.method public setSymbolAfter(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolAfter:Z

    .line 10343
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    .line 10344
    return-object p0
.end method

.method public setSymbolBefore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolBefore:Z

    .line 10309
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    .line 10310
    return-object p0
.end method

.method public setTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasTime:Z

    .line 10377
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    .line 10378
    return-object p0
.end method

.method public setUnit(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasUnit:Z

    .line 10360
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    .line 10361
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasValue:Z

    .line 10326
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    .line 10327
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
    .line 10475
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10476
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getSymbolBefore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10478
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10479
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10481
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSymbolAfter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10482
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getSymbolAfter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10484
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10485
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10487
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10488
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10490
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceLabel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10491
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getSourceLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10493
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasSourceName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10494
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10496
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10497
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getDisclaimerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10499
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->hasDisclaimerText()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10500
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->getDisclaimerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10502
    :cond_8
    return-void
.end method

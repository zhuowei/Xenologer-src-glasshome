.class public final Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientSideAction"
.end annotation


# static fields
.field public static final EMAIL_FIELD_NUMBER:I = 0x5

.field public static final IDENTIFY_AUDIO_FIELD_NUMBER:I = 0x4

.field public static final NAVIGATE_FIELD_NUMBER:I = 0x3

.field public static final PHONE_FIELD_NUMBER:I = 0x1

.field public static final SMS_FIELD_NUMBER:I = 0x2

.field public static final TV_CONTROL_FIELD_NUMBER:I = 0x6


# instance fields
.field private cachedSize:I

.field private email_:Lcom/google/majel/proto/ActionProtos$Email;

.field private hasEmail:Z

.field private hasIdentifyAudio:Z

.field private hasNavigate:Z

.field private hasPhone:Z

.field private hasSms:Z

.field private hasTvControl:Z

.field private identifyAudio_:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

.field private navigate_:Lcom/google/majel/proto/ActionProtos$Navigate;

.field private phone_:Lcom/google/majel/proto/ActionProtos$Phone;

.field private sms_:Lcom/google/majel/proto/ActionProtos$Sms;

.field private tvControl_:Lcom/google/majel/proto/ActionProtos$TvControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1308
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1313
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone_:Lcom/google/majel/proto/ActionProtos$Phone;

    .line 1333
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms_:Lcom/google/majel/proto/ActionProtos$Sms;

    .line 1353
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate_:Lcom/google/majel/proto/ActionProtos$Navigate;

    .line 1373
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio_:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    .line 1393
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email_:Lcom/google/majel/proto/ActionProtos$Email;

    .line 1413
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl_:Lcom/google/majel/proto/ActionProtos$TvControl;

    .line 1468
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->cachedSize:I

    .line 1308
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1572
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1566
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1

    .prologue
    .line 1431
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->clearPhone()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 1432
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->clearSms()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 1433
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->clearNavigate()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 1434
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->clearIdentifyAudio()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 1435
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->clearEmail()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 1436
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->clearTvControl()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 1437
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->cachedSize:I

    .line 1438
    return-object p0
.end method

.method public clearEmail()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasEmail:Z

    .line 1406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email_:Lcom/google/majel/proto/ActionProtos$Email;

    .line 1407
    return-object p0
.end method

.method public clearIdentifyAudio()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1

    .prologue
    .line 1385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasIdentifyAudio:Z

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio_:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    .line 1387
    return-object p0
.end method

.method public clearNavigate()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1

    .prologue
    .line 1365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasNavigate:Z

    .line 1366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate_:Lcom/google/majel/proto/ActionProtos$Navigate;

    .line 1367
    return-object p0
.end method

.method public clearPhone()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1

    .prologue
    .line 1325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasPhone:Z

    .line 1326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone_:Lcom/google/majel/proto/ActionProtos$Phone;

    .line 1327
    return-object p0
.end method

.method public clearSms()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasSms:Z

    .line 1346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms_:Lcom/google/majel/proto/ActionProtos$Sms;

    .line 1347
    return-object p0
.end method

.method public clearTvControl()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1

    .prologue
    .line 1425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasTvControl:Z

    .line 1426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl_:Lcom/google/majel/proto/ActionProtos$TvControl;

    .line 1427
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 1473
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getSerializedSize()I

    .line 1475
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->cachedSize:I

    return v0
.end method

.method public getEmail()Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email_:Lcom/google/majel/proto/ActionProtos$Email;

    return-object v0
.end method

.method public getIdentifyAudio()Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio_:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    return-object v0
.end method

.method public getNavigate()Lcom/google/majel/proto/ActionProtos$Navigate;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate_:Lcom/google/majel/proto/ActionProtos$Navigate;

    return-object v0
.end method

.method public getPhone()Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone_:Lcom/google/majel/proto/ActionProtos$Phone;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1480
    const/4 v0, 0x0

    .line 1481
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1482
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getPhone()Lcom/google/majel/proto/ActionProtos$Phone;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1485
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasSms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1486
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getSms()Lcom/google/majel/proto/ActionProtos$Sms;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1489
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasNavigate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1490
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getNavigate()Lcom/google/majel/proto/ActionProtos$Navigate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1493
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasIdentifyAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1494
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getIdentifyAudio()Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1497
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1498
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getEmail()Lcom/google/majel/proto/ActionProtos$Email;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1501
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasTvControl()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1502
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getTvControl()Lcom/google/majel/proto/ActionProtos$TvControl;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1505
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->cachedSize:I

    .line 1506
    return v0
.end method

.method public getSms()Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms_:Lcom/google/majel/proto/ActionProtos$Sms;

    return-object v0
.end method

.method public getTvControl()Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl_:Lcom/google/majel/proto/ActionProtos$TvControl;

    return-object v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 1394
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasEmail:Z

    return v0
.end method

.method public hasIdentifyAudio()Z
    .locals 1

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasIdentifyAudio:Z

    return v0
.end method

.method public hasNavigate()Z
    .locals 1

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasNavigate:Z

    return v0
.end method

.method public hasPhone()Z
    .locals 1

    .prologue
    .line 1314
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasPhone:Z

    return v0
.end method

.method public hasSms()Z
    .locals 1

    .prologue
    .line 1334
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasSms:Z

    return v0
.end method

.method public hasTvControl()Z
    .locals 1

    .prologue
    .line 1414
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasTvControl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1442
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1514
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1515
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1519
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1520
    :sswitch_0
    return-object p0

    .line 1525
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Phone;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Phone;-><init>()V

    .line 1526
    .local v1, value:Lcom/google/majel/proto/ActionProtos$Phone;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1527
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->setPhone(Lcom/google/majel/proto/ActionProtos$Phone;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    goto :goto_0

    .line 1531
    .end local v1           #value:Lcom/google/majel/proto/ActionProtos$Phone;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Sms;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Sms;-><init>()V

    .line 1532
    .local v1, value:Lcom/google/majel/proto/ActionProtos$Sms;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1533
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->setSms(Lcom/google/majel/proto/ActionProtos$Sms;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    goto :goto_0

    .line 1537
    .end local v1           #value:Lcom/google/majel/proto/ActionProtos$Sms;
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Navigate;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Navigate;-><init>()V

    .line 1538
    .local v1, value:Lcom/google/majel/proto/ActionProtos$Navigate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1539
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->setNavigate(Lcom/google/majel/proto/ActionProtos$Navigate;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    goto :goto_0

    .line 1543
    .end local v1           #value:Lcom/google/majel/proto/ActionProtos$Navigate;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;-><init>()V

    .line 1544
    .local v1, value:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1545
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->setIdentifyAudio(Lcom/google/majel/proto/ActionProtos$IdentifyAudio;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    goto :goto_0

    .line 1549
    .end local v1           #value:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Email;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Email;-><init>()V

    .line 1550
    .local v1, value:Lcom/google/majel/proto/ActionProtos$Email;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1551
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->setEmail(Lcom/google/majel/proto/ActionProtos$Email;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    goto :goto_0

    .line 1555
    .end local v1           #value:Lcom/google/majel/proto/ActionProtos$Email;
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/ActionProtos$TvControl;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$TvControl;-><init>()V

    .line 1556
    .local v1, value:Lcom/google/majel/proto/ActionProtos$TvControl;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1557
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->setTvControl(Lcom/google/majel/proto/ActionProtos$TvControl;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    goto :goto_0

    .line 1515
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 1305
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    move-result-object v0

    return-object v0
.end method

.method public setEmail(Lcom/google/majel/proto/ActionProtos$Email;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 1397
    if-nez p1, :cond_0

    .line 1398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1400
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasEmail:Z

    .line 1401
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email_:Lcom/google/majel/proto/ActionProtos$Email;

    .line 1402
    return-object p0
.end method

.method public setIdentifyAudio(Lcom/google/majel/proto/ActionProtos$IdentifyAudio;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 1377
    if-nez p1, :cond_0

    .line 1378
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1380
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasIdentifyAudio:Z

    .line 1381
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio_:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    .line 1382
    return-object p0
.end method

.method public setNavigate(Lcom/google/majel/proto/ActionProtos$Navigate;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 1357
    if-nez p1, :cond_0

    .line 1358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1360
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasNavigate:Z

    .line 1361
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate_:Lcom/google/majel/proto/ActionProtos$Navigate;

    .line 1362
    return-object p0
.end method

.method public setPhone(Lcom/google/majel/proto/ActionProtos$Phone;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 1317
    if-nez p1, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1320
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasPhone:Z

    .line 1321
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone_:Lcom/google/majel/proto/ActionProtos$Phone;

    .line 1322
    return-object p0
.end method

.method public setSms(Lcom/google/majel/proto/ActionProtos$Sms;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 1337
    if-nez p1, :cond_0

    .line 1338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1340
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasSms:Z

    .line 1341
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms_:Lcom/google/majel/proto/ActionProtos$Sms;

    .line 1342
    return-object p0
.end method

.method public setTvControl(Lcom/google/majel/proto/ActionProtos$TvControl;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 1417
    if-nez p1, :cond_0

    .line 1418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1420
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasTvControl:Z

    .line 1421
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl_:Lcom/google/majel/proto/ActionProtos$TvControl;

    .line 1422
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
    .line 1448
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getPhone()Lcom/google/majel/proto/ActionProtos$Phone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1451
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getSms()Lcom/google/majel/proto/ActionProtos$Sms;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1454
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasNavigate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1455
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getNavigate()Lcom/google/majel/proto/ActionProtos$Navigate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1457
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasIdentifyAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1458
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getIdentifyAudio()Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1460
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1461
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getEmail()Lcom/google/majel/proto/ActionProtos$Email;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1463
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->hasTvControl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1464
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->getTvControl()Lcom/google/majel/proto/ActionProtos$TvControl;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1466
    :cond_5
    return-void
.end method

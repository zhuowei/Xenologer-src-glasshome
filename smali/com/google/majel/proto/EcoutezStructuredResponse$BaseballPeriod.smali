.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaseballPeriod"
.end annotation


# static fields
.field public static final INNING_STATUS_BOTTOM_INNING:I = 0x2

.field public static final INNING_STATUS_END_INNING:I = 0x3

.field public static final INNING_STATUS_FIELD_NUMBER:I = 0x1

.field public static final INNING_STATUS_MIDDLE_INNING:I = 0x1

.field public static final INNING_STATUS_TOP_INNING:I = 0x0

.field public static final NUM_OF_BALLS_FIELD_NUMBER:I = 0x4

.field public static final NUM_OF_OUTS_FIELD_NUMBER:I = 0x2

.field public static final NUM_OF_STRIKES_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private hasInningStatus:Z

.field private hasNumOfBalls:Z

.field private hasNumOfOuts:Z

.field private hasNumOfStrikes:Z

.field private inningStatus_:I

.field private numOfBalls_:I

.field private numOfOuts_:I

.field private numOfStrikes_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6445
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6456
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    .line 6473
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    .line 6490
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    .line 6507
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    .line 6551
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->cachedSize:I

    .line 6445
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6627
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6621
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    .line 6522
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->clearInningStatus()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 6523
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->clearNumOfOuts()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 6524
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->clearNumOfStrikes()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 6525
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->clearNumOfBalls()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 6526
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->cachedSize:I

    .line 6527
    return-object p0
.end method

.method public clearInningStatus()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6465
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasInningStatus:Z

    .line 6466
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    .line 6467
    return-object p0
.end method

.method public clearNumOfBalls()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6516
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfBalls:Z

    .line 6517
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    .line 6518
    return-object p0
.end method

.method public clearNumOfOuts()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6482
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfOuts:Z

    .line 6483
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    .line 6484
    return-object p0
.end method

.method public clearNumOfStrikes()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6499
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfStrikes:Z

    .line 6500
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    .line 6501
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6554
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->cachedSize:I

    if-gez v0, :cond_0

    .line 6556
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->getSerializedSize()I

    .line 6558
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->cachedSize:I

    return v0
.end method

.method public getInningStatus()I
    .locals 1

    .prologue
    .line 6457
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    return v0
.end method

.method public getNumOfBalls()I
    .locals 1

    .prologue
    .line 6508
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    return v0
.end method

.method public getNumOfOuts()I
    .locals 1

    .prologue
    .line 6474
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    return v0
.end method

.method public getNumOfStrikes()I
    .locals 1

    .prologue
    .line 6491
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6563
    const/4 v0, 0x0

    .line 6564
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasInningStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6565
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->getInningStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6568
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfOuts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6569
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->getNumOfOuts()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6572
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfStrikes()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6573
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->getNumOfStrikes()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6576
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfBalls()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6577
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->getNumOfBalls()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6580
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->cachedSize:I

    .line 6581
    return v0
.end method

.method public hasInningStatus()Z
    .locals 1

    .prologue
    .line 6458
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasInningStatus:Z

    return v0
.end method

.method public hasNumOfBalls()Z
    .locals 1

    .prologue
    .line 6509
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfBalls:Z

    return v0
.end method

.method public hasNumOfOuts()Z
    .locals 1

    .prologue
    .line 6475
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfOuts:Z

    return v0
.end method

.method public hasNumOfStrikes()Z
    .locals 1

    .prologue
    .line 6492
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfStrikes:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6531
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6589
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6590
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6594
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6595
    :sswitch_0
    return-object p0

    .line 6600
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->setInningStatus(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    goto :goto_0

    .line 6604
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->setNumOfOuts(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    goto :goto_0

    .line 6608
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->setNumOfStrikes(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    goto :goto_0

    .line 6612
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->setNumOfBalls(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    goto :goto_0

    .line 6590
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 6442
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    move-result-object v0

    return-object v0
.end method

.method public setInningStatus(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .parameter "value"

    .prologue
    .line 6460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasInningStatus:Z

    .line 6461
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    .line 6462
    return-object p0
.end method

.method public setNumOfBalls(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .parameter "value"

    .prologue
    .line 6511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfBalls:Z

    .line 6512
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    .line 6513
    return-object p0
.end method

.method public setNumOfOuts(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .parameter "value"

    .prologue
    .line 6477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfOuts:Z

    .line 6478
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    .line 6479
    return-object p0
.end method

.method public setNumOfStrikes(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .parameter "value"

    .prologue
    .line 6494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfStrikes:Z

    .line 6495
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    .line 6496
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
    .line 6537
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasInningStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6538
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->getInningStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6540
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfOuts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6541
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->getNumOfOuts()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6543
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfStrikes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6544
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->getNumOfStrikes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6546
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->hasNumOfBalls()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6547
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->getNumOfBalls()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6549
    :cond_3
    return-void
.end method

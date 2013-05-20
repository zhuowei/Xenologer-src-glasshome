.class public final Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Majel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Majel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelServiceEvent"
.end annotation


# static fields
.field public static final COMPRESSED_MAJEL_RESPONSE_FIELD_NUMBER:I = 0x2

.field public static final MAJEL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasCompressedMajelResponse:Z

.field private hasMajel:Z

.field private majel_:Lcom/google/majel/proto/MajelProtos$MajelResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel_:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 612
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 648
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    .line 587
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 704
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->clearMajel()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 628
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->clearCompressedMajelResponse()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 629
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    .line 630
    return-object p0
.end method

.method public clearCompressedMajelResponse()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse:Z

    .line 622
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 623
    return-object p0
.end method

.method public clearMajel()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasMajel:Z

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel_:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 606
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getSerializedSize()I

    .line 655
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    return v0
.end method

.method public getCompressedMajelResponse()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getMajel()Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel_:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasMajel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getMajel()Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getCompressedMajelResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 669
    :cond_1
    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    .line 670
    return v0
.end method

.method public hasCompressedMajelResponse()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse:Z

    return v0
.end method

.method public hasMajel()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasMajel:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 634
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
    .line 584
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 679
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 683
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    :sswitch_0
    return-object p0

    .line 689
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-direct {v1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;-><init>()V

    .line 690
    .local v1, value:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 691
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->setMajel(Lcom/google/majel/proto/MajelProtos$MajelResponse;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    goto :goto_0

    .line 695
    .end local v1           #value:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->setCompressedMajelResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    goto :goto_0

    .line 679
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCompressedMajelResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse:Z

    .line 617
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 618
    return-object p0
.end method

.method public setMajel(Lcom/google/majel/proto/MajelProtos$MajelResponse;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 599
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasMajel:Z

    .line 600
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel_:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 601
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
    .line 640
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasMajel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getMajel()Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getCompressedMajelResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 646
    :cond_1
    return-void
.end method

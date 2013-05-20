.class public final Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ClientInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenParams"
.end annotation


# static fields
.field public static final DENSITY_DPI_FIELD_NUMBER:I = 0x3

.field public static final DPI_BUCKET_FIELD_NUMBER:I = 0x4

.field public static final DPI_BUCKET_HDPI:I = 0x3

.field public static final DPI_BUCKET_LDPI:I = 0x1

.field public static final DPI_BUCKET_MDPI:I = 0x2

.field public static final DPI_BUCKET_TVDPI:I = 0x5

.field public static final DPI_BUCKET_UNKNOWN:I = 0x0

.field public static final DPI_BUCKET_XHDPI:I = 0x4

.field public static final DPI_BUCKET_XXHDPI:I = 0x6

.field public static final HEIGHT_PIXELS_FIELD_NUMBER:I = 0x2

.field public static final WIDTH_PIXELS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private densityDpi_:I

.field private dpiBucket_:I

.field private hasDensityDpi:Z

.field private hasDpiBucket:Z

.field private hasHeightPixels:Z

.field private hasWidthPixels:Z

.field private heightPixels_:I

.field private widthPixels_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 513
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    .line 530
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    .line 547
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    .line 564
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    .line 608
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->cachedSize:I

    .line 499
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->clearWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 580
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->clearHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 581
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->clearDensityDpi()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 582
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->clearDpiBucket()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 583
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->cachedSize:I

    .line 584
    return-object p0
.end method

.method public clearDensityDpi()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 556
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDensityDpi:Z

    .line 557
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    .line 558
    return-object p0
.end method

.method public clearDpiBucket()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 573
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDpiBucket:Z

    .line 574
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    .line 575
    return-object p0
.end method

.method public clearHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 539
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasHeightPixels:Z

    .line 540
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    .line 541
    return-object p0
.end method

.method public clearWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasWidthPixels:Z

    .line 523
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    .line 524
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->getSerializedSize()I

    .line 615
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->cachedSize:I

    return v0
.end method

.method public getDensityDpi()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    return v0
.end method

.method public getDpiBucket()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    return v0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasWidthPixels()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->getWidthPixels()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasHeightPixels()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->getHeightPixels()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDensityDpi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->getDensityDpi()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 633
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDpiBucket()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 634
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->getDpiBucket()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 637
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->cachedSize:I

    .line 638
    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    return v0
.end method

.method public hasDensityDpi()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDensityDpi:Z

    return v0
.end method

.method public hasDpiBucket()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDpiBucket:Z

    return v0
.end method

.method public hasHeightPixels()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasHeightPixels:Z

    return v0
.end method

.method public hasWidthPixels()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasWidthPixels:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 647
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 651
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    :sswitch_0
    return-object p0

    .line 657
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->setWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    goto :goto_0

    .line 661
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->setHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    goto :goto_0

    .line 665
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->setDensityDpi(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    goto :goto_0

    .line 669
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->setDpiBucket(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    goto :goto_0

    .line 647
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
    .line 496
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    move-result-object v0

    return-object v0
.end method

.method public setDensityDpi(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDensityDpi:Z

    .line 552
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    .line 553
    return-object p0
.end method

.method public setDpiBucket(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDpiBucket:Z

    .line 569
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    .line 570
    return-object p0
.end method

.method public setHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasHeightPixels:Z

    .line 535
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    .line 536
    return-object p0
.end method

.method public setWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasWidthPixels:Z

    .line 518
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    .line 519
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
    .line 594
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasWidthPixels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->getWidthPixels()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasHeightPixels()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->getHeightPixels()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDensityDpi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->getDensityDpi()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 603
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->hasDpiBucket()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 604
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->getDpiBucket()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 606
    :cond_3
    return-void
.end method

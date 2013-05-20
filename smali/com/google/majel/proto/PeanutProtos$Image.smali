.class public final Lcom/google/majel/proto/PeanutProtos$Image;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation


# static fields
.field public static final ATTRIBUTION_FIELD_NUMBER:I = 0x3

.field public static final DATA_FIELD_NUMBER:I = 0x8

.field public static final HEIGHT_FIELD_NUMBER:I = 0x5

.field public static final THUMB_DATA_FIELD_NUMBER:I = 0x9

.field public static final THUMB_HEIGHT_FIELD_NUMBER:I = 0x7

.field public static final THUMB_URL_FIELD_NUMBER:I = 0x2

.field public static final THUMB_WIDTH_FIELD_NUMBER:I = 0x6

.field public static final URL_FIELD_NUMBER:I = 0x1

.field public static final WIDTH_FIELD_NUMBER:I = 0x4


# instance fields
.field private attribution_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/AttributionProtos$Attribution;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private data_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasData:Z

.field private hasHeight:Z

.field private hasThumbData:Z

.field private hasThumbHeight:Z

.field private hasThumbUrl:Z

.field private hasThumbWidth:Z

.field private hasUrl:Z

.field private hasWidth:Z

.field private height_:I

.field private thumbData_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private thumbHeight_:I

.field private thumbUrl_:Ljava/lang/String;

.field private thumbWidth_:I

.field private url_:Ljava/lang/String;

.field private width_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    .line 350
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 367
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    .line 384
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    .line 418
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 435
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    .line 452
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    .line 468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution_:Ljava/util/List;

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->cachedSize:I

    .line 328
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Image;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Image;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 661
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Image;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Image;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Image;

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Image;

    return-object v0
.end method


# virtual methods
.method public addAttribution(Lcom/google/majel/proto/AttributionProtos$Attribution;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution_:Ljava/util/List;

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clearUrl()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 501
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clearData()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 502
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clearWidth()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 503
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clearHeight()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 504
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clearThumbUrl()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 505
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clearThumbData()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 506
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clearThumbWidth()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 507
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clearThumbHeight()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 508
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clearAttribution()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 509
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->cachedSize:I

    .line 510
    return-object p0
.end method

.method public clearAttribution()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution_:Ljava/util/List;

    .line 496
    return-object p0
.end method

.method public clearData()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasData:Z

    .line 360
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 361
    return-object p0
.end method

.method public clearHeight()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasHeight:Z

    .line 394
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    .line 395
    return-object p0
.end method

.method public clearThumbData()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbData:Z

    .line 428
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 429
    return-object p0
.end method

.method public clearThumbHeight()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbHeight:Z

    .line 462
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    .line 463
    return-object p0
.end method

.method public clearThumbUrl()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbUrl:Z

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    .line 412
    return-object p0
.end method

.method public clearThumbWidth()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbWidth:Z

    .line 445
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    .line 446
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasUrl:Z

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public clearWidth()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasWidth:Z

    .line 377
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    .line 378
    return-object p0
.end method

.method public getAttribution(I)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "index"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    return-object v0
.end method

.method public getAttributionCount()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttributionList()Ljava/util/List;
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
    .line 471
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->cachedSize:I

    if-gez v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getSerializedSize()I

    .line 556
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->cachedSize:I

    return v0
.end method

.method public getData()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 561
    const/4 v2, 0x0

    .line 562
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasUrl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getAttributionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 571
    .local v0, element:Lcom/google/majel/proto/AttributionProtos$Attribution;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 574
    .end local v0           #element:Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasWidth()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 575
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 578
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasHeight()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 579
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 582
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbWidth()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 583
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 586
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbHeight()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 587
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 590
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasData()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 591
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 594
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbData()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 595
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 598
    :cond_8
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->cachedSize:I

    .line 599
    return v2
.end method

.method public getThumbData()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    return v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasData:Z

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasHeight:Z

    return v0
.end method

.method public hasThumbData()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbData:Z

    return v0
.end method

.method public hasThumbHeight()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbHeight:Z

    return v0
.end method

.method public hasThumbUrl()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbUrl:Z

    return v0
.end method

.method public hasThumbWidth()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbWidth:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasUrl:Z

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasWidth:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 608
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 612
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/PeanutProtos$Image;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 613
    :sswitch_0
    return-object p0

    .line 618
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Image;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 622
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Image;->setThumbUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 626
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    .line 627
    .local v1, value:Lcom/google/majel/proto/AttributionProtos$Attribution;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 628
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Image;->addAttribution(Lcom/google/majel/proto/AttributionProtos$Attribution;)Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 632
    .end local v1           #value:Lcom/google/majel/proto/AttributionProtos$Attribution;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Image;->setWidth(I)Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 636
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Image;->setHeight(I)Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 640
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Image;->setThumbWidth(I)Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 644
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Image;->setThumbHeight(I)Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 648
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Image;->setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 652
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Image;->setThumbData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 608
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
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
    .line 325
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Image;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public setAttribution(ILcom/google/majel/proto/AttributionProtos$Attribution;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 478
    if-nez p2, :cond_0

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 482
    return-object p0
.end method

.method public setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasData:Z

    .line 355
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 356
    return-object p0
.end method

.method public setHeight(I)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasHeight:Z

    .line 389
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    .line 390
    return-object p0
.end method

.method public setThumbData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbData:Z

    .line 423
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 424
    return-object p0
.end method

.method public setThumbHeight(I)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbHeight:Z

    .line 457
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    .line 458
    return-object p0
.end method

.method public setThumbUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbUrl:Z

    .line 406
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    .line 407
    return-object p0
.end method

.method public setThumbWidth(I)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbWidth:Z

    .line 440
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    .line 441
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasUrl:Z

    .line 338
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    .line 339
    return-object p0
.end method

.method public setWidth(I)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->hasWidth:Z

    .line 372
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    .line 373
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
    .line 520
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getAttributionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 527
    .local v0, element:Lcom/google/majel/proto/AttributionProtos$Attribution;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 529
    .end local v0           #element:Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasWidth()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 530
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getWidth()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 532
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasHeight()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 533
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 535
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbWidth()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 536
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbWidth()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 538
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbHeight()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 539
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 541
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasData()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 542
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 544
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->hasThumbData()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 545
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->getThumbData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 547
    :cond_8
    return-void
.end method

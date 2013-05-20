.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherState"
.end annotation


# static fields
.field public static final CHANCE_OF_PRECIPITATION_FIELD_NUMBER:I = 0x6

.field public static final CONDITION_FIELD_NUMBER:I = 0x1

.field public static final HUMIDITY_FIELD_NUMBER:I = 0x5

.field public static final TEMP_FIELD_NUMBER:I = 0x2

.field public static final WIND_DIRECTION_FIELD_NUMBER:I = 0x3

.field public static final WIND_SPEED_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private chanceOfPrecipitation_:I

.field private condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

.field private hasChanceOfPrecipitation:Z

.field private hasCondition:Z

.field private hasHumidity:Z

.field private hasTemp:Z

.field private hasWindDirection:Z

.field private hasWindSpeed:Z

.field private humidity_:I

.field private temp_:I

.field private windDirection_:I

.field private windSpeed_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 421
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    .line 438
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    .line 455
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    .line 472
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    .line 489
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    .line 541
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->cachedSize:I

    .line 396
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 629
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->clearCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 505
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->clearTemp()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 506
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->clearWindDirection()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 507
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->clearWindSpeed()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 508
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->clearHumidity()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 509
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->clearChanceOfPrecipitation()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 510
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->cachedSize:I

    .line 511
    return-object p0
.end method

.method public clearChanceOfPrecipitation()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 498
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasChanceOfPrecipitation:Z

    .line 499
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    .line 500
    return-object p0
.end method

.method public clearCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasCondition:Z

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 415
    return-object p0
.end method

.method public clearHumidity()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasHumidity:Z

    .line 482
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    .line 483
    return-object p0
.end method

.method public clearTemp()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasTemp:Z

    .line 431
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    .line 432
    return-object p0
.end method

.method public clearWindDirection()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindDirection:Z

    .line 448
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    .line 449
    return-object p0
.end method

.method public clearWindSpeed()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindSpeed:Z

    .line 465
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    .line 466
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->cachedSize:I

    if-gez v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getSerializedSize()I

    .line 548
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->cachedSize:I

    return v0
.end method

.method public getChanceOfPrecipitation()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    return v0
.end method

.method public getCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    return-object v0
.end method

.method public getHumidity()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasCondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasTemp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getTemp()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindDirection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getWindDirection()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindSpeed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getWindSpeed()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 570
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasHumidity()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 571
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getHumidity()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 574
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasChanceOfPrecipitation()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 575
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getChanceOfPrecipitation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->cachedSize:I

    .line 579
    return v0
.end method

.method public getTemp()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    return v0
.end method

.method public getWindDirection()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    return v0
.end method

.method public getWindSpeed()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    return v0
.end method

.method public hasChanceOfPrecipitation()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasChanceOfPrecipitation:Z

    return v0
.end method

.method public hasCondition()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasCondition:Z

    return v0
.end method

.method public hasHumidity()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasHumidity:Z

    return v0
.end method

.method public hasTemp()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasTemp:Z

    return v0
.end method

.method public hasWindDirection()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindDirection:Z

    return v0
.end method

.method public hasWindSpeed()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindSpeed:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 588
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 592
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    :sswitch_0
    return-object p0

    .line 598
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;-><init>()V

    .line 599
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 600
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->setCondition(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    goto :goto_0

    .line 604
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->setTemp(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    goto :goto_0

    .line 608
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->setWindDirection(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    goto :goto_0

    .line 612
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->setWindSpeed(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    goto :goto_0

    .line 616
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->setHumidity(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    goto :goto_0

    .line 620
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->setChanceOfPrecipitation(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    goto :goto_0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 393
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    move-result-object v0

    return-object v0
.end method

.method public setChanceOfPrecipitation(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .parameter "value"

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasChanceOfPrecipitation:Z

    .line 494
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    .line 495
    return-object p0
.end method

.method public setCondition(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .parameter "value"

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 408
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasCondition:Z

    .line 409
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 410
    return-object p0
.end method

.method public setHumidity(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .parameter "value"

    .prologue
    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasHumidity:Z

    .line 477
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    .line 478
    return-object p0
.end method

.method public setTemp(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .parameter "value"

    .prologue
    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasTemp:Z

    .line 426
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    .line 427
    return-object p0
.end method

.method public setWindDirection(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .parameter "value"

    .prologue
    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindDirection:Z

    .line 443
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    .line 444
    return-object p0
.end method

.method public setWindSpeed(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .parameter "value"

    .prologue
    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindSpeed:Z

    .line 460
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    .line 461
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
    .line 521
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasTemp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getTemp()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindDirection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getWindDirection()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasWindSpeed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getWindSpeed()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 533
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasHumidity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getHumidity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 536
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasChanceOfPrecipitation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 537
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getChanceOfPrecipitation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 539
    :cond_5
    return-void
.end method

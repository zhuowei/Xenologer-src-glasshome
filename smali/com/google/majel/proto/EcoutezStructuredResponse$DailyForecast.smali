.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailyForecast"
.end annotation


# static fields
.field public static final CHANCE_OF_PRECIPITATION_FIELD_NUMBER:I = 0x4

.field public static final CONDITION_FIELD_NUMBER:I = 0x1

.field public static final HIGH_TEMP_FIELD_NUMBER:I = 0x2

.field public static final LOW_TEMP_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private chanceOfPrecipitation_:I

.field private condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

.field private hasChanceOfPrecipitation:Z

.field private hasCondition:Z

.field private hasHighTemp:Z

.field private hasLowTemp:Z

.field private highTemp_:I

.field private lowTemp_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 643
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 668
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    .line 685
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    .line 702
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    .line 746
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->cachedSize:I

    .line 643
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 818
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->clearCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 718
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->clearHighTemp()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 719
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->clearLowTemp()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 720
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->clearChanceOfPrecipitation()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 721
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->cachedSize:I

    .line 722
    return-object p0
.end method

.method public clearChanceOfPrecipitation()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 711
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasChanceOfPrecipitation:Z

    .line 712
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    .line 713
    return-object p0
.end method

.method public clearCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasCondition:Z

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 662
    return-object p0
.end method

.method public clearHighTemp()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 677
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasHighTemp:Z

    .line 678
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    .line 679
    return-object p0
.end method

.method public clearLowTemp()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasLowTemp:Z

    .line 695
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    .line 696
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->cachedSize:I

    if-gez v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getSerializedSize()I

    .line 753
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->cachedSize:I

    return v0
.end method

.method public getChanceOfPrecipitation()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    return v0
.end method

.method public getCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    return-object v0
.end method

.method public getHighTemp()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    return v0
.end method

.method public getLowTemp()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 758
    const/4 v0, 0x0

    .line 759
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasCondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasHighTemp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getHighTemp()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasLowTemp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 768
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getLowTemp()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 771
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasChanceOfPrecipitation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 772
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getChanceOfPrecipitation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 775
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->cachedSize:I

    .line 776
    return v0
.end method

.method public hasChanceOfPrecipitation()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasChanceOfPrecipitation:Z

    return v0
.end method

.method public hasCondition()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasCondition:Z

    return v0
.end method

.method public hasHighTemp()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasHighTemp:Z

    return v0
.end method

.method public hasLowTemp()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasLowTemp:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 785
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 789
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 790
    :sswitch_0
    return-object p0

    .line 795
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;-><init>()V

    .line 796
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 797
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->setCondition(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    goto :goto_0

    .line 801
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->setHighTemp(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    goto :goto_0

    .line 805
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->setLowTemp(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    goto :goto_0

    .line 809
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->setChanceOfPrecipitation(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    goto :goto_0

    .line 785
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 640
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    move-result-object v0

    return-object v0
.end method

.method public setChanceOfPrecipitation(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .parameter "value"

    .prologue
    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasChanceOfPrecipitation:Z

    .line 707
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    .line 708
    return-object p0
.end method

.method public setCondition(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .parameter "value"

    .prologue
    .line 652
    if-nez p1, :cond_0

    .line 653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 655
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasCondition:Z

    .line 656
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 657
    return-object p0
.end method

.method public setHighTemp(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .parameter "value"

    .prologue
    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasHighTemp:Z

    .line 673
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    .line 674
    return-object p0
.end method

.method public setLowTemp(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .parameter "value"

    .prologue
    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasLowTemp:Z

    .line 690
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    .line 691
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
    .line 732
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasHighTemp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getHighTemp()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasLowTemp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getLowTemp()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 741
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->hasChanceOfPrecipitation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 742
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getChanceOfPrecipitation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 744
    :cond_3
    return-void
.end method

.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlightResult"
.end annotation


# static fields
.field public static final AIRLINE_CODE_FIELD_NUMBER:I = 0x2

.field public static final AIRLINE_NAME_FIELD_NUMBER:I = 0x3

.field public static final DATE_FOR_URL_FIELD_NUMBER:I = 0x5

.field public static final FLIGHT_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x4

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x6


# instance fields
.field private airlineCode_:Ljava/lang/String;

.field private airlineName_:Ljava/lang/String;

.field private cachedSize:I

.field private dateForUrl_:Ljava/lang/String;

.field private flight_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;",
            ">;"
        }
    .end annotation
.end field

.field private hasAirlineCode:Z

.field private hasAirlineName:Z

.field private hasDateForUrl:Z

.field private hasNumber:Z

.field private hasUpdateTime:Z

.field private number_:Ljava/lang/String;

.field private updateTime_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2624
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2628
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight_:Ljava/util/List;

    .line 2662
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    .line 2679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    .line 2696
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    .line 2713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    .line 2730
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    .line 2782
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->cachedSize:I

    .line 2624
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2876
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2870
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    return-object v0
.end method


# virtual methods
.method public addFlight(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2645
    if-nez p1, :cond_0

    .line 2646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2648
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight_:Ljava/util/List;

    .line 2651
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2652
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2745
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->clearFlight()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 2746
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->clearAirlineCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 2747
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->clearAirlineName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 2748
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->clearNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 2749
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->clearDateForUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 2750
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->clearUpdateTime()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 2751
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->cachedSize:I

    .line 2752
    return-object p0
.end method

.method public clearAirlineCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineCode:Z

    .line 2672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    .line 2673
    return-object p0
.end method

.method public clearAirlineName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineName:Z

    .line 2689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    .line 2690
    return-object p0
.end method

.method public clearDateForUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasDateForUrl:Z

    .line 2723
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    .line 2724
    return-object p0
.end method

.method public clearFlight()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2655
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight_:Ljava/util/List;

    .line 2656
    return-object p0
.end method

.method public clearNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasNumber:Z

    .line 2706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    .line 2707
    return-object p0
.end method

.method public clearUpdateTime()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasUpdateTime:Z

    .line 2740
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    .line 2741
    return-object p0
.end method

.method public getAirlineCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getAirlineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2785
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2787
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getSerializedSize()I

    .line 2789
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->cachedSize:I

    return v0
.end method

.method public getDateForUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFlight(I)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "index"

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    return-object v0
.end method

.method public getFlightCount()I
    .locals 1

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFlightList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight_:Ljava/util/List;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2794
    const/4 v2, 0x0

    .line 2795
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getFlightList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 2796
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2799
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineCode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2800
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getAirlineCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2803
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineName()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2804
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getAirlineName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2807
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasNumber()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2808
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2811
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasDateForUrl()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2812
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getDateForUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2815
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasUpdateTime()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2816
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2819
    :cond_5
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->cachedSize:I

    .line 2820
    return v2
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAirlineCode()Z
    .locals 1

    .prologue
    .line 2664
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineCode:Z

    return v0
.end method

.method public hasAirlineName()Z
    .locals 1

    .prologue
    .line 2681
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineName:Z

    return v0
.end method

.method public hasDateForUrl()Z
    .locals 1

    .prologue
    .line 2715
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasDateForUrl:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2698
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasNumber:Z

    return v0
.end method

.method public hasUpdateTime()Z
    .locals 1

    .prologue
    .line 2732
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasUpdateTime:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2756
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2828
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2829
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2833
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2834
    :sswitch_0
    return-object p0

    .line 2839
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;-><init>()V

    .line 2840
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2841
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->addFlight(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    goto :goto_0

    .line 2845
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->setAirlineCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    goto :goto_0

    .line 2849
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->setAirlineName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    goto :goto_0

    .line 2853
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->setNumber(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    goto :goto_0

    .line 2857
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->setDateForUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    goto :goto_0

    .line 2861
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->setUpdateTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    goto :goto_0

    .line 2829
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
    .line 2621
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    move-result-object v0

    return-object v0
.end method

.method public setAirlineCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineCode:Z

    .line 2667
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    .line 2668
    return-object p0
.end method

.method public setAirlineName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineName:Z

    .line 2684
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    .line 2685
    return-object p0
.end method

.method public setDateForUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasDateForUrl:Z

    .line 2718
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    .line 2719
    return-object p0
.end method

.method public setFlight(ILcom/google/majel/proto/EcoutezStructuredResponse$FlightData;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2638
    if-nez p2, :cond_0

    .line 2639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2641
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2642
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasNumber:Z

    .line 2701
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    .line 2702
    return-object p0
.end method

.method public setUpdateTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasUpdateTime:Z

    .line 2735
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    .line 2736
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
    .line 2762
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getFlightList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 2763
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2765
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2766
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getAirlineCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2768
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasAirlineName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2769
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getAirlineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2771
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2772
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2774
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasDateForUrl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2775
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getDateForUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2777
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->hasUpdateTime()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2778
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getUpdateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2780
    :cond_5
    return-void
.end method

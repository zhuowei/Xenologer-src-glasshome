.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HourlyForecast"
.end annotation


# static fields
.field public static final FORECAST_FIELD_NUMBER:I = 0x3

.field public static final START_HOUR_FIELD_NUMBER:I = 0x2

.field public static final UTC_DATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private forecast_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;",
            ">;"
        }
    .end annotation
.end field

.field private hasStartHour:Z

.field private hasUtcDate:Z

.field private startHour_:I

.field private utcDate_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    .line 870
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast_:Ljava/util/List;

    .line 927
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->cachedSize:I

    .line 832
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 997
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 991
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    return-object v0
.end method


# virtual methods
.method public addForecast(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .parameter "value"

    .prologue
    .line 887
    if-nez p1, :cond_0

    .line 888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast_:Ljava/util/List;

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->clearUtcDate()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 903
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->clearStartHour()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 904
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->clearForecast()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 905
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->cachedSize:I

    .line 906
    return-object p0
.end method

.method public clearForecast()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1

    .prologue
    .line 897
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast_:Ljava/util/List;

    .line 898
    return-object p0
.end method

.method public clearStartHour()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 863
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasStartHour:Z

    .line 864
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    .line 865
    return-object p0
.end method

.method public clearUtcDate()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasUtcDate:Z

    .line 847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    .line 848
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->cachedSize:I

    if-gez v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->getSerializedSize()I

    .line 934
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->cachedSize:I

    return v0
.end method

.method public getForecast(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .parameter "index"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    return-object v0
.end method

.method public getForecastCount()I
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getForecastList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 939
    const/4 v2, 0x0

    .line 940
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasUtcDate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 941
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->getUtcDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 944
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasStartHour()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 945
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->getStartHour()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 948
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->getForecastList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 949
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 952
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->cachedSize:I

    .line 953
    return v2
.end method

.method public getStartHour()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    return v0
.end method

.method public getUtcDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    return-object v0
.end method

.method public hasStartHour()Z
    .locals 1

    .prologue
    .line 856
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasStartHour:Z

    return v0
.end method

.method public hasUtcDate()Z
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasUtcDate:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 962
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 966
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 967
    :sswitch_0
    return-object p0

    .line 972
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->setUtcDate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    goto :goto_0

    .line 976
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->setStartHour(I)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    goto :goto_0

    .line 980
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;-><init>()V

    .line 981
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 982
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->addForecast(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    goto :goto_0

    .line 962
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 829
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    move-result-object v0

    return-object v0
.end method

.method public setForecast(ILcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 880
    if-nez p2, :cond_0

    .line 881
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 884
    return-object p0
.end method

.method public setStartHour(I)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .parameter "value"

    .prologue
    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasStartHour:Z

    .line 859
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    .line 860
    return-object p0
.end method

.method public setUtcDate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .parameter "value"

    .prologue
    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasUtcDate:Z

    .line 842
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    .line 843
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
    .line 916
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasUtcDate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->getUtcDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 919
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->hasStartHour()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 920
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->getStartHour()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 922
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->getForecastList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 923
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 925
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    :cond_2
    return-void
.end method

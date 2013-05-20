.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherResult"
.end annotation


# static fields
.field public static final CURRENT_FIELD_NUMBER:I = 0x2

.field public static final DAILY_FORECAST_FIELD_NUMBER:I = 0x4

.field public static final FORECAST_START_DATE_FIELD_NUMBER:I = 0x3

.field public static final HOURLY_FORECAST_FIELD_NUMBER:I = 0x5

.field public static final IN_METRIC_UNITS_FIELD_NUMBER:I = 0x6

.field public static final LOCATION_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private current_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

.field private dailyForecast_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;",
            ">;"
        }
    .end annotation
.end field

.field private forecastStartDate_:Ljava/lang/String;

.field private hasCurrent:Z

.field private hasForecastStartDate:Z

.field private hasHourlyForecast:Z

.field private hasInMetricUnits:Z

.field private hasLocation:Z

.field private hourlyForecast_:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

.field private inMetricUnits_:Z

.field private location_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1005
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1010
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    .line 1030
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 1050
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    .line 1066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast_:Ljava/util/List;

    .line 1100
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast_:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 1120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    .line 1172
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->cachedSize:I

    .line 1005
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1272
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1266
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    return-object v0
.end method


# virtual methods
.method public addDailyForecast(Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1083
    if-nez p1, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast_:Ljava/util/List;

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->clearLocation()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 1136
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->clearCurrent()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 1137
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->clearForecastStartDate()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 1138
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->clearDailyForecast()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 1139
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->clearHourlyForecast()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 1140
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->clearInMetricUnits()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 1141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->cachedSize:I

    .line 1142
    return-object p0
.end method

.method public clearCurrent()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    .line 1042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasCurrent:Z

    .line 1043
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 1044
    return-object p0
.end method

.method public clearDailyForecast()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    .line 1093
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast_:Ljava/util/List;

    .line 1094
    return-object p0
.end method

.method public clearForecastStartDate()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasForecastStartDate:Z

    .line 1060
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    .line 1061
    return-object p0
.end method

.method public clearHourlyForecast()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasHourlyForecast:Z

    .line 1113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast_:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 1114
    return-object p0
.end method

.method public clearInMetricUnits()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1129
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasInMetricUnits:Z

    .line 1130
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    .line 1131
    return-object p0
.end method

.method public clearLocation()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    .line 1022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasLocation:Z

    .line 1023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    .line 1024
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 1177
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getSerializedSize()I

    .line 1179
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->cachedSize:I

    return v0
.end method

.method public getCurrent()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    return-object v0
.end method

.method public getDailyForecast(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .parameter "index"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    return-object v0
.end method

.method public getDailyForecastCount()I
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDailyForecastList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast_:Ljava/util/List;

    return-object v0
.end method

.method public getForecastStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getHourlyForecast()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast_:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    return-object v0
.end method

.method public getInMetricUnits()Z
    .locals 1

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    return v0
.end method

.method public getLocation()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1184
    const/4 v2, 0x0

    .line 1185
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1186
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getLocation()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasCurrent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1190
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getCurrent()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1193
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasForecastStartDate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1194
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getForecastStartDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1197
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getDailyForecastList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 1198
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1201
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasHourlyForecast()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1202
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getHourlyForecast()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1205
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasInMetricUnits()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1206
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getInMetricUnits()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1209
    :cond_5
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->cachedSize:I

    .line 1210
    return v2
.end method

.method public hasCurrent()Z
    .locals 1

    .prologue
    .line 1031
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasCurrent:Z

    return v0
.end method

.method public hasForecastStartDate()Z
    .locals 1

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasForecastStartDate:Z

    return v0
.end method

.method public hasHourlyForecast()Z
    .locals 1

    .prologue
    .line 1101
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasHourlyForecast:Z

    return v0
.end method

.method public hasInMetricUnits()Z
    .locals 1

    .prologue
    .line 1122
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasInMetricUnits:Z

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasLocation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1146
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1218
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1219
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1223
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1224
    :sswitch_0
    return-object p0

    .line 1229
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;-><init>()V

    .line 1230
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1231
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->setLocation(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    goto :goto_0

    .line 1235
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;-><init>()V

    .line 1236
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1237
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->setCurrent(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    goto :goto_0

    .line 1241
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->setForecastStartDate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    goto :goto_0

    .line 1245
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;-><init>()V

    .line 1246
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1247
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->addDailyForecast(Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    goto :goto_0

    .line 1251
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;-><init>()V

    .line 1252
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1253
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->setHourlyForecast(Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    goto :goto_0

    .line 1257
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->setInMetricUnits(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    goto :goto_0

    .line 1219
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 1002
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    move-result-object v0

    return-object v0
.end method

.method public setCurrent(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1034
    if-nez p1, :cond_0

    .line 1035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1037
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasCurrent:Z

    .line 1038
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 1039
    return-object p0
.end method

.method public setDailyForecast(ILcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1076
    if-nez p2, :cond_0

    .line 1077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1080
    return-object p0
.end method

.method public setForecastStartDate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasForecastStartDate:Z

    .line 1055
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    .line 1056
    return-object p0
.end method

.method public setHourlyForecast(Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1104
    if-nez p1, :cond_0

    .line 1105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1107
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasHourlyForecast:Z

    .line 1108
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast_:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 1109
    return-object p0
.end method

.method public setInMetricUnits(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasInMetricUnits:Z

    .line 1125
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    .line 1126
    return-object p0
.end method

.method public setLocation(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1014
    if-nez p1, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1017
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasLocation:Z

    .line 1018
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location_:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    .line 1019
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
    .line 1152
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1153
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getLocation()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1155
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1156
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getCurrent()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1158
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasForecastStartDate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1159
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getForecastStartDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1161
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getDailyForecastList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 1162
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1164
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasHourlyForecast()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1165
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getHourlyForecast()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1167
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasInMetricUnits()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1168
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getInMetricUnits()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1170
    :cond_5
    return-void
.end method

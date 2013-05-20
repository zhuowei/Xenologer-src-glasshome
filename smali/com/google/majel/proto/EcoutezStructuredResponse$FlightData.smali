.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlightData"
.end annotation


# static fields
.field public static final AIRLINE_CODE_FIELD_NUMBER:I = 0x1

.field public static final AIRLINE_NAME_FIELD_NUMBER:I = 0x2

.field public static final ARRIVAL_AIRPORT_CODE_FIELD_NUMBER:I = 0xc

.field public static final ARRIVAL_AIRPORT_NAME_FIELD_NUMBER:I = 0xd

.field public static final ARRIVAL_GATE_FIELD_NUMBER:I = 0xf

.field public static final ARRIVAL_TERMINAL_FIELD_NUMBER:I = 0xe

.field public static final ARRIVAL_TIME_ACTUAL_FIELD_NUMBER:I = 0x11

.field public static final ARRIVAL_TIME_SCHEDULED_FIELD_NUMBER:I = 0x10

.field public static final ARRIVAL_TIME_ZONE_FIELD_NUMBER:I = 0x12

.field public static final DEPARTURE_AIRPORT_CODE_FIELD_NUMBER:I = 0x5

.field public static final DEPARTURE_AIRPORT_NAME_FIELD_NUMBER:I = 0x6

.field public static final DEPARTURE_GATE_FIELD_NUMBER:I = 0x8

.field public static final DEPARTURE_TERMINAL_FIELD_NUMBER:I = 0x7

.field public static final DEPARTURE_TIME_ACTUAL_FIELD_NUMBER:I = 0xa

.field public static final DEPARTURE_TIME_SCHEDULED_FIELD_NUMBER:I = 0x9

.field public static final DEPARTURE_TIME_ZONE_FIELD_NUMBER:I = 0xb

.field public static final FLIGHT_STATS_ID_FIELD_NUMBER:I = 0x4

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final STATUS_CODE_CANCELLED:I = 0x5

.field public static final STATUS_CODE_DELAYED:I = 0x4

.field public static final STATUS_CODE_DIVERTED:I = 0x6

.field public static final STATUS_CODE_FIELD_NUMBER:I = 0x13

.field public static final STATUS_CODE_LANDED:I = 0x3

.field public static final STATUS_CODE_NOT_OPERATIONAL:I = 0x8

.field public static final STATUS_CODE_ON_TIME:I = 0x2

.field public static final STATUS_CODE_REDIRECTED:I = 0x7

.field public static final STATUS_CODE_SCHEDULED:I = 0x1

.field public static final STATUS_CODE_UNKNOWN:I


# instance fields
.field private airlineCode_:Ljava/lang/String;

.field private airlineName_:Ljava/lang/String;

.field private arrivalAirportCode_:Ljava/lang/String;

.field private arrivalAirportName_:Ljava/lang/String;

.field private arrivalGate_:Ljava/lang/String;

.field private arrivalTerminal_:Ljava/lang/String;

.field private arrivalTimeActual_:Ljava/lang/String;

.field private arrivalTimeScheduled_:Ljava/lang/String;

.field private arrivalTimeZone_:Ljava/lang/String;

.field private cachedSize:I

.field private departureAirportCode_:Ljava/lang/String;

.field private departureAirportName_:Ljava/lang/String;

.field private departureGate_:Ljava/lang/String;

.field private departureTerminal_:Ljava/lang/String;

.field private departureTimeActual_:Ljava/lang/String;

.field private departureTimeScheduled_:Ljava/lang/String;

.field private departureTimeZone_:Ljava/lang/String;

.field private flightStatsId_:Ljava/lang/String;

.field private hasAirlineCode:Z

.field private hasAirlineName:Z

.field private hasArrivalAirportCode:Z

.field private hasArrivalAirportName:Z

.field private hasArrivalGate:Z

.field private hasArrivalTerminal:Z

.field private hasArrivalTimeActual:Z

.field private hasArrivalTimeScheduled:Z

.field private hasArrivalTimeZone:Z

.field private hasDepartureAirportCode:Z

.field private hasDepartureAirportName:Z

.field private hasDepartureGate:Z

.field private hasDepartureTerminal:Z

.field private hasDepartureTimeActual:Z

.field private hasDepartureTimeScheduled:Z

.field private hasDepartureTimeZone:Z

.field private hasFlightStatsId:Z

.field private hasNumber:Z

.field private hasStatusCode:Z

.field private number_:Ljava/lang/String;

.field private statusCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2884
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    .line 2917
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    .line 2934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    .line 2951
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    .line 2968
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    .line 2985
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    .line 3002
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    .line 3019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    .line 3036
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    .line 3053
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    .line 3070
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    .line 3087
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    .line 3104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    .line 3121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    .line 3138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    .line 3155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    .line 3172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    .line 3189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    .line 3206
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    .line 3310
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->cachedSize:I

    .line 2884
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3506
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3500
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3221
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearAirlineCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3222
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearAirlineName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3223
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3224
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearFlightStatsId()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3225
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearDepartureAirportCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3226
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearDepartureAirportName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3227
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearDepartureTerminal()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3228
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearDepartureGate()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3229
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearDepartureTimeScheduled()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3230
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearDepartureTimeActual()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3231
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearDepartureTimeZone()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3232
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearArrivalAirportCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3233
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearArrivalAirportName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3234
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearArrivalTerminal()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3235
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearArrivalGate()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3236
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearArrivalTimeScheduled()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3237
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearArrivalTimeActual()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3238
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearArrivalTimeZone()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3239
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clearStatusCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3240
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->cachedSize:I

    .line 3241
    return-object p0
.end method

.method public clearAirlineCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 2909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineCode:Z

    .line 2910
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    .line 2911
    return-object p0
.end method

.method public clearAirlineName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 2926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineName:Z

    .line 2927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    .line 2928
    return-object p0
.end method

.method public clearArrivalAirportCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportCode:Z

    .line 3097
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    .line 3098
    return-object p0
.end method

.method public clearArrivalAirportName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportName:Z

    .line 3114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    .line 3115
    return-object p0
.end method

.method public clearArrivalGate()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalGate:Z

    .line 3148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    .line 3149
    return-object p0
.end method

.method public clearArrivalTerminal()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTerminal:Z

    .line 3131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    .line 3132
    return-object p0
.end method

.method public clearArrivalTimeActual()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeActual:Z

    .line 3182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    .line 3183
    return-object p0
.end method

.method public clearArrivalTimeScheduled()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeScheduled:Z

    .line 3165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    .line 3166
    return-object p0
.end method

.method public clearArrivalTimeZone()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeZone:Z

    .line 3199
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    .line 3200
    return-object p0
.end method

.method public clearDepartureAirportCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 2977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportCode:Z

    .line 2978
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    .line 2979
    return-object p0
.end method

.method public clearDepartureAirportName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 2994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportName:Z

    .line 2995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    .line 2996
    return-object p0
.end method

.method public clearDepartureGate()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureGate:Z

    .line 3029
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    .line 3030
    return-object p0
.end method

.method public clearDepartureTerminal()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTerminal:Z

    .line 3012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    .line 3013
    return-object p0
.end method

.method public clearDepartureTimeActual()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeActual:Z

    .line 3063
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    .line 3064
    return-object p0
.end method

.method public clearDepartureTimeScheduled()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeScheduled:Z

    .line 3046
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    .line 3047
    return-object p0
.end method

.method public clearDepartureTimeZone()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeZone:Z

    .line 3080
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    .line 3081
    return-object p0
.end method

.method public clearFlightStatsId()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 2960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasFlightStatsId:Z

    .line 2961
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    .line 2962
    return-object p0
.end method

.method public clearNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 2943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasNumber:Z

    .line 2944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    .line 2945
    return-object p0
.end method

.method public clearStatusCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3215
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasStatusCode:Z

    .line 3216
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    .line 3217
    return-object p0
.end method

.method public getAirlineCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getAirlineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalAirportCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalAirportName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalGate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTimeActual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTimeScheduled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3313
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->cachedSize:I

    if-gez v0, :cond_0

    .line 3315
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getSerializedSize()I

    .line 3317
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->cachedSize:I

    return v0
.end method

.method public getDepartureAirportCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureAirportName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureGate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTimeActual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3054
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTimeScheduled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightStatsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3322
    const/4 v0, 0x0

    .line 3323
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3324
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getAirlineCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3327
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3328
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getAirlineName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3331
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3332
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3335
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasFlightStatsId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3336
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getFlightStatsId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3339
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportCode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3340
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureAirportCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3343
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3344
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureAirportName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3347
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTerminal()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3348
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTerminal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3351
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureGate()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3352
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureGate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3355
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeScheduled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3356
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTimeScheduled()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3359
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeActual()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3360
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTimeActual()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3363
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeZone()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3364
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3367
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportCode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3368
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalAirportCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3371
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportName()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3372
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalAirportName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3375
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTerminal()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3376
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTerminal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3379
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalGate()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3380
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalGate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3383
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeScheduled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3384
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTimeScheduled()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3387
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeActual()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3388
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTimeActual()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3391
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeZone()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3392
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3395
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasStatusCode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3396
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getStatusCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3399
    :cond_12
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->cachedSize:I

    .line 3400
    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 3207
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    return v0
.end method

.method public hasAirlineCode()Z
    .locals 1

    .prologue
    .line 2902
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineCode:Z

    return v0
.end method

.method public hasAirlineName()Z
    .locals 1

    .prologue
    .line 2919
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineName:Z

    return v0
.end method

.method public hasArrivalAirportCode()Z
    .locals 1

    .prologue
    .line 3089
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportCode:Z

    return v0
.end method

.method public hasArrivalAirportName()Z
    .locals 1

    .prologue
    .line 3106
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportName:Z

    return v0
.end method

.method public hasArrivalGate()Z
    .locals 1

    .prologue
    .line 3140
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalGate:Z

    return v0
.end method

.method public hasArrivalTerminal()Z
    .locals 1

    .prologue
    .line 3123
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTerminal:Z

    return v0
.end method

.method public hasArrivalTimeActual()Z
    .locals 1

    .prologue
    .line 3174
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeActual:Z

    return v0
.end method

.method public hasArrivalTimeScheduled()Z
    .locals 1

    .prologue
    .line 3157
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeScheduled:Z

    return v0
.end method

.method public hasArrivalTimeZone()Z
    .locals 1

    .prologue
    .line 3191
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeZone:Z

    return v0
.end method

.method public hasDepartureAirportCode()Z
    .locals 1

    .prologue
    .line 2970
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportCode:Z

    return v0
.end method

.method public hasDepartureAirportName()Z
    .locals 1

    .prologue
    .line 2987
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportName:Z

    return v0
.end method

.method public hasDepartureGate()Z
    .locals 1

    .prologue
    .line 3021
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureGate:Z

    return v0
.end method

.method public hasDepartureTerminal()Z
    .locals 1

    .prologue
    .line 3004
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTerminal:Z

    return v0
.end method

.method public hasDepartureTimeActual()Z
    .locals 1

    .prologue
    .line 3055
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeActual:Z

    return v0
.end method

.method public hasDepartureTimeScheduled()Z
    .locals 1

    .prologue
    .line 3038
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeScheduled:Z

    return v0
.end method

.method public hasDepartureTimeZone()Z
    .locals 1

    .prologue
    .line 3072
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeZone:Z

    return v0
.end method

.method public hasFlightStatsId()Z
    .locals 1

    .prologue
    .line 2953
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasFlightStatsId:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2936
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasNumber:Z

    return v0
.end method

.method public hasStatusCode()Z
    .locals 1

    .prologue
    .line 3208
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasStatusCode:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3245
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3408
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3409
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3413
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3414
    :sswitch_0
    return-object p0

    .line 3419
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setAirlineCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3423
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setAirlineName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3427
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setNumber(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3431
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setFlightStatsId(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3435
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setDepartureAirportCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3439
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setDepartureAirportName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3443
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setDepartureTerminal(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3447
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setDepartureGate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3451
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setDepartureTimeScheduled(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3455
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setDepartureTimeActual(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3459
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setDepartureTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3463
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setArrivalAirportCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3467
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setArrivalAirportName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3471
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setArrivalTerminal(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3475
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setArrivalGate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto/16 :goto_0

    .line 3479
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setArrivalTimeScheduled(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto/16 :goto_0

    .line 3483
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setArrivalTimeActual(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto/16 :goto_0

    .line 3487
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setArrivalTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto/16 :goto_0

    .line 3491
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->setStatusCode(I)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto/16 :goto_0

    .line 3409
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
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
    .line 2881
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    move-result-object v0

    return-object v0
.end method

.method public setAirlineCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineCode:Z

    .line 2905
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    .line 2906
    return-object p0
.end method

.method public setAirlineName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineName:Z

    .line 2922
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    .line 2923
    return-object p0
.end method

.method public setArrivalAirportCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportCode:Z

    .line 3092
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    .line 3093
    return-object p0
.end method

.method public setArrivalAirportName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportName:Z

    .line 3109
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    .line 3110
    return-object p0
.end method

.method public setArrivalGate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalGate:Z

    .line 3143
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    .line 3144
    return-object p0
.end method

.method public setArrivalTerminal(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTerminal:Z

    .line 3126
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    .line 3127
    return-object p0
.end method

.method public setArrivalTimeActual(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeActual:Z

    .line 3177
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    .line 3178
    return-object p0
.end method

.method public setArrivalTimeScheduled(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeScheduled:Z

    .line 3160
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    .line 3161
    return-object p0
.end method

.method public setArrivalTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeZone:Z

    .line 3194
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    .line 3195
    return-object p0
.end method

.method public setDepartureAirportCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportCode:Z

    .line 2973
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    .line 2974
    return-object p0
.end method

.method public setDepartureAirportName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportName:Z

    .line 2990
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    .line 2991
    return-object p0
.end method

.method public setDepartureGate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureGate:Z

    .line 3024
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    .line 3025
    return-object p0
.end method

.method public setDepartureTerminal(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTerminal:Z

    .line 3007
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    .line 3008
    return-object p0
.end method

.method public setDepartureTimeActual(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeActual:Z

    .line 3058
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    .line 3059
    return-object p0
.end method

.method public setDepartureTimeScheduled(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeScheduled:Z

    .line 3041
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    .line 3042
    return-object p0
.end method

.method public setDepartureTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeZone:Z

    .line 3075
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    .line 3076
    return-object p0
.end method

.method public setFlightStatsId(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasFlightStatsId:Z

    .line 2956
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    .line 2957
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasNumber:Z

    .line 2939
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    .line 2940
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .parameter "value"

    .prologue
    .line 3210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasStatusCode:Z

    .line 3211
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    .line 3212
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
    .line 3251
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3252
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getAirlineCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3254
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasAirlineName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3255
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getAirlineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3257
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3258
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3260
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasFlightStatsId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3261
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getFlightStatsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3263
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3264
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureAirportCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3266
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureAirportName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3267
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureAirportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3269
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTerminal()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3270
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTerminal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3272
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureGate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3273
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureGate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3275
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeScheduled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3276
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTimeScheduled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3278
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeActual()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3279
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTimeActual()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3281
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeZone()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3282
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3284
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportCode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3285
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalAirportCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3287
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalAirportName()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3288
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalAirportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3290
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTerminal()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3291
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTerminal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3293
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalGate()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3294
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalGate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3296
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeScheduled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3297
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTimeScheduled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3299
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeActual()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3300
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTimeActual()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3302
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeZone()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3303
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3305
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasStatusCode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3306
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getStatusCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3308
    :cond_12
    return-void
.end method

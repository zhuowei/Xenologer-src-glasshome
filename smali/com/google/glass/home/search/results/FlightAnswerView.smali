.class public Lcom/google/glass/home/search/results/FlightAnswerView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "FlightAnswerView.java"


# instance fields
.field private airline:Lcom/google/glass/widget/TypophileTextView;

.field private departureTime:Lcom/google/glass/widget/TypophileTextView;

.field private flight:Lcom/google/glass/widget/TypophileTextView;

.field private flightStatus:Lcom/google/glass/widget/TypophileTextView;

.field private fromAirport:Lcom/google/glass/widget/TypophileTextView;

.field private status:Lcom/google/glass/widget/TypophileTextView;

.field private stop:Lcom/google/glass/widget/TypophileTextView;

.field private toAirport:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->init()V

    .line 52
    return-void
.end method

.method static formatTime(Ljava/util/Calendar;Landroid/content/Context;)Landroid/text/Spanned;
    .locals 4
    .parameter "time"
    .parameter "context"

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 189
    .local v0, timeFormat:Ljava/text/DateFormat;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 190
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " AM"

    const-string v3, "<sup><small><small>PM</small></small></sup>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " PM"

    const-string v3, "<sup><small><small>PM</small></small></sup>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    return-object v1
.end method

.method static getColorForStatus(ILandroid/content/Context;)I
    .locals 2
    .parameter "code"
    .parameter "context"

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 151
    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    return v1

    .line 143
    :pswitch_0
    sget v1, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 149
    :pswitch_1
    sget v1, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getFlightStatus(I)Ljava/lang/String;
    .locals 2
    .parameter "code"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 132
    sget v1, Lcom/google/glass/home/R$string;->voice_search_flight_status_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 116
    :pswitch_0
    sget v1, Lcom/google/glass/home/R$string;->voice_search_flight_status_scheduled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    :pswitch_1
    sget v1, Lcom/google/glass/home/R$string;->voice_search_flight_status_on_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    :pswitch_2
    sget v1, Lcom/google/glass/home/R$string;->voice_search_flight_status_landed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 122
    :pswitch_3
    sget v1, Lcom/google/glass/home/R$string;->voice_search_flight_status_delayed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 124
    :pswitch_4
    sget v1, Lcom/google/glass/home/R$string;->voice_search_flight_status_cancelled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 126
    :pswitch_5
    sget v1, Lcom/google/glass/home/R$string;->voice_search_flight_status_diverted:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 128
    :pswitch_6
    sget v1, Lcom/google/glass/home/R$string;->voice_search_flight_status_redirected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 130
    :pswitch_7
    sget v1, Lcom/google/glass/home/R$string;->voice_search_flight_status_not_operational:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static getTime(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;Z)Ljava/util/Calendar;
    .locals 4
    .parameter "flightData"
    .parameter "isDeparture"

    .prologue
    .line 169
    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTimeZone()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, departureZone:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasDepartureTimeActual()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTimeActual()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/glass/home/search/results/MajelProcessor;->getTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 184
    .end local v1           #departureZone:Ljava/lang/String;
    .local v2, time:Ljava/util/Calendar;
    :goto_0
    return-object v2

    .line 174
    .end local v2           #time:Ljava/util/Calendar;
    .restart local v1       #departureZone:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTimeScheduled()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/glass/home/search/results/MajelProcessor;->getTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .restart local v2       #time:Ljava/util/Calendar;
    goto :goto_0

    .line 177
    .end local v1           #departureZone:Ljava/lang/String;
    .end local v2           #time:Ljava/util/Calendar;
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, arrivalZone:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->hasArrivalTimeActual()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTimeActual()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/glass/home/search/results/MajelProcessor;->getTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .restart local v2       #time:Ljava/util/Calendar;
    goto :goto_0

    .line 181
    .end local v2           #time:Ljava/util/Calendar;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTimeScheduled()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/glass/home/search/results/MajelProcessor;->getTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .restart local v2       #time:Ljava/util/Calendar;
    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_flight_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    sget v1, Lcom/google/glass/home/R$id;->from_airport:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->fromAirport:Lcom/google/glass/widget/TypophileTextView;

    .line 59
    sget v1, Lcom/google/glass/home/R$id;->to_airport:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->toAirport:Lcom/google/glass/widget/TypophileTextView;

    .line 60
    sget v1, Lcom/google/glass/home/R$id;->stop:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->stop:Lcom/google/glass/widget/TypophileTextView;

    .line 61
    sget v1, Lcom/google/glass/home/R$id;->airline:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->airline:Lcom/google/glass/widget/TypophileTextView;

    .line 62
    sget v1, Lcom/google/glass/home/R$id;->flight:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->flight:Lcom/google/glass/widget/TypophileTextView;

    .line 63
    sget v1, Lcom/google/glass/home/R$id;->departure_time:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->departureTime:Lcom/google/glass/widget/TypophileTextView;

    .line 64
    sget v1, Lcom/google/glass/home/R$id;->flight_status:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->flightStatus:Lcom/google/glass/widget/TypophileTextView;

    .line 65
    sget v1, Lcom/google/glass/home/R$id;->status:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->status:Lcom/google/glass/widget/TypophileTextView;

    .line 66
    return-void
.end method

.method private isOnTime(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 163
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 161
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setFlightResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;)V
    .locals 13
    .parameter "result"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 69
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getFlightCount()I

    move-result v3

    .line 70
    .local v3, legs:I
    if-ge v3, v11, :cond_0

    .line 110
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1, v12}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getFlight(I)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    move-result-object v2

    .line 76
    .local v2, flightDataStart:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getFlight(I)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    move-result-object v1

    .line 78
    .local v1, flightDataEnd:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->airline:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getAirlineName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    if-le v3, v11, :cond_2

    .line 82
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->flight:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/glass/home/R$string;->voice_search_flight_info_multi_city:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->stop:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/glass/home/R$string;->voice_search_flight_stop:I

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalAirportCode()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1
    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getStatusCode()I

    move-result v4

    .line 94
    .local v4, statusCode:I
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->fromAirport:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureAirportCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->toAirport:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalAirportCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-direct {p0, v4}, Lcom/google/glass/home/search/results/FlightAnswerView;->isOnTime(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 97
    sget v6, Lcom/google/glass/home/R$id;->airplane:I

    invoke-virtual {p0, v6}, Lcom/google/glass/home/search/results/FlightAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    sget v7, Lcom/google/glass/home/R$drawable;->ic_flight_delayed:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :cond_1
    invoke-static {v2, v11}, Lcom/google/glass/home/search/results/FlightAnswerView;->getTime(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 101
    .local v0, departure:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->departureTime:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/glass/home/search/results/FlightAnswerView;->formatTime(Ljava/util/Calendar;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {p0, v4}, Lcom/google/glass/home/search/results/FlightAnswerView;->getFlightStatus(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, statusStr:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->flightStatus:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v6, v5}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->flightStatus:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/glass/home/search/results/FlightAnswerView;->getColorForStatus(ILandroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 109
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->status:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 87
    .end local v0           #departure:Ljava/util/Calendar;
    .end local v4           #statusCode:I
    .end local v5           #statusStr:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->flight:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightAnswerView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/glass/home/R$string;->voice_search_flight_info:I

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getNumber()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v6, p0, Lcom/google/glass/home/search/results/FlightAnswerView;->stop:Lcom/google/glass/widget/TypophileTextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

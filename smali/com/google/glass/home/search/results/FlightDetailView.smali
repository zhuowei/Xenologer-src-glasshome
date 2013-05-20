.class public Lcom/google/glass/home/search/results/FlightDetailView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "FlightDetailView.java"


# instance fields
.field private airport:Lcom/google/glass/widget/TypophileTextView;

.field private gate:Lcom/google/glass/widget/TypophileTextView;

.field private status:Lcom/google/glass/widget/TypophileTextView;

.field private terminal:Lcom/google/glass/widget/TypophileTextView;

.field private time:Lcom/google/glass/widget/TypophileTextView;

.field private timeLabel:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FlightDetailView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FlightDetailView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/google/glass/home/search/results/FlightDetailView;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightDetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_flight_detail:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    sget v1, Lcom/google/glass/home/R$id;->airport:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->airport:Lcom/google/glass/widget/TypophileTextView;

    .line 50
    sget v1, Lcom/google/glass/home/R$id;->timeLabel:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->timeLabel:Lcom/google/glass/widget/TypophileTextView;

    .line 51
    sget v1, Lcom/google/glass/home/R$id;->time:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->time:Lcom/google/glass/widget/TypophileTextView;

    .line 52
    sget v1, Lcom/google/glass/home/R$id;->terminal:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->terminal:Lcom/google/glass/widget/TypophileTextView;

    .line 53
    sget v1, Lcom/google/glass/home/R$id;->gate:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->gate:Lcom/google/glass/widget/TypophileTextView;

    .line 54
    sget v1, Lcom/google/glass/home/R$id;->status:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/FlightDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->status:Lcom/google/glass/widget/TypophileTextView;

    .line 55
    return-void
.end method

.method private maybeReplaceWithNotAvailableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "-"

    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public setFlightResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;Z)V
    .locals 5
    .parameter "flightData"
    .parameter "isDeparture"

    .prologue
    .line 59
    if-eqz p2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->airport:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureAirportCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->timeLabel:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$string;->voice_search_flight_departure:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->terminal:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureTerminal()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/home/search/results/FlightDetailView;->maybeReplaceWithNotAvailableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->gate:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getDepartureGate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/home/search/results/FlightDetailView;->maybeReplaceWithNotAvailableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    invoke-static {p1, p2}, Lcom/google/glass/home/search/results/FlightAnswerView;->getTime(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 72
    .local v0, theTime:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->time:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/glass/home/search/results/FlightAnswerView;->formatTime(Ljava/util/Calendar;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->time:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getStatusCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightDetailView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/home/search/results/FlightAnswerView;->getColorForStatus(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 76
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->status:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void

    .line 65
    .end local v0           #theTime:Ljava/util/Calendar;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->airport:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalAirportCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->timeLabel:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/FlightDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$string;->voice_search_flight_arrival:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->terminal:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalTerminal()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/home/search/results/FlightDetailView;->maybeReplaceWithNotAvailableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/google/glass/home/search/results/FlightDetailView;->gate:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->getArrivalGate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/home/search/results/FlightDetailView;->maybeReplaceWithNotAvailableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

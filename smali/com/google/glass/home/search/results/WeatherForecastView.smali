.class public Lcom/google/glass/home/search/results/WeatherForecastView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "WeatherForecastView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private column1:Landroid/widget/FrameLayout;

.field private column2:Landroid/widget/FrameLayout;

.field private column3:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/search/results/WeatherForecastView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/WeatherForecastView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WeatherForecastView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WeatherForecastView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WeatherForecastView;->init()V

    .line 46
    return-void
.end method

.method private getColumn(I)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "index"

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 123
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/home/search/results/WeatherForecastView;->column1:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/home/search/results/WeatherForecastView;->column2:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/home/search/results/WeatherForecastView;->column3:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getForecastStartDate(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;)Ljava/util/Date;
    .locals 6
    .parameter "result"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasForecastStartDate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getForecastStartDate()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, dateStr:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 106
    .local v2, format:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 111
    .end local v0           #dateStr:Ljava/lang/String;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 107
    .restart local v0       #dateStr:Ljava/lang/String;
    .restart local v2       #format:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 108
    .local v1, exception:Ljava/text/ParseException;
    sget-object v3, Lcom/google/glass/home/search/results/WeatherForecastView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized date value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0           #dateStr:Ljava/lang/String;
    .end local v1           #exception:Ljava/text/ParseException;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getLabel(Ljava/util/Date;I)Ljava/lang/String;
    .locals 4
    .parameter "forecastStartDate"
    .parameter "indexInForecastList"

    .prologue
    const/4 v3, 0x7

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    .local v0, day:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 94
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 95
    const/4 v1, 0x2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WeatherForecastView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_weather_forecast:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget v1, Lcom/google/glass/home/R$id;->column1:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherForecastView;->column1:Landroid/widget/FrameLayout;

    .line 53
    sget v1, Lcom/google/glass/home/R$id;->column2:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherForecastView;->column2:Landroid/widget/FrameLayout;

    .line 54
    sget v1, Lcom/google/glass/home/R$id;->column3:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherForecastView;->column3:Landroid/widget/FrameLayout;

    .line 55
    return-void
.end method


# virtual methods
.method public setDailyForecast(Ljava/util/List;Ljava/util/Date;I)V
    .locals 17
    .parameter
    .parameter "forecastStartDate"
    .parameter "indexInForecastList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;",
            ">;",
            "Ljava/util/Date;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 60
    .local v10, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v10, :cond_1

    .line 61
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 63
    .local v12, dailyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/glass/home/search/results/WeatherForecastView;->getColumn(I)Landroid/widget/FrameLayout;

    move-result-object v8

    .line 64
    .local v8, column:Landroid/widget/FrameLayout;
    if-eqz v8, :cond_0

    .line 65
    sget v2, Lcom/google/glass/home/R$id;->current_weather_icon:I

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 66
    .local v11, currentWeatherIcon:Landroid/widget/ImageView;
    sget v2, Lcom/google/glass/home/R$id;->temperature_high:I

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/glass/widget/TypophileTextView;

    .line 68
    .local v15, temperatureHigh:Lcom/google/glass/widget/TypophileTextView;
    sget v2, Lcom/google/glass/home/R$id;->temperature_low:I

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/glass/widget/TypophileTextView;

    .line 70
    .local v16, temperatureLow:Lcom/google/glass/widget/TypophileTextView;
    sget v2, Lcom/google/glass/home/R$id;->label:I

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/glass/widget/TypophileTextView;

    .line 73
    .local v14, label:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {v12}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v9

    .line 74
    .local v9, condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    new-instance v1, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;

    add-int v2, p3, v13

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/google/glass/home/search/results/WeatherForecastView;->getLabel(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageWidth()I

    move-result v4

    invoke-virtual {v9}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageHeight()I

    move-result v5

    invoke-virtual {v12}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getLowTemp()I

    move-result v6

    invoke-virtual {v12}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getHighTemp()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;IIII)V

    .line 78
    .local v1, forecast:Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/results/WeatherForecastView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/results/WeatherForecastView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v2, v11

    move-object v3, v15

    move-object/from16 v4, v16

    move-object v5, v14

    invoke-static/range {v1 .. v7}, Lcom/google/glass/home/search/results/WeatherAnswerView;->setForecast(Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/res/Resources;Landroid/content/Context;)V

    .line 60
    .end local v1           #forecast:Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;
    .end local v9           #condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .end local v11           #currentWeatherIcon:Landroid/widget/ImageView;
    .end local v14           #label:Lcom/google/glass/widget/TypophileTextView;
    .end local v15           #temperatureHigh:Lcom/google/glass/widget/TypophileTextView;
    .end local v16           #temperatureLow:Lcom/google/glass/widget/TypophileTextView;
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 82
    .end local v8           #column:Landroid/widget/FrameLayout;
    .end local v12           #dailyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    :cond_1
    return-void
.end method

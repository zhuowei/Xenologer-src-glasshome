.class public Lcom/google/glass/home/search/results/WeatherAnswerView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "WeatherAnswerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;
    }
.end annotation


# instance fields
.field private chanceOfPrecipitation:Lcom/google/glass/widget/TypophileTextView;

.field private chanceOfPrecipitationIcon:Landroid/widget/ImageView;

.field private currentTemperature:Lcom/google/glass/widget/TypophileTextView;

.field private currentWeatherIcon:Landroid/widget/ImageView;

.field private locationName:Lcom/google/glass/widget/DynamicSizeTextView;

.field private temperatureHigh:Lcom/google/glass/widget/TypophileTextView;

.field private temperatureLow:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView;->init()V

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
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView;->init()V

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
    invoke-direct {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->voice_search_weather_answer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    sget v1, Lcom/google/glass/home/R$id;->location_name:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherAnswerView;->locationName:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 59
    sget v1, Lcom/google/glass/home/R$id;->temperature:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherAnswerView;->currentTemperature:Lcom/google/glass/widget/TypophileTextView;

    .line 61
    sget v1, Lcom/google/glass/home/R$id;->current_weather_icon:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherAnswerView;->currentWeatherIcon:Landroid/widget/ImageView;

    .line 62
    sget v1, Lcom/google/glass/home/R$id;->temperature_high:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherAnswerView;->temperatureHigh:Lcom/google/glass/widget/TypophileTextView;

    .line 63
    sget v1, Lcom/google/glass/home/R$id;->temperature_low:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherAnswerView;->temperatureLow:Lcom/google/glass/widget/TypophileTextView;

    .line 65
    sget v1, Lcom/google/glass/home/R$id;->chance_of_precipitation_icon:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherAnswerView;->chanceOfPrecipitationIcon:Landroid/widget/ImageView;

    .line 66
    sget v1, Lcom/google/glass/home/R$id;->chance_of_precipitation:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/WeatherAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/search/results/WeatherAnswerView;->chanceOfPrecipitation:Lcom/google/glass/widget/TypophileTextView;

    .line 67
    return-void
.end method

.method static setForecast(Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/res/Resources;Landroid/content/Context;)V
    .locals 9
    .parameter "day"
    .parameter "currentWeatherIcon"
    .parameter "temperatureHigh"
    .parameter "temperatureLow"
    .parameter "label"
    .parameter "res"
    .parameter "context"

    .prologue
    .line 140
    new-instance v0, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->getIconWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->getIconHeight()I

    move-result v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->SMART_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-object v1, p1

    move-object v2, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    .line 143
    .local v0, imageLoadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 145
    sget v1, Lcom/google/glass/home/R$string;->voice_search_weather_temperature:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->getHigh()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p5, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, high:Ljava/lang/CharSequence;
    invoke-virtual {p2, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    sget v1, Lcom/google/glass/home/R$string;->voice_search_weather_temperature:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->getLow()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p5, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, low:Ljava/lang/CharSequence;
    invoke-virtual {p3, v8}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public setWeatherResult(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;)V
    .locals 21
    .parameter "result"

    .prologue
    .line 70
    const/4 v15, 0x0

    .line 73
    .local v15, address:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getLocation()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    move-result-object v18

    .line 75
    .local v18, location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    invoke-virtual/range {v18 .. v18}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasFormattedAddress()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual/range {v18 .. v18}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->getFormattedAddress()Ljava/lang/String;

    move-result-object v15

    .line 81
    .end local v18           #location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/search/results/WeatherAnswerView;->locationName:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v2, v15}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getCurrent()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    move-result-object v16

    .line 85
    .local v16, current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    if-eqz v16, :cond_1

    .line 86
    invoke-virtual/range {v16 .. v16}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasTemp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/search/results/WeatherAnswerView;->currentTemperature:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/results/WeatherAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/glass/home/R$string;->voice_search_weather_temperature:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getTemp()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_1
    const/4 v3, 0x0

    .line 94
    .local v3, currentWeatherConditionIconUrl:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/results/WeatherAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/google/glass/home/R$dimen;->voice_search_weather_icon_size:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 96
    .local v4, currentWeatherConditionIconWidth:I
    move v5, v4

    .line 97
    .local v5, currentWeatherConditionIconHeight:I
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasCondition()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    invoke-virtual/range {v16 .. v16}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getCondition()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v17

    .line 99
    .local v17, currentCondition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageWidth()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageHeight()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageWidth()I

    move-result v4

    .line 103
    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageHeight()I

    move-result v5

    .line 109
    .end local v17           #currentCondition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getDailyForecastCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 110
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getDailyForecast(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    move-result-object v20

    .line 111
    .local v20, todayForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getLowTemp()I

    move-result v6

    .line 112
    .local v6, lowTemp:I
    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->getHighTemp()I

    move-result v7

    .line 115
    .local v7, highTemp:I
    new-instance v1, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;IIII)V

    .line 117
    .local v1, forecast:Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/home/search/results/WeatherAnswerView;->currentWeatherIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/home/search/results/WeatherAnswerView;->temperatureHigh:Lcom/google/glass/widget/TypophileTextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/home/search/results/WeatherAnswerView;->temperatureLow:Lcom/google/glass/widget/TypophileTextView;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/results/WeatherAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/results/WeatherAnswerView;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object v8, v1

    invoke-static/range {v8 .. v14}, Lcom/google/glass/home/search/results/WeatherAnswerView;->setForecast(Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/res/Resources;Landroid/content/Context;)V

    .line 122
    .end local v1           #forecast:Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;
    .end local v6           #lowTemp:I
    .end local v7           #highTemp:I
    .end local v20           #todayForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    :cond_3
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->hasChanceOfPrecipitation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/results/WeatherAnswerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/google/glass/home/R$string;->voice_search_weather_humidity:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->getChanceOfPrecipitation()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 125
    .local v19, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/search/results/WeatherAnswerView;->chanceOfPrecipitation:Lcom/google/glass/widget/TypophileTextView;

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/search/results/WeatherAnswerView;->chanceOfPrecipitationIcon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    .end local v19           #text:Ljava/lang/String;
    :goto_1
    return-void

    .line 77
    .end local v3           #currentWeatherConditionIconUrl:Ljava/lang/String;
    .end local v4           #currentWeatherConditionIconWidth:I
    .end local v5           #currentWeatherConditionIconHeight:I
    .end local v16           #current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .restart local v18       #location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasCity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual/range {v18 .. v18}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->getCity()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 128
    .end local v18           #location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .restart local v3       #currentWeatherConditionIconUrl:Ljava/lang/String;
    .restart local v4       #currentWeatherConditionIconWidth:I
    .restart local v5       #currentWeatherConditionIconHeight:I
    .restart local v16       #current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/search/results/WeatherAnswerView;->chanceOfPrecipitationIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.class Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;
.super Ljava/lang/Object;
.source "WeatherAnswerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/WeatherAnswerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Forecast"
.end annotation


# instance fields
.field private final high:I

.field private final iconHeight:I

.field private final iconUrl:Ljava/lang/String;

.field private final iconWidth:I

.field private final label:Ljava/lang/CharSequence;

.field private final low:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;IIII)V
    .locals 0
    .parameter "label"
    .parameter "iconUrl"
    .parameter "iconWidth"
    .parameter "iconHeight"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->label:Ljava/lang/CharSequence;

    .line 170
    iput-object p2, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->iconUrl:Ljava/lang/String;

    .line 171
    iput p3, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->iconWidth:I

    .line 172
    iput p4, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->iconHeight:I

    .line 173
    iput p5, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->low:I

    .line 174
    iput p6, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->high:I

    .line 175
    return-void
.end method


# virtual methods
.method public getHigh()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->high:I

    return v0
.end method

.method public getIconHeight()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->iconHeight:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconWidth()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->iconWidth:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLow()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/glass/home/search/results/WeatherAnswerView$Forecast;->low:I

    return v0
.end method

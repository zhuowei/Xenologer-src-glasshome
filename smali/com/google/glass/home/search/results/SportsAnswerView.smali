.class public Lcom/google/glass/home/search/results/SportsAnswerView;
.super Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
.source "SportsAnswerView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private leftLogo:Landroid/widget/ImageView;

.field private leftName:Lcom/google/glass/widget/DynamicSizeTextView;

.field private leftScore:Landroid/widget/TextView;

.field private rightLogo:Landroid/widget/ImageView;

.field private rightName:Lcom/google/glass/widget/DynamicSizeTextView;

.field private rightScore:Landroid/widget/TextView;

.field private status:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/glass/home/search/results/SportsAnswerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/SportsAnswerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->init()V

    .line 53
    return-void
.end method

.method private formatPeriodNum(I)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 203
    if-ne p1, v2, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->voice_search_sports_first:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 205
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->voice_search_sports_second:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->voice_search_sports_third:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->voice_search_sports_general_count:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentPeriodLabel(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)I
    .locals 3
    .parameter "result"
    .parameter "match"

    .prologue
    .line 163
    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getCurrentPeriodNum()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 164
    .local v1, periodIndex:I
    if-ltz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getPeriodCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 165
    invoke-virtual {p2, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getPeriod(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    move-result-object v0

    .line 166
    .local v0, currentPeriod:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    invoke-virtual {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 177
    .end local v0           #currentPeriod:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/SportsAnswerView;->getRegularPeriodLabel(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;)I

    move-result v2

    :goto_0
    return v2

    .line 168
    .restart local v0       #currentPeriod:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/SportsAnswerView;->getRegularPeriodLabel(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;)I

    move-result v2

    goto :goto_0

    .line 170
    :pswitch_1
    sget v2, Lcom/google/glass/home/R$string;->voice_search_sports_overtime:I

    goto :goto_0

    .line 172
    :pswitch_2
    sget v2, Lcom/google/glass/home/R$string;->voice_search_sports_shootouts:I

    goto :goto_0

    .line 174
    :pswitch_3
    sget v2, Lcom/google/glass/home/R$string;->voice_search_sports_next_score_wins:I

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRegularPeriodLabel(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;)I
    .locals 1
    .parameter "result"

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getSportType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :pswitch_0
    sget v0, Lcom/google/glass/home/R$string;->voice_search_sports_current_period:I

    :goto_0
    return v0

    .line 187
    :pswitch_1
    sget v0, Lcom/google/glass/home/R$string;->voice_search_sports_current_inning:I

    goto :goto_0

    .line 190
    :pswitch_2
    sget v0, Lcom/google/glass/home/R$string;->voice_search_sports_current_quarter:I

    goto :goto_0

    .line 192
    :pswitch_3
    sget v0, Lcom/google/glass/home/R$string;->voice_search_sports_current_half:I

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static goneIfEmpty(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/16 v0, 0x8

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 56
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v1, layout:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/results/SportsAnswerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/glass/home/search/results/SportsAnswerView;->setOrientation(I)V

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 62
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v4, Lcom/google/glass/home/R$layout;->voice_search_sports_answer:I

    invoke-virtual {v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    sget v4, Lcom/google/glass/home/R$id;->status:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/search/results/SportsAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/TypophileTextView;

    iput-object v4, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->status:Lcom/google/glass/widget/TypophileTextView;

    .line 66
    sget v4, Lcom/google/glass/home/R$id;->left_contestant:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/search/results/SportsAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 67
    .local v2, leftTeam:Landroid/widget/LinearLayout;
    sget v4, Lcom/google/glass/home/R$id;->logo:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->leftLogo:Landroid/widget/ImageView;

    .line 68
    sget v4, Lcom/google/glass/home/R$id;->score:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/TypophileTextView;

    iput-object v4, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->leftScore:Landroid/widget/TextView;

    .line 69
    sget v4, Lcom/google/glass/home/R$id;->name:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v4, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->leftName:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 71
    sget v4, Lcom/google/glass/home/R$id;->right_contestant:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/search/results/SportsAnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 72
    .local v3, rightTeam:Landroid/widget/LinearLayout;
    sget v4, Lcom/google/glass/home/R$id;->logo:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->rightLogo:Landroid/widget/ImageView;

    .line 73
    sget v4, Lcom/google/glass/home/R$id;->score:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/TypophileTextView;

    iput-object v4, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->rightScore:Landroid/widget/TextView;

    .line 74
    sget v4, Lcom/google/glass/home/R$id;->name:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v4, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->rightName:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 75
    return-void
.end method

.method private setStatus(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)V
    .locals 15
    .parameter "result"
    .parameter "match"

    .prologue
    .line 108
    const-string v9, ""

    .line 110
    .local v9, statusText:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getStatus()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 149
    iget-object v10, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->status:Lcom/google/glass/widget/TypophileTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 153
    :goto_1
    return-void

    .line 115
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasStartTimestamp()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getStartTimestamp()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v7, v10, v12

    .line 117
    .local v7, startMillis:J
    const-string v10, "h:mmaa(zz) MMM dd"

    invoke-static {v10, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 118
    goto :goto_0

    .line 121
    .end local v7           #startMillis:J
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasCurrentPeriodNum()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getCurrentPeriodNum()I

    move-result v10

    if-lez v10, :cond_0

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getCurrentPeriodNum()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .line 124
    .local v4, periodIndex:I
    if-ltz v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getPeriodCount()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 125
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getPeriod(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    move-result-object v3

    .line 127
    .local v3, period:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    const/4 v2, 0x0

    .line 128
    .local v2, minutes:I
    :try_start_0
    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasMinutes()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 129
    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getMinutes()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 131
    :cond_1
    const/4 v6, 0x0

    .line 132
    .local v6, seconds:I
    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->hasSeconds()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 133
    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getSeconds()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 135
    :cond_2
    const-string v10, "%d:%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 141
    .end local v6           #seconds:I
    :goto_2
    invoke-direct/range {p0 .. p2}, Lcom/google/glass/home/search/results/SportsAnswerView;->getCurrentPeriodLabel(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)I

    move-result v5

    .line 142
    .local v5, periodLabel:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->getNumber()I

    move-result v14

    invoke-direct {p0, v14}, Lcom/google/glass/home/search/results/SportsAnswerView;->formatPeriodNum(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v5, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 137
    .end local v5           #periodLabel:I
    :catch_0
    move-exception v1

    .line 138
    .local v1, exception:Ljava/lang/NumberFormatException;
    sget-object v10, Lcom/google/glass/home/search/results/SportsAnswerView;->TAG:Ljava/lang/String;

    const-string v11, "Failed to parse elapsed time"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 151
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    .end local v2           #minutes:I
    .end local v3           #period:Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .end local v4           #periodIndex:I
    :cond_3
    iget-object v10, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->status:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v10, v9}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setSportsResult(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)V
    .locals 8
    .parameter "result"
    .parameter "match"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/search/results/SportsAnswerView;->setStatus(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)V

    .line 81
    iget-object v1, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->leftName:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstTeamShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasFirstTeamLogo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v7

    .line 86
    .local v7, logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    new-instance v0, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;

    iget-object v1, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->leftLogo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getHeight()I

    move-result v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->SMART_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    .line 89
    .local v0, imageLoadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 91
    .end local v0           #imageLoadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;
    .end local v7           #logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->leftScore:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->leftScore:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getFirstScore()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/home/search/results/SportsAnswerView;->goneIfEmpty(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->rightName:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondTeamShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->hasSecondTeamLogo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondTeamLogo()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v7

    .line 97
    .restart local v7       #logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    new-instance v0, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;

    iget-object v1, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->rightLogo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/SportsAnswerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getHeight()I

    move-result v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->SMART_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    .line 100
    .restart local v0       #imageLoadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 102
    .end local v0           #imageLoadingTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;
    .end local v7           #logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->rightScore:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/google/glass/home/search/results/SportsAnswerView;->rightScore:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->getSecondScore()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/home/search/results/SportsAnswerView;->goneIfEmpty(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    return-void
.end method

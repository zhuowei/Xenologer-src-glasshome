.class public Lcom/google/glass/home/search/results/MajelProcessor;
.super Ljava/lang/Object;
.source "MajelProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final recognitionResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/google/glass/home/search/results/MajelProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/MajelProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "recognitionResult"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/google/glass/home/search/results/MajelProcessor;->recognitionResult:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/search/results/MajelProcessor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static fixTimeZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "timeZone"

    .prologue
    const/high16 v6, 0x4270

    .line 861
    if-eqz p0, :cond_1

    const-string v5, "GMT+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GMT-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_1

    .line 865
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 866
    .local v4, sign:C
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 868
    .local v3, offset:F
    const/high16 v5, 0x41c0

    rem-float/2addr v3, v5

    .line 869
    float-to-int v1, v3

    .line 870
    .local v1, hours:I
    mul-float v5, v3, v6

    rem-float/2addr v5, v6

    float-to-int v2, v5

    .line 871
    .local v2, minutes:I
    const-string v5, "GMT%c%d:%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 877
    .end local v1           #hours:I
    .end local v2           #minutes:I
    .end local v3           #offset:F
    .end local v4           #sign:C
    :cond_1
    :goto_0
    return-object p0

    .line 872
    :catch_0
    move-exception v0

    .line 874
    .local v0, exception:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/google/glass/home/search/results/MajelProcessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid time zone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static formatOpenHours(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .parameter "intervals"

    .prologue
    .line 904
    const-string v0, "\u2013"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 906
    const-string v0, ":00"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 908
    const-string v0, " am"

    const-string v1, "<sup><small><small>AM</small></small></sup>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 909
    const-string v0, " pm"

    const-string v1, "<sup><small><small>PM</small></small></sup>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 910
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private getActionResults(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 19
    .parameter "peanut"

    .prologue
    .line 363
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getActionV2(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    move-result-object v14

    .line 364
    .local v14, action:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    invoke-virtual {v14}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->hasMapActionExtension()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getMapActionExtension()Lcom/google/majel/proto/ActionV2Protos$MapAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->getLocationCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 365
    invoke-virtual {v14}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->getMapActionExtension()Lcom/google/majel/proto/ActionV2Protos$MapAction;

    move-result-object v18

    .line 366
    .local v18, mapAction:Lcom/google/majel/proto/ActionV2Protos$MapAction;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->getLocation(I)Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v17

    .line 367
    .local v17, location:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v15

    .line 369
    .local v15, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    new-instance v1, Lcom/google/glass/home/search/results/LocalSingleAnswerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;-><init>(Landroid/content/Context;)V

    .line 370
    .local v1, view:Lcom/google/glass/home/search/results/LocalSingleAnswerView;
    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatDegrees()D

    move-result-wide v5

    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngDegrees()D

    move-result-wide v7

    const/high16 v9, -0x4080

    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatSpanDegrees()D

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngSpanDegrees()D

    move-result-wide v12

    invoke-virtual/range {v1 .. v13}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->setLocalResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;DDFDD)V

    .line 373
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v16, bundle:Landroid/os/Bundle;
    const-string v2, "LOCATION_COORDINATES_KEY"

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatDegrees()D

    move-result-wide v5

    aput-wide v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngDegrees()D

    move-result-wide v5

    aput-wide v5, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 376
    const-string v2, "LOCATION_NAME_KEY"

    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "URL_KEY"

    invoke-virtual/range {v17 .. v17}, Lcom/google/majel/proto/ActionV2Protos$Location;->getMapsUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getLocalResultOptionMenu(Landroid/content/Context;Z)Lcom/google/glass/widget/OptionMenu;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v2, v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 380
    invoke-virtual {v15}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v2

    .line 383
    .end local v1           #view:Lcom/google/glass/home/search/results/LocalSingleAnswerView;
    .end local v15           #builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    .end local v16           #bundle:Landroid/os/Bundle;
    .end local v17           #location:Lcom/google/majel/proto/ActionV2Protos$Location;
    .end local v18           #mapAction:Lcom/google/majel/proto/ActionV2Protos$MapAction;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAttribution(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 2
    .parameter "peanut"

    .prologue
    .line 791
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/majel/proto/PeanutProtos$Text;->getAttributionCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 792
    :cond_0
    new-instance v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    .line 794
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/majel/proto/PeanutProtos$Text;->getAttribution(I)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v0

    goto :goto_0
.end method

.method private getAttributionList(Lcom/google/majel/proto/PeanutProtos$Peanut;)Ljava/util/List;
    .locals 2
    .parameter "peanut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/majel/proto/PeanutProtos$Peanut;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/AttributionProtos$Attribution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/majel/proto/PeanutProtos$Text;->getAttributionCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 799
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 800
    .local v0, attributions:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/AttributionProtos$Attribution;>;"
    new-instance v1, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    .end local v0           #attributions:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/AttributionProtos$Attribution;>;"
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/majel/proto/PeanutProtos$Text;->getAttributionList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private getImage(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "peanut"

    .prologue
    .line 807
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Image;-><init>()V

    .line 810
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponse(I)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v0

    goto :goto_0
.end method

.method private getImageAttribution(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 2
    .parameter "peanut"

    .prologue
    const/4 v1, 0x0

    .line 814
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponse(I)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/majel/proto/PeanutProtos$Image;->getAttributionCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 816
    :cond_0
    new-instance v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    .line 818
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponse(I)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/majel/proto/PeanutProtos$Image;->getAttribution(I)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v0

    goto :goto_0
.end method

.method private getImageResults(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 27
    .parameter "peanut"
    .parameter "isFromTimeline"

    .prologue
    .line 175
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v16

    .line 176
    .local v16, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v25

    .line 179
    .local v25, optionMenu:Lcom/google/glass/widget/OptionMenu;
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseCount()I

    move-result v15

    .line 183
    .local v15, available:I
    packed-switch v15, :pswitch_data_0

    .line 202
    const/16 v26, 0x2

    .line 203
    .local v26, rows:I
    const/16 v18, 0x3

    .line 207
    .local v18, columns:I
    :goto_0
    mul-int v4, v18, v26

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 209
    .local v23, imageCount:I
    new-instance v24, Lcom/google/glass/home/search/results/ImageCoverView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/google/glass/home/search/results/ImageCoverView;-><init>(Landroid/content/Context;)V

    .line 210
    .local v24, imageCoverView:Lcom/google/glass/home/search/results/ImageCoverView;
    if-eqz p2, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/search/results/MajelProcessor;->recognitionResult:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/glass/home/search/results/ImageCoverView;->setQuery(Ljava/lang/String;)V

    .line 214
    :cond_0
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v21, gridImageViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ImageView;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .line 218
    .local v19, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v7, v4, v18

    .line 219
    .local v7, gridImageWidth:I
    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int v8, v4, v26

    .line 220
    .local v8, gridImageHeight:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 221
    new-instance v5, Lcom/google/glass/horizontalscroll/HorizontalScrollImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v5, v4}, Lcom/google/glass/horizontalscroll/HorizontalScrollImageView;-><init>(Landroid/content/Context;)V

    .line 222
    .local v5, gridImageView:Landroid/widget/ImageView;
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponse(I)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v6

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/search/results/MajelProcessor;->loadImageView(Landroid/widget/ImageView;Lcom/google/majel/proto/PeanutProtos$Image;IIZ)V

    .line 224
    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 185
    .end local v5           #gridImageView:Landroid/widget/ImageView;
    .end local v7           #gridImageWidth:I
    .end local v8           #gridImageHeight:I
    .end local v18           #columns:I
    .end local v19           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v21           #gridImageViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ImageView;>;"
    .end local v22           #i:I
    .end local v23           #imageCount:I
    .end local v24           #imageCoverView:Lcom/google/glass/home/search/results/ImageCoverView;
    .end local v26           #rows:I
    :pswitch_0
    const/16 v26, 0x1

    .line 186
    .restart local v26       #rows:I
    const/16 v18, 0x1

    .line 187
    .restart local v18       #columns:I
    goto :goto_0

    .line 189
    .end local v18           #columns:I
    .end local v26           #rows:I
    :pswitch_1
    const/16 v26, 0x1

    .line 190
    .restart local v26       #rows:I
    const/16 v18, 0x2

    .line 191
    .restart local v18       #columns:I
    goto :goto_0

    .line 193
    .end local v18           #columns:I
    .end local v26           #rows:I
    :pswitch_2
    const/16 v26, 0x1

    .line 194
    .restart local v26       #rows:I
    const/16 v18, 0x3

    .line 195
    .restart local v18       #columns:I
    goto :goto_0

    .line 198
    .end local v18           #columns:I
    .end local v26           #rows:I
    :pswitch_3
    const/16 v26, 0x2

    .line 199
    .restart local v26       #rows:I
    const/16 v18, 0x2

    .line 200
    .restart local v18       #columns:I
    goto :goto_0

    .line 226
    .restart local v7       #gridImageWidth:I
    .restart local v8       #gridImageHeight:I
    .restart local v19       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v21       #gridImageViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ImageView;>;"
    .restart local v22       #i:I
    .restart local v23       #imageCount:I
    .restart local v24       #imageCoverView:Lcom/google/glass/home/search/results/ImageCoverView;
    :cond_1
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/home/search/results/ImageCoverView;->setImageData(Ljava/util/List;II)V

    .line 227
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 230
    if-nez p2, :cond_3

    .line 234
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 235
    new-instance v20, Lcom/google/glass/home/search/results/ImageAnswerView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/google/glass/home/search/results/ImageAnswerView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v20, fullScreenImageView:Lcom/google/glass/home/search/results/ImageAnswerView;
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponse(I)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v11

    .line 237
    .local v11, image:Lcom/google/majel/proto/PeanutProtos$Image;
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/google/glass/home/search/results/ImageAnswerView;->setAttribution(Lcom/google/majel/proto/PeanutProtos$Image;)V

    .line 238
    invoke-virtual/range {v20 .. v20}, Lcom/google/glass/home/search/results/ImageAnswerView;->getImageView()Landroid/widget/ImageView;

    move-result-object v10

    move-object/from16 v0, v19

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v19

    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/google/glass/home/search/results/MajelProcessor;->loadImageView(Landroid/widget/ImageView;Lcom/google/majel/proto/PeanutProtos$Image;IIZ)V

    .line 240
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v17, bundle:Landroid/os/Bundle;
    invoke-virtual {v11}, Lcom/google/majel/proto/PeanutProtos$Image;->getAttributionCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 243
    const-string v4, "URL_KEY"

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Lcom/google/majel/proto/PeanutProtos$Image;->getAttribution(I)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 234
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 245
    :cond_2
    const-string v4, "URL_KEY"

    invoke-virtual {v11}, Lcom/google/majel/proto/PeanutProtos$Image;->getUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 251
    .end local v11           #image:Lcom/google/majel/proto/PeanutProtos$Image;
    .end local v17           #bundle:Landroid/os/Bundle;
    .end local v20           #fullScreenImageView:Lcom/google/glass/home/search/results/ImageAnswerView;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v4

    return-object v4

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getStructuredResults(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 9
    .parameter "peanut"
    .parameter "isFromTimeline"

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getStructuredResponse()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    move-result-object v8

    .line 389
    .local v8, sr:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/MajelProcessor;->getAttribution(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v6

    .line 390
    .local v6, attribution:Lcom/google/majel/proto/AttributionProtos$Attribution;
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasCalculatorResultExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getCalculatorResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    move-result-object v0

    invoke-direct {p0, v0, v6, p2}, Lcom/google/glass/home/search/results/MajelProcessor;->processCalculatorResult(Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;Lcom/google/majel/proto/AttributionProtos$Attribution;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    .line 393
    :cond_0
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFlightResultExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getFlightResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    move-result-object v7

    .line 395
    .local v7, result:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    invoke-direct {p0, v7}, Lcom/google/glass/home/search/results/MajelProcessor;->processFlightResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto :goto_0

    .line 396
    .end local v7           #result:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    :cond_1
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasDictionaryResultExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getDictionaryResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/MajelProcessor;->processDictionaryResult(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasWeatherResultExtension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getWeatherResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/MajelProcessor;->processWeatherResult(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_3
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSportsResultExtension()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 401
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getSportsResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/MajelProcessor;->processSportsResult(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_4
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasEcoutezLocalResultsExtension()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getEcoutezLocalResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/glass/home/search/results/MajelProcessor;->processLocalResults(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_5
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasFinanceResultExtension()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 405
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getFinanceResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/results/MajelProcessor;->processFinanceResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_6
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasKnowledgeResultExtension()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 407
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getKnowledgeResultExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/MajelProcessor;->getImage(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/MajelProcessor;->getImageAttribution(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v4

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/search/results/MajelProcessor;->processKnowledgeResult(Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;Lcom/google/majel/proto/PeanutProtos$Text;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_7
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSnippetResultsExtension()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 410
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getSnippetResultsExtension()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/glass/home/search/results/MajelProcessor;->processSnippetResults(Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto/16 :goto_0

    .line 411
    :cond_8
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasTranslationResultExtension()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 412
    invoke-virtual {v8}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->getTranslationResultExtension()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/glass/home/search/results/MajelProcessor;->processTranslationResult(Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto/16 :goto_0

    .line 415
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static getTargetImageDimensions(IIII)Landroid/util/Pair;
    .locals 6
    .parameter "availableWidth"
    .parameter "availableHeight"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    int-to-float v3, p2

    int-to-float v4, p3

    div-float v1, v3, v4

    .line 348
    .local v1, imageWidthToHeightRatio:F
    int-to-float v3, p0

    int-to-float v4, p1

    div-float v0, v3, v4

    .line 349
    .local v0, containerWidthToHeightRatio:F
    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    int-to-float v3, p0

    int-to-float v4, p2

    div-float v2, v3, v4

    .line 352
    .local v2, scaleFactor:F
    :goto_0
    new-instance v3, Landroid/util/Pair;

    int-to-float v4, p2

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-float v5, p3

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 349
    .end local v2           #scaleFactor:F
    :cond_0
    int-to-float v3, p1

    int-to-float v4, p3

    div-float v2, v3, v4

    goto :goto_0
.end method

.method private getTextResults(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 13
    .parameter "peanut"
    .parameter "isFromTimeline"

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v10

    .line 147
    .local v10, response:Lcom/google/majel/proto/PeanutProtos$Text;
    new-instance v0, Lcom/google/glass/home/search/results/AnswerData;

    invoke-virtual {v10}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplayDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/MajelProcessor;->getAttributionList(Lcom/google/majel/proto/PeanutProtos$Peanut;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/MajelProcessor;->getImage(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/MajelProcessor;->getImageAttribution(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisclaimerText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getHighConfidenceResponse()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-direct/range {v0 .. v7}, Lcom/google/glass/home/search/results/AnswerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Ljava/lang/String;Z)V

    .line 150
    .local v0, answerData:Lcom/google/glass/home/search/results/AnswerData;
    invoke-virtual {v0}, Lcom/google/glass/home/search/results/AnswerData;->getAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/AnswerData;->getAnswerDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x0

    .line 171
    :goto_1
    return-object v1

    .line 147
    .end local v0           #answerData:Lcom/google/glass/home/search/results/AnswerData;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 156
    .restart local v0       #answerData:Lcom/google/glass/home/search/results/AnswerData;
    :cond_1
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v8

    .line 157
    .local v8, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    iget-object v1, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v9

    .line 159
    .local v9, optionMenu:Lcom/google/glass/widget/OptionMenu;
    if-eqz p2, :cond_2

    .line 163
    new-instance v11, Lcom/google/glass/home/search/results/SnippetsCoverView;

    iget-object v1, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v11, v1}, Lcom/google/glass/home/search/results/SnippetsCoverView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v11, snippetCoverView:Lcom/google/glass/home/search/results/SnippetsCoverView;
    iget-object v1, p0, Lcom/google/glass/home/search/results/MajelProcessor;->recognitionResult:Ljava/lang/String;

    invoke-virtual {v11, v1}, Lcom/google/glass/home/search/results/SnippetsCoverView;->setQuery(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8, v11, v9}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 168
    .end local v11           #snippetCoverView:Lcom/google/glass/home/search/results/SnippetsCoverView;
    :cond_2
    new-instance v12, Lcom/google/glass/home/search/results/TextResponseAnswerView;

    iget-object v1, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v12, v1}, Lcom/google/glass/home/search/results/TextResponseAnswerView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v12, view:Lcom/google/glass/home/search/results/TextResponseAnswerView;
    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->setAnswerData(Lcom/google/glass/home/search/results/AnswerData;Z)V

    .line 170
    invoke-virtual {v8, v12, v9}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 171
    invoke-virtual {v8}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v1

    goto :goto_1
.end method

.method static getTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 10
    .parameter "timeStr"
    .parameter "zoneId"

    .prologue
    const/4 v6, 0x0

    .line 828
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    .line 851
    :goto_0
    return-object v4

    .line 832
    :cond_0
    :try_start_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 833
    .local v0, androidTime:Landroid/text/format/Time;
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 835
    const-string v7, "UTC"

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 837
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 839
    .local v2, millis:J
    if-eqz p1, :cond_2

    .line 840
    invoke-static {p1}, Lcom/google/glass/home/search/results/MajelProcessor;->fixTimeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 845
    :goto_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 846
    .local v5, zone:Ljava/util/TimeZone;
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 847
    .local v4, time:Ljava/util/Calendar;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 849
    .end local v0           #androidTime:Landroid/text/format/Time;
    .end local v2           #millis:J
    .end local v4           #time:Ljava/util/Calendar;
    .end local v5           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v1

    .line 850
    .local v1, e:Landroid/util/TimeFormatException;
    sget-object v7, Lcom/google/glass/home/search/results/MajelProcessor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received unrecognizable time value \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 851
    goto :goto_0

    .line 842
    .end local v1           #e:Landroid/util/TimeFormatException;
    .restart local v0       #androidTime:Landroid/text/format/Time;
    .restart local v2       #millis:J
    :cond_2
    :try_start_1
    const-string p1, "UTC"
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isInterestingLocal(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Z
    .locals 2
    .parameter "result"

    .prologue
    .line 607
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getHours()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getHours()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->getIntervalCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadImageView(Landroid/widget/ImageView;Lcom/google/majel/proto/PeanutProtos$Image;IIZ)V
    .locals 12
    .parameter "imageView"
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailOk"

    .prologue
    .line 270
    new-instance v0, Lcom/google/glass/home/search/results/MajelProcessor$1;

    iget-object v2, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/majel/proto/PeanutProtos$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->SMART_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-object v1, p0

    move v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move-object v8, p2

    move-object v9, p1

    move v10, p3

    move/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/glass/home/search/results/MajelProcessor$1;-><init>(Lcom/google/glass/home/search/results/MajelProcessor;Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;ZLcom/google/majel/proto/PeanutProtos$Image;Landroid/widget/ImageView;II)V

    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 336
    return-void
.end method

.method static maybeFormatNumbersInText(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "text"

    .prologue
    .line 888
    const-string v3, " "

    invoke-static {p0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 889
    .local v2, parts:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 890
    aget-object v1, v2, v0

    .line 891
    .local v1, part:Ljava/lang/String;
    const-string v3, "[+-]?\\d*(\\.\\d+)?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 892
    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 889
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    .end local v1           #part:Ljava/lang/String;
    :cond_1
    const-string v3, " "

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private processCalculatorResult(Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;Lcom/google/majel/proto/AttributionProtos$Attribution;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 11
    .parameter "result"
    .parameter "attribution"
    .parameter "isFromTimeline"

    .prologue
    .line 461
    invoke-virtual {p1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasLeft()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasRight()Z

    move-result v3

    if-nez v3, :cond_1

    .line 462
    :cond_0
    const/4 v3, 0x0

    .line 483
    :goto_0
    return-object v3

    .line 464
    :cond_1
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v7

    .line 465
    .local v7, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    iget-object v3, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v8

    .line 467
    .local v8, optionMenu:Lcom/google/glass/widget/OptionMenu;
    if-eqz p3, :cond_2

    .line 471
    new-instance v9, Lcom/google/glass/home/search/results/SnippetsCoverView;

    iget-object v3, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v9, v3}, Lcom/google/glass/home/search/results/SnippetsCoverView;-><init>(Landroid/content/Context;)V

    .line 472
    .local v9, snippetCoverView:Lcom/google/glass/home/search/results/SnippetsCoverView;
    iget-object v3, p0, Lcom/google/glass/home/search/results/MajelProcessor;->recognitionResult:Ljava/lang/String;

    invoke-virtual {v9, v3}, Lcom/google/glass/home/search/results/SnippetsCoverView;->setQuery(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v7, v9, v8}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 475
    .end local v9           #snippetCoverView:Lcom/google/glass/home/search/results/SnippetsCoverView;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->getLeft()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, answerText:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->getRight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/home/search/results/MajelProcessor;->maybeFormatNumbersInText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, description:Ljava/lang/String;
    new-instance v0, Lcom/google/glass/home/search/results/AnswerData;

    new-instance v4, Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-direct {v4}, Lcom/google/majel/proto/PeanutProtos$Image;-><init>()V

    new-instance v5, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v5}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    const-string v6, ""

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/home/search/results/AnswerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/majel/proto/AttributionProtos$Attribution;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Ljava/lang/String;)V

    .line 480
    .local v0, answerData:Lcom/google/glass/home/search/results/AnswerData;
    new-instance v10, Lcom/google/glass/home/search/results/TextResponseAnswerView;

    iget-object v3, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v10, v3}, Lcom/google/glass/home/search/results/TextResponseAnswerView;-><init>(Landroid/content/Context;)V

    .line 481
    .local v10, view:Lcom/google/glass/home/search/results/TextResponseAnswerView;
    const/4 v3, 0x1

    invoke-virtual {v10, v0, v3}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->setAnswerData(Lcom/google/glass/home/search/results/AnswerData;Z)V

    .line 482
    invoke-virtual {v7, v10, v8}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 483
    invoke-virtual {v7}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v3

    goto :goto_0
.end method

.method private processDictionaryResult(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 8
    .parameter "result"

    .prologue
    .line 488
    new-instance v0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    invoke-direct {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;-><init>()V

    .line 490
    .local v0, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v3

    .line 492
    .local v3, optionMenu:Lcom/google/glass/widget/OptionMenu;
    new-instance v4, Lcom/google/glass/home/search/results/DictionaryAnswerView;

    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/google/glass/home/search/results/DictionaryAnswerView;-><init>(Landroid/content/Context;)V

    .line 493
    .local v4, primary:Lcom/google/glass/home/search/results/DictionaryAnswerView;
    invoke-virtual {v4, p1}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->setDictionaryResultPrimary(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Z

    .line 494
    invoke-virtual {v0, v4, v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 496
    new-instance v5, Lcom/google/glass/home/search/results/DictionaryAnswerView;

    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/google/glass/home/search/results/DictionaryAnswerView;-><init>(Landroid/content/Context;)V

    .line 497
    .local v5, secondary:Lcom/google/glass/home/search/results/DictionaryAnswerView;
    invoke-virtual {v5, p1}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->setDictionaryResultSecondary(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Z

    move-result v1

    .line 498
    .local v1, hasSecondary:Z
    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v0, v5, v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 502
    :cond_0
    new-instance v6, Lcom/google/glass/home/search/results/DictionaryAnswerView;

    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/google/glass/home/search/results/DictionaryAnswerView;-><init>(Landroid/content/Context;)V

    .line 503
    .local v6, synonyms:Lcom/google/glass/home/search/results/DictionaryAnswerView;
    invoke-virtual {v6, p1}, Lcom/google/glass/home/search/results/DictionaryAnswerView;->settDictionaryResultSynonyms(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;)Z

    move-result v2

    .line 504
    .local v2, hasSynonyms:Z
    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {v0, v6, v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 508
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v7

    return-object v7
.end method

.method private processFinanceResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 5
    .parameter "result"

    .prologue
    .line 670
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v0

    .line 671
    .local v0, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    iget-object v4, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v2

    .line 673
    .local v2, optionMenu:Lcom/google/glass/widget/OptionMenu;
    new-instance v3, Lcom/google/glass/home/search/results/FinanceAnswerView;

    iget-object v4, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/glass/home/search/results/FinanceAnswerView;-><init>(Landroid/content/Context;)V

    .line 674
    .local v3, view:Lcom/google/glass/home/search/results/FinanceAnswerView;
    invoke-virtual {v3, p1}, Lcom/google/glass/home/search/results/FinanceAnswerView;->setFinanceResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;)V

    .line 675
    invoke-virtual {v0, v3, v2}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 680
    new-instance v1, Lcom/google/glass/home/search/results/FinanceDetailView;

    iget-object v4, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/google/glass/home/search/results/FinanceDetailView;-><init>(Landroid/content/Context;)V

    .line 681
    .local v1, detailView:Lcom/google/glass/home/search/results/FinanceDetailView;
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getStockResult()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/glass/home/search/results/FinanceDetailView;->setFinanceResult(Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;)V

    .line 682
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 684
    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v4

    return-object v4
.end method

.method private processFlightResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 8
    .parameter "result"

    .prologue
    .line 512
    new-instance v1, Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    invoke-direct {v1}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;-><init>()V

    .line 514
    .local v1, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v5

    .line 517
    .local v5, optionMenu:Lcom/google/glass/widget/OptionMenu;
    new-instance v6, Lcom/google/glass/home/search/results/FlightAnswerView;

    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/google/glass/home/search/results/FlightAnswerView;-><init>(Landroid/content/Context;)V

    .line 518
    .local v6, view:Lcom/google/glass/home/search/results/FlightAnswerView;
    invoke-virtual {v6, p1}, Lcom/google/glass/home/search/results/FlightAnswerView;->setFlightResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;)V

    .line 519
    invoke-virtual {v1, v6, v5}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 522
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->getFlightList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 523
    .local v3, flightData:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    new-instance v2, Lcom/google/glass/home/search/results/FlightDetailView;

    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/google/glass/home/search/results/FlightDetailView;-><init>(Landroid/content/Context;)V

    .line 524
    .local v2, departureCard:Lcom/google/glass/home/search/results/FlightDetailView;
    const/4 v7, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/google/glass/home/search/results/FlightDetailView;->setFlightResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;Z)V

    .line 525
    invoke-virtual {v1, v2, v5}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 527
    new-instance v0, Lcom/google/glass/home/search/results/FlightDetailView;

    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/google/glass/home/search/results/FlightDetailView;-><init>(Landroid/content/Context;)V

    .line 528
    .local v0, arrivalCard:Lcom/google/glass/home/search/results/FlightDetailView;
    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7}, Lcom/google/glass/home/search/results/FlightDetailView;->setFlightResult(Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;Z)V

    .line 529
    invoke-virtual {v1, v0, v5}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    goto :goto_0

    .line 532
    .end local v0           #arrivalCard:Lcom/google/glass/home/search/results/FlightDetailView;
    .end local v2           #departureCard:Lcom/google/glass/home/search/results/FlightDetailView;
    .end local v3           #flightData:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v7

    return-object v7
.end method

.method private processKnowledgeResult(Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;Lcom/google/majel/proto/PeanutProtos$Text;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 25
    .parameter "result"
    .parameter "text"
    .parameter "image"
    .parameter "imageAttribution"
    .parameter "isFromTimeline"

    .prologue
    .line 690
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v13

    .line 691
    .local v13, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v21

    .line 695
    .local v21, optionMenu:Lcom/google/glass/widget/OptionMenu;
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescriptionAttribution()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescriptionAttribution()Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageUrl()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescriptionAttribution()Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageUrl()Ljava/lang/String;

    move-result-object v24

    .line 698
    .local v24, websiteUrl:Ljava/lang/String;
    :goto_0
    const/4 v14, 0x0

    .line 699
    .local v14, bundle:Landroid/os/Bundle;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 700
    new-instance v14, Landroid/os/Bundle;

    .end local v14           #bundle:Landroid/os/Bundle;
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 701
    .restart local v14       #bundle:Landroid/os/Bundle;
    const-string v3, "URL_KEY"

    move-object/from16 v0, v24

    invoke-virtual {v14, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_0
    if-eqz p5, :cond_1

    .line 705
    new-instance v22, Lcom/google/glass/home/search/results/SnippetsCoverView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/google/glass/home/search/results/SnippetsCoverView;-><init>(Landroid/content/Context;)V

    .line 706
    .local v22, snippetCoverView:Lcom/google/glass/home/search/results/SnippetsCoverView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->recognitionResult:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/glass/home/search/results/SnippetsCoverView;->setQuery(Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/results/SnippetsCoverView;->setImage(Lcom/google/majel/proto/PeanutProtos$Image;)V

    .line 708
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 715
    .end local v22           #snippetCoverView:Lcom/google/glass/home/search/results/SnippetsCoverView;
    :cond_1
    const/16 v18, 0x0

    .line 716
    .local v18, hasCoverCard:Z
    const/16 v20, 0x0

    .line 717
    .local v20, mainText:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 718
    const/16 v18, 0x1

    .line 719
    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplay()Ljava/lang/String;

    move-result-object v20

    .line 722
    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/PeanutProtos$Text;->getAttributionList()Ljava/util/List;

    move-result-object v5

    .line 723
    .local v5, attributions:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/AttributionProtos$Attribution;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v20, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescription()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 725
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescriptionAttribution()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 726
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/majel/proto/AttributionProtos$Attribution;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescriptionAttribution()Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    .line 729
    :cond_3
    new-instance v2, Lcom/google/glass/home/search/results/AnswerData;

    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplayDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisclaimerText()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/google/glass/home/search/results/AnswerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Ljava/lang/String;Z)V

    .line 732
    .local v2, answerData:Lcom/google/glass/home/search/results/AnswerData;
    new-instance v15, Lcom/google/glass/home/search/results/TextResponseAnswerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v15, v3}, Lcom/google/glass/home/search/results/TextResponseAnswerView;-><init>(Landroid/content/Context;)V

    .line 733
    .local v15, cover:Lcom/google/glass/home/search/results/TextResponseAnswerView;
    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->setAnswerData(Lcom/google/glass/home/search/results/AnswerData;Z)V

    .line 734
    move-object/from16 v0, v21

    invoke-virtual {v13, v15, v0, v14}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 738
    .end local v2           #answerData:Lcom/google/glass/home/search/results/AnswerData;
    .end local v5           #attributions:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/AttributionProtos$Attribution;>;"
    .end local v15           #cover:Lcom/google/glass/home/search/results/TextResponseAnswerView;
    :cond_4
    if-eqz v20, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescription()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 740
    :cond_5
    if-eqz v18, :cond_8

    new-instance v6, Lcom/google/glass/home/search/results/AnswerData;

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescriptionAttribution()Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    invoke-direct/range {v6 .. v12}, Lcom/google/glass/home/search/results/AnswerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/majel/proto/AttributionProtos$Attribution;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Ljava/lang/String;)V

    move-object v2, v6

    .line 745
    .restart local v2       #answerData:Lcom/google/glass/home/search/results/AnswerData;
    :goto_1
    new-instance v23, Lcom/google/glass/home/search/results/TextResponseAnswerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/google/glass/home/search/results/TextResponseAnswerView;-><init>(Landroid/content/Context;)V

    .line 746
    .local v23, view:Lcom/google/glass/home/search/results/TextResponseAnswerView;
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->setAnswerData(Lcom/google/glass/home/search/results/AnswerData;Z)V

    .line 747
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1, v14}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 751
    .end local v2           #answerData:Lcom/google/glass/home/search/results/AnswerData;
    .end local v23           #view:Lcom/google/glass/home/search/results/TextResponseAnswerView;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getFactCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 752
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getFactList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    .line 753
    .local v16, fact:Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    new-instance v17, Lcom/google/glass/home/search/results/TextResponseAnswerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/google/glass/home/search/results/TextResponseAnswerView;-><init>(Landroid/content/Context;)V

    .line 754
    .local v17, factView:Lcom/google/glass/home/search/results/TextResponseAnswerView;
    new-instance v3, Lcom/google/glass/home/search/results/AnswerData;

    invoke-virtual/range {v16 .. v16}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/google/glass/home/search/results/AnswerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/home/search/results/TextResponseAnswerView;->setAnswerData(Lcom/google/glass/home/search/results/AnswerData;Z)V

    .line 756
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1, v14}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    goto :goto_2

    .line 695
    .end local v14           #bundle:Landroid/os/Bundle;
    .end local v16           #fact:Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .end local v17           #factView:Lcom/google/glass/home/search/results/TextResponseAnswerView;
    .end local v18           #hasCoverCard:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #mainText:Ljava/lang/String;
    .end local v24           #websiteUrl:Ljava/lang/String;
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 740
    .restart local v14       #bundle:Landroid/os/Bundle;
    .restart local v18       #hasCoverCard:Z
    .restart local v20       #mainText:Ljava/lang/String;
    .restart local v24       #websiteUrl:Ljava/lang/String;
    :cond_8
    new-instance v6, Lcom/google/glass/home/search/results/AnswerData;

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescriptionAttribution()Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v9

    const-string v12, ""

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v12}, Lcom/google/glass/home/search/results/AnswerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/majel/proto/AttributionProtos$Attribution;Lcom/google/majel/proto/PeanutProtos$Image;Lcom/google/majel/proto/AttributionProtos$Attribution;Ljava/lang/String;)V

    move-object v2, v6

    goto :goto_1

    .line 760
    :cond_9
    invoke-virtual {v13}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v3

    return-object v3
.end method

.method private processLocalResults(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 22
    .parameter "results"
    .parameter "isFromTimeline"

    .prologue
    .line 613
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v15

    .line 617
    .local v15, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getLocalResultCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 618
    new-instance v17, Lcom/google/glass/home/search/results/LocalCoverView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/google/glass/home/search/results/LocalCoverView;-><init>(Landroid/content/Context;)V

    .line 619
    .local v17, cover:Lcom/google/glass/home/search/results/LocalCoverView;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/results/LocalCoverView;->setLocalResults(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->recognitionResult:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/glass/home/search/results/LocalCoverView;->setQuery(Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 626
    .end local v17           #cover:Lcom/google/glass/home/search/results/LocalCoverView;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getLocalResultList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 630
    .local v20, result:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    invoke-virtual/range {p1 .. p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getLocalResultCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/glass/home/search/results/MajelProcessor;->isInterestingLocal(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 631
    :cond_1
    new-instance v2, Lcom/google/glass/home/search/results/LocalSingleAnswerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;-><init>(Landroid/content/Context;)V

    .line 632
    .local v2, localView:Lcom/google/glass/home/search/results/LocalSingleAnswerView;
    move-object/from16 v21, v2

    .line 634
    .local v21, view:Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatSpanDegrees()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngSpanDegrees()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 635
    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getHours()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLatDegrees()D

    move-result-wide v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLngDegrees()D

    move-result-wide v8

    const/high16 v10, -0x4080

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLatSpanDegrees()D

    move-result-wide v11

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLngSpanDegrees()D

    move-result-wide v13

    invoke-virtual/range {v2 .. v14}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->setLocalResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;DDFDD)V

    .line 652
    .end local v2           #localView:Lcom/google/glass/home/search/results/LocalSingleAnswerView;
    :goto_1
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 653
    .local v16, bundle:Landroid/os/Bundle;
    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v18, 0x1

    .line 654
    .local v18, hasPhoneNumber:Z
    :goto_2
    if-eqz v18, :cond_2

    .line 655
    const-string v3, "PHONE_NUMBER_KEY"

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_2
    const-string v3, "LOCATION_COORDINATES_KEY"

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLatDegrees()D

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLngDegrees()D

    move-result-wide v6

    aput-wide v6, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 659
    const-string v3, "LOCATION_NAME_KEY"

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v3, "LOCATION_ADDRESS_KEY"

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v3, "URL_KEY"

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getMapsUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    move/from16 v0, v18

    invoke-static {v3, v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getLocalResultOptionMenu(Landroid/content/Context;Z)Lcom/google/glass/widget/OptionMenu;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v3, v1}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    goto/16 :goto_0

    .line 640
    .end local v16           #bundle:Landroid/os/Bundle;
    .end local v18           #hasPhoneNumber:Z
    .restart local v2       #localView:Lcom/google/glass/home/search/results/LocalSingleAnswerView;
    :cond_3
    const/high16 v10, 0x4180

    .line 641
    .local v10, defaultMapZoom:F
    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getHours()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLatDegrees()D

    move-result-wide v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLngDegrees()D

    move-result-wide v8

    const-wide/high16 v11, -0x4010

    const-wide/high16 v13, -0x4010

    invoke-virtual/range {v2 .. v14}, Lcom/google/glass/home/search/results/LocalSingleAnswerView;->setLocalResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;DDFDD)V

    goto/16 :goto_1

    .line 647
    .end local v2           #localView:Lcom/google/glass/home/search/results/LocalSingleAnswerView;
    .end local v10           #defaultMapZoom:F
    .end local v21           #view:Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
    :cond_4
    new-instance v17, Lcom/google/glass/home/search/results/LocalCoverView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/google/glass/home/search/results/LocalCoverView;-><init>(Landroid/content/Context;)V

    .line 648
    .restart local v17       #cover:Lcom/google/glass/home/search/results/LocalCoverView;
    move-object/from16 v21, v17

    .line 649
    .restart local v21       #view:Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/results/LocalCoverView;->setLocalResults(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;)V

    goto/16 :goto_1

    .line 653
    .end local v17           #cover:Lcom/google/glass/home/search/results/LocalCoverView;
    .restart local v16       #bundle:Landroid/os/Bundle;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 666
    .end local v16           #bundle:Landroid/os/Bundle;
    .end local v20           #result:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .end local v21           #view:Lcom/google/glass/horizontalscroll/HorizontalScrollLinearLayout;
    :cond_6
    invoke-virtual {v15}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v3

    return-object v3
.end method

.method private processPeanut(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 2
    .parameter "peanut"
    .parameter "isFromTimeline"

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, resultsContainer:Lcom/google/glass/home/search/results/ResultsContainer;
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasStructuredResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/search/results/MajelProcessor;->getStructuredResults(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    .line 102
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getActionV2Count()I

    move-result v1

    if-lez v1, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lcom/google/glass/home/search/results/MajelProcessor;->getActionResults(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 108
    :cond_1
    if-nez v0, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/search/results/MajelProcessor;->getTextResults(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 120
    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/search/results/MajelProcessor;->getImageResults(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processSnippetResults(Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 9
    .parameter "results"
    .parameter "isFromTimeline"

    .prologue
    .line 765
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->getResultCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 766
    const/4 v7, 0x0

    .line 787
    :goto_0
    return-object v7

    .line 769
    :cond_0
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v0

    .line 770
    .local v0, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v3

    .line 772
    .local v3, optionMenu:Lcom/google/glass/widget/OptionMenu;
    if-eqz p2, :cond_1

    .line 774
    new-instance v6, Lcom/google/glass/home/search/results/SnippetsCoverView;

    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/google/glass/home/search/results/SnippetsCoverView;-><init>(Landroid/content/Context;)V

    .line 775
    .local v6, snippetCoverView:Lcom/google/glass/home/search/results/SnippetsCoverView;
    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->recognitionResult:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/glass/home/search/results/SnippetsCoverView;->setQuery(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0, v6, v3}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 780
    .end local v6           #snippetCoverView:Lcom/google/glass/home/search/results/SnippetsCoverView;
    :cond_1
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->getResultList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 781
    .local v4, snippet:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    new-instance v5, Lcom/google/glass/home/search/results/SnippetAnswerView;

    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/google/glass/home/search/results/SnippetAnswerView;-><init>(Landroid/content/Context;)V

    .line 782
    .local v5, snippetAnswerView:Lcom/google/glass/home/search/results/SnippetAnswerView;
    invoke-virtual {v5, v4}, Lcom/google/glass/home/search/results/SnippetAnswerView;->setSnippet(Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;)V

    .line 783
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 784
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "URL_KEY"

    invoke-virtual {v4}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, v5, v3, v1}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    goto :goto_1

    .line 787
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #snippet:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .end local v5           #snippetAnswerView:Lcom/google/glass/home/search/results/SnippetAnswerView;
    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v7

    goto :goto_0
.end method

.method private processSportsResult(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 7
    .parameter "result"

    .prologue
    .line 568
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasTeamData()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 569
    const/4 v2, 0x0

    .line 570
    .local v2, match:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasInProgressMatch()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getInProgressMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v2

    .line 578
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 579
    new-instance v5, Lcom/google/glass/home/search/results/SportsAnswerView;

    iget-object v6, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/glass/home/search/results/SportsAnswerView;-><init>(Landroid/content/Context;)V

    .line 580
    .local v5, view:Lcom/google/glass/home/search/results/SportsAnswerView;
    invoke-virtual {v5, p1, v2}, Lcom/google/glass/home/search/results/SportsAnswerView;->setSportsResult(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)V

    .line 581
    iget-object v6, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->fromView(Landroid/view/View;Landroid/content/Context;)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v6

    .line 599
    .end local v2           #match:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .end local v5           #view:Lcom/google/glass/home/search/results/SportsAnswerView;
    :goto_1
    return-object v6

    .line 572
    .restart local v2       #match:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    :cond_1
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasLastMatch()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 573
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getLastMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v2

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->hasNextMatch()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 575
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getTeamData()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->getNextMatch()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v2

    goto :goto_0

    .line 583
    .end local v2           #match:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    :cond_3
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->hasAssociationData()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getAssociationData()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->hasMatchList()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 585
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v0

    .line 586
    .local v0, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->getAssociationData()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->getMatchList()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v3

    .line 587
    .local v3, matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    invoke-virtual {v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->getMatchList()Ljava/util/List;

    move-result-object v4

    .line 589
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/EcoutezStructuredResponse$Match;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 590
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 591
    .restart local v2       #match:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    new-instance v5, Lcom/google/glass/home/search/results/SportsAnswerView;

    iget-object v6, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/glass/home/search/results/SportsAnswerView;-><init>(Landroid/content/Context;)V

    .line 592
    .restart local v5       #view:Lcom/google/glass/home/search/results/SportsAnswerView;
    invoke-virtual {v5, p1, v2}, Lcom/google/glass/home/search/results/SportsAnswerView;->setSportsResult(Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;Lcom/google/majel/proto/EcoutezStructuredResponse$Match;)V

    .line 593
    iget-object v6, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 589
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 595
    .end local v2           #match:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .end local v5           #view:Lcom/google/glass/home/search/results/SportsAnswerView;
    :cond_4
    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v6

    goto :goto_1

    .line 599
    .end local v0           #builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    .end local v1           #i:I
    .end local v3           #matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/EcoutezStructuredResponse$Match;>;"
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private processTranslationResult(Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 9
    .parameter "result"
    .parameter "isFromTimeline"

    .prologue
    .line 420
    invoke-static {p1}, Lcom/google/glass/voice/network/translate/NetworkTts;->getNetworkTtsUri(Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, networkUri:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v2, 0x1

    .line 428
    .local v2, canRequestTts:Z
    :goto_0
    if-nez p2, :cond_0

    if-eqz v2, :cond_0

    .line 429
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/glass/home/search/results/MajelProcessor$2;

    invoke-direct {v7, p0, v3}, Lcom/google/glass/home/search/results/MajelProcessor$2;-><init>(Lcom/google/glass/home/search/results/MajelProcessor;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 437
    :cond_0
    new-instance v5, Lcom/google/glass/home/search/results/TranslationAnswerView;

    iget-object v6, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/glass/home/search/results/TranslationAnswerView;-><init>(Landroid/content/Context;)V

    .line 438
    .local v5, view:Lcom/google/glass/home/search/results/TranslationAnswerView;
    invoke-virtual {v5, p1}, Lcom/google/glass/home/search/results/TranslationAnswerView;->setTranslationResult(Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;)V

    .line 439
    new-instance v0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    invoke-direct {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;-><init>()V

    .line 442
    .local v0, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    const/4 v1, 0x0

    .line 445
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 446
    new-instance v4, Lcom/google/glass/widget/OptionMenu;

    iget-object v6, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    .line 447
    .local v4, optionMenu:Lcom/google/glass/widget/OptionMenu;
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/home/R$string;->timeline_menu_read_aloud:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/glass/home/R$drawable;->ic_read_aloud_medium:I

    invoke-virtual {v4, v6, v7, v8}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 449
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #bundle:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 450
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v6, "URL_KEY"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_1
    invoke-virtual {v0, v5, v4, v1}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 455
    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v6

    return-object v6

    .line 424
    .end local v0           #builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #canRequestTts:Z
    .end local v4           #optionMenu:Lcom/google/glass/widget/OptionMenu;
    .end local v5           #view:Lcom/google/glass/home/search/results/TranslationAnswerView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 452
    .restart local v0       #builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v2       #canRequestTts:Z
    .restart local v5       #view:Lcom/google/glass/home/search/results/TranslationAnswerView;
    :cond_2
    iget-object v6, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v4

    .restart local v4       #optionMenu:Lcom/google/glass/widget/OptionMenu;
    goto :goto_1
.end method

.method private processWeatherResult(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 12
    .parameter "result"

    .prologue
    .line 536
    iget-object v11, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v6

    .line 538
    .local v6, optionMenu:Lcom/google/glass/widget/OptionMenu;
    invoke-static {}, Lcom/google/glass/home/search/results/ResultsContainer;->newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v0

    .line 539
    .local v0, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    new-instance v1, Lcom/google/glass/home/search/results/WeatherAnswerView;

    iget-object v11, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v1, v11}, Lcom/google/glass/home/search/results/WeatherAnswerView;-><init>(Landroid/content/Context;)V

    .line 540
    .local v1, coverView:Lcom/google/glass/home/search/results/WeatherAnswerView;
    invoke-virtual {v1, p1}, Lcom/google/glass/home/search/results/WeatherAnswerView;->setWeatherResult(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;)V

    .line 541
    invoke-virtual {v0, v1, v6}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 545
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getDailyForecastList()Ljava/util/List;

    move-result-object v5

    .line 546
    .local v5, fullList:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;>;"
    invoke-virtual {p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->getDailyForecastCount()I

    move-result v10

    .line 547
    .local v10, totalNumDailyForecast:I
    if-lez v10, :cond_0

    .line 548
    invoke-static {p1}, Lcom/google/glass/home/search/results/WeatherForecastView;->getForecastStartDate(Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;)Ljava/util/Date;

    move-result-object v2

    .line 550
    .local v2, forecastStartDate:Ljava/util/Date;
    const/4 v4, 0x3

    .line 551
    .local v4, forecastsPerCard:I
    const/4 v9, 0x1

    .line 552
    .local v9, subListStartIndex:I
    const/4 v11, 0x4

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 553
    .local v8, subListEndIndex:I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 554
    invoke-interface {v5, v9, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 556
    .local v7, subList:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;>;"
    new-instance v3, Lcom/google/glass/home/search/results/WeatherForecastView;

    iget-object v11, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-direct {v3, v11}, Lcom/google/glass/home/search/results/WeatherForecastView;-><init>(Landroid/content/Context;)V

    .line 557
    .local v3, forecastView:Lcom/google/glass/home/search/results/WeatherForecastView;
    invoke-virtual {v3, v7, v2, v9}, Lcom/google/glass/home/search/results/WeatherForecastView;->setDailyForecast(Ljava/util/List;Ljava/util/Date;I)V

    .line 558
    invoke-virtual {v0, v3, v6}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 560
    move v9, v8

    .line 561
    add-int v11, v8, v4

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 562
    goto :goto_0

    .line 564
    .end local v2           #forecastStartDate:Ljava/util/Date;
    .end local v3           #forecastView:Lcom/google/glass/home/search/results/WeatherForecastView;
    .end local v4           #forecastsPerCard:I
    .end local v7           #subList:Ljava/util/List;,"Ljava/util/List<Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;>;"
    .end local v8           #subListEndIndex:I
    .end local v9           #subListStartIndex:I
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v11

    return-object v11
.end method

.method private speakText(Lcom/google/majel/proto/PeanutProtos$Peanut;)V
    .locals 4
    .parameter "peanut"

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v0

    .line 126
    .local v0, text:Lcom/google/majel/proto/PeanutProtos$Text;
    const/4 v1, 0x0

    .line 127
    .local v1, tts:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasStructuredResponse()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getStructuredResponse()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->hasSnippetResultsExtension()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/HomeApplication;->speakText(Ljava/lang/String;)V

    .line 143
    .end local v0           #text:Lcom/google/majel/proto/PeanutProtos$Text;
    .end local v1           #tts:Ljava/lang/String;
    :cond_1
    return-void

    .line 133
    .restart local v0       #text:Lcom/google/majel/proto/PeanutProtos$Text;
    .restart local v1       #tts:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/google/majel/proto/PeanutProtos$Text;->getVocalized()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {v0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplay()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public process(Lcom/google/majel/proto/MajelProtos$MajelResponse;Z)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 10
    .parameter "majel"
    .parameter "isFromTimeline"

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutCount()I

    move-result v5

    if-gtz v5, :cond_0

    .line 68
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "No Majel Peanuts"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 74
    .local v3, peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;
    invoke-direct {p0, v3, p2}, Lcom/google/glass/home/search/results/MajelProcessor;->processPeanut(Lcom/google/majel/proto/PeanutProtos$Peanut;Z)Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v4

    .line 75
    .local v4, resultsContainer:Lcom/google/glass/home/search/results/ResultsContainer;
    if-eqz v4, :cond_1

    .line 76
    if-nez p2, :cond_2

    .line 78
    invoke-direct {p0, v3}, Lcom/google/glass/home/search/results/MajelProcessor;->speakText(Lcom/google/majel/proto/PeanutProtos$Peanut;)V

    .line 91
    .end local v3           #peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;
    .end local v4           #resultsContainer:Lcom/google/glass/home/search/results/ResultsContainer;
    :cond_2
    :goto_0
    return-object v4

    .line 85
    :cond_3
    const-string v5, "query"

    iget-object v6, p0, Lcom/google/glass/home/search/results/MajelProcessor;->recognitionResult:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "peanut_count"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, eventTuple:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/home/search/results/MajelProcessor;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    .line 89
    .local v0, application:Lcom/google/glass/app/GlassApplication;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v5

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v5, v6, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 91
    const/4 v4, 0x0

    goto :goto_0
.end method

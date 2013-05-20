.class public final Lcom/google/majel/proto/PeanutProtos$Peanut;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Peanut"
.end annotation


# static fields
.field public static final ACTION_RESPONSE_FIELD_NUMBER:I = 0xb

.field public static final ACTION_V2_FIELD_NUMBER:I = 0xf

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static final DEBUG_FIELD_NUMBER:I = 0xa

.field public static final FINAL_SCORE_FIELD_NUMBER:I = 0xc

.field public static final HIGH_CONFIDENCE_RESPONSE_FIELD_NUMBER:I = 0x12

.field public static final IMAGE_RESPONSE_FIELD_NUMBER:I = 0x5

.field public static final IMAGE_RESPONSE_HEADER_FIELD_NUMBER:I = 0x15

.field public static final IS_LOGGABLE_FIELD_NUMBER:I = 0x13

.field public static final IS_QUESTION_FIELD_NUMBER:I = 0x8

.field public static final ONLY_SHOW_PEANUT_IMAGE_RESPONSE_FIELD_NUMBER:I = 0x14

.field public static final PLACE_RESPONSE_FIELD_NUMBER:I = 0x7

.field public static final PRIMARY_TYPE_FIELD_NUMBER:I = 0x9

.field public static final PRIMARY_TYPE_HINT_ACTION:I = 0x6

.field public static final PRIMARY_TYPE_HINT_IMAGE:I = 0x2

.field public static final PRIMARY_TYPE_HINT_LATLNG:I = 0x4

.field public static final PRIMARY_TYPE_HINT_TEXT:I = 0x1

.field public static final PRIMARY_TYPE_HINT_UNKNOWN:I = 0x0

.field public static final PRIMARY_TYPE_HINT_URL:I = 0x3

.field public static final PRIMARY_TYPE_HINT_VIDEO:I = 0x5

.field public static final SEARCH_RESULTS_UNNECESSARY_FIELD_NUMBER:I = 0x11

.field public static final SERVER_NAME_FIELD_NUMBER:I = 0x1

.field public static final STRUCTURED_RESPONSE_FIELD_NUMBER:I = 0xd

.field public static final TEXT_RESPONSE_FIELD_NUMBER:I = 0x3

.field public static final URL_RESPONSE_FIELD_NUMBER:I = 0x6

.field public static final VIDEO_RESPONSE_FIELD_NUMBER:I = 0xe

.field public static final WEB_SEARCH_TYPE_FIELD_NUMBER:I = 0x10


# instance fields
.field private actionResponse_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$ClientSideAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionV2_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionV2;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private confidence_:F

.field private debug_:Ljava/lang/String;

.field private finalScore_:F

.field private hasConfidence:Z

.field private hasDebug:Z

.field private hasFinalScore:Z

.field private hasHighConfidenceResponse:Z

.field private hasImageResponseHeader:Z

.field private hasIsLoggable:Z

.field private hasIsQuestion:Z

.field private hasOnlyShowPeanutImageResponse:Z

.field private hasPrimaryType:Z

.field private hasSearchResultsUnnecessary:Z

.field private hasServerName:Z

.field private hasStructuredResponse:Z

.field private hasTextResponse:Z

.field private hasWebSearchType:Z

.field private highConfidenceResponse_:Z

.field private imageResponseHeader_:Ljava/lang/String;

.field private imageResponse_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$Image;",
            ">;"
        }
    .end annotation
.end field

.field private isLoggable_:Z

.field private isQuestion_:Z

.field private onlyShowPeanutImageResponse_:Z

.field private placeResponse_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/LatLngProtos$LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private primaryType_:I

.field private searchResultsUnnecessary_:Z

.field private serverName_:Ljava/lang/String;

.field private structuredResponse_:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

.field private textResponse_:Lcom/google/majel/proto/PeanutProtos$Text;

.field private urlResponse_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$Url;",
            ">;"
        }
    .end annotation
.end field

.field private videoResponse_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$Video;",
            ">;"
        }
    .end annotation
.end field

.field private webSearchType_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1580
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    .line 1611
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    .line 1628
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    .line 1645
    iput-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse_:Lcom/google/majel/proto/PeanutProtos$Text;

    .line 1664
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse_:Ljava/util/List;

    .line 1698
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    .line 1714
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse_:Ljava/util/List;

    .line 1747
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse_:Ljava/util/List;

    .line 1780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse_:Ljava/util/List;

    .line 1814
    iput-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse_:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 1833
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse_:Ljava/util/List;

    .line 1866
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2_:Ljava/util/List;

    .line 1900
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    .line 1917
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    .line 1934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    .line 1951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    .line 1968
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    .line 1985
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    .line 2002
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    .line 2019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    .line 2127
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->cachedSize:I

    .line 1580
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2347
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2341
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    return-object v0
.end method


# virtual methods
.method public addActionResponse(Lcom/google/majel/proto/PeanutProtos$ClientSideAction;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1850
    if-nez p1, :cond_0

    .line 1851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse_:Ljava/util/List;

    .line 1856
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    return-object p0
.end method

.method public addActionV2(Lcom/google/majel/proto/ActionV2Protos$ActionV2;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1883
    if-nez p1, :cond_0

    .line 1884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2_:Ljava/util/List;

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1890
    return-object p0
.end method

.method public addImageResponse(Lcom/google/majel/proto/PeanutProtos$Image;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1681
    if-nez p1, :cond_0

    .line 1682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse_:Ljava/util/List;

    .line 1687
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1688
    return-object p0
.end method

.method public addPlaceResponse(Lcom/google/majel/proto/LatLngProtos$LatLng;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1764
    if-nez p1, :cond_0

    .line 1765
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse_:Ljava/util/List;

    .line 1770
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1771
    return-object p0
.end method

.method public addUrlResponse(Lcom/google/majel/proto/PeanutProtos$Url;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1731
    if-nez p1, :cond_0

    .line 1732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse_:Ljava/util/List;

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1738
    return-object p0
.end method

.method public addVideoResponse(Lcom/google/majel/proto/PeanutProtos$Video;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1797
    if-nez p1, :cond_0

    .line 1798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse_:Ljava/util/List;

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1804
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 2034
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearServerName()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2035
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearFinalScore()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2036
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearConfidence()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2037
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearTextResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2038
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearImageResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2039
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearImageResponseHeader()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2040
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearUrlResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2041
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearPlaceResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2042
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearVideoResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2043
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearStructuredResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2044
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearActionResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2045
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearActionV2()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2046
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearIsQuestion()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2047
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearPrimaryType()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2048
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearWebSearchType()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2049
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearSearchResultsUnnecessary()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2050
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearHighConfidenceResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2051
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearOnlyShowPeanutImageResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2052
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearIsLoggable()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2053
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clearDebug()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 2054
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->cachedSize:I

    .line 2055
    return-object p0
.end method

.method public clearActionResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1860
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse_:Ljava/util/List;

    .line 1861
    return-object p0
.end method

.method public clearActionV2()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1893
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2_:Ljava/util/List;

    .line 1894
    return-object p0
.end method

.method public clearConfidence()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasConfidence:Z

    .line 1638
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    .line 1639
    return-object p0
.end method

.method public clearDebug()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 2028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasDebug:Z

    .line 2029
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    .line 2030
    return-object p0
.end method

.method public clearFinalScore()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasFinalScore:Z

    .line 1621
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    .line 1622
    return-object p0
.end method

.method public clearHighConfidenceResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1977
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasHighConfidenceResponse:Z

    .line 1978
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    .line 1979
    return-object p0
.end method

.method public clearImageResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1691
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse_:Ljava/util/List;

    .line 1692
    return-object p0
.end method

.method public clearImageResponseHeader()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasImageResponseHeader:Z

    .line 1708
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    .line 1709
    return-object p0
.end method

.method public clearIsLoggable()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2011
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsLoggable:Z

    .line 2012
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    .line 2013
    return-object p0
.end method

.method public clearIsQuestion()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1909
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsQuestion:Z

    .line 1910
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    .line 1911
    return-object p0
.end method

.method public clearOnlyShowPeanutImageResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1994
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasOnlyShowPeanutImageResponse:Z

    .line 1995
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    .line 1996
    return-object p0
.end method

.method public clearPlaceResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1774
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse_:Ljava/util/List;

    .line 1775
    return-object p0
.end method

.method public clearPrimaryType()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1926
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasPrimaryType:Z

    .line 1927
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    .line 1928
    return-object p0
.end method

.method public clearSearchResultsUnnecessary()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasSearchResultsUnnecessary:Z

    .line 1961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    .line 1962
    return-object p0
.end method

.method public clearServerName()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasServerName:Z

    .line 1604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    .line 1605
    return-object p0
.end method

.method public clearStructuredResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasStructuredResponse:Z

    .line 1827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse_:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 1828
    return-object p0
.end method

.method public clearTextResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse:Z

    .line 1658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse_:Lcom/google/majel/proto/PeanutProtos$Text;

    .line 1659
    return-object p0
.end method

.method public clearUrlResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1741
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse_:Ljava/util/List;

    .line 1742
    return-object p0
.end method

.method public clearVideoResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1807
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse_:Ljava/util/List;

    .line 1808
    return-object p0
.end method

.method public clearWebSearchType()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasWebSearchType:Z

    .line 1944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    .line 1945
    return-object p0
.end method

.method public getActionResponse(I)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .parameter "index"

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    return-object v0
.end method

.method public getActionResponseCount()I
    .locals 1

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$ClientSideAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse_:Ljava/util/List;

    return-object v0
.end method

.method public getActionV2(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .locals 1
    .parameter "index"

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    return-object v0
.end method

.method public getActionV2Count()I
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionV2List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2130
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->cachedSize:I

    if-gez v0, :cond_0

    .line 2132
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getSerializedSize()I

    .line 2134
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1629
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    return v0
.end method

.method public getDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalScore()F
    .locals 1

    .prologue
    .line 1612
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    return v0
.end method

.method public getHighConfidenceResponse()Z
    .locals 1

    .prologue
    .line 1969
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    return v0
.end method

.method public getImageResponse(I)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .parameter "index"

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Image;

    return-object v0
.end method

.method public getImageResponseCount()I
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImageResponseHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse_:Ljava/util/List;

    return-object v0
.end method

.method public getIsLoggable()Z
    .locals 1

    .prologue
    .line 2003
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    return v0
.end method

.method public getIsQuestion()Z
    .locals 1

    .prologue
    .line 1901
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    return v0
.end method

.method public getOnlyShowPeanutImageResponse()Z
    .locals 1

    .prologue
    .line 1986
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    return v0
.end method

.method public getPlaceResponse(I)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .parameter "index"

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    return-object v0
.end method

.method public getPlaceResponseCount()I
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlaceResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/LatLngProtos$LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse_:Ljava/util/List;

    return-object v0
.end method

.method public getPrimaryType()I
    .locals 1

    .prologue
    .line 1918
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    return v0
.end method

.method public getSearchResultsUnnecessary()Z
    .locals 1

    .prologue
    .line 1952
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2139
    const/4 v2, 0x0

    .line 2140
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasServerName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2141
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2144
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasConfidence()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2145
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getConfidence()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 2148
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2149
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2152
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Image;

    .line 2153
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$Image;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2156
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$Image;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getUrlResponseList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Url;

    .line 2157
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$Url;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 2160
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$Url;
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getPlaceResponseList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 2161
    .local v0, element:Lcom/google/majel/proto/LatLngProtos$LatLng;
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 2164
    .end local v0           #element:Lcom/google/majel/proto/LatLngProtos$LatLng;
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsQuestion()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2165
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getIsQuestion()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2168
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasPrimaryType()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2169
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getPrimaryType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2172
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasDebug()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2173
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getDebug()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2176
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getActionResponseList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 2177
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    const/16 v3, 0xb

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    .line 2180
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasFinalScore()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2181
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getFinalScore()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 2184
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasStructuredResponse()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2185
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getStructuredResponse()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2188
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getVideoResponseList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Video;

    .line 2189
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$Video;
    const/16 v3, 0xe

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4

    .line 2192
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$Video;
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getActionV2List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 2193
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    const/16 v3, 0xf

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_5

    .line 2196
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasWebSearchType()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2197
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getWebSearchType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2200
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasSearchResultsUnnecessary()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2201
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getSearchResultsUnnecessary()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2204
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasHighConfidenceResponse()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2205
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getHighConfidenceResponse()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2208
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsLoggable()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2209
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getIsLoggable()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2212
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasOnlyShowPeanutImageResponse()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2213
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getOnlyShowPeanutImageResponse()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2216
    :cond_12
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasImageResponseHeader()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2217
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2220
    :cond_13
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->cachedSize:I

    .line 2221
    return v2
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    return-object v0
.end method

.method public getStructuredResponse()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse_:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    return-object v0
.end method

.method public getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse_:Lcom/google/majel/proto/PeanutProtos$Text;

    return-object v0
.end method

.method public getUrlResponse(I)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "index"

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Url;

    return-object v0
.end method

.method public getUrlResponseCount()I
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUrlResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$Url;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse_:Ljava/util/List;

    return-object v0
.end method

.method public getVideoResponse(I)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .parameter "index"

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Video;

    return-object v0
.end method

.method public getVideoResponseCount()I
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVideoResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse_:Ljava/util/List;

    return-object v0
.end method

.method public getWebSearchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1630
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasConfidence:Z

    return v0
.end method

.method public hasDebug()Z
    .locals 1

    .prologue
    .line 2021
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasDebug:Z

    return v0
.end method

.method public hasFinalScore()Z
    .locals 1

    .prologue
    .line 1613
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasFinalScore:Z

    return v0
.end method

.method public hasHighConfidenceResponse()Z
    .locals 1

    .prologue
    .line 1970
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasHighConfidenceResponse:Z

    return v0
.end method

.method public hasImageResponseHeader()Z
    .locals 1

    .prologue
    .line 1700
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasImageResponseHeader:Z

    return v0
.end method

.method public hasIsLoggable()Z
    .locals 1

    .prologue
    .line 2004
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsLoggable:Z

    return v0
.end method

.method public hasIsQuestion()Z
    .locals 1

    .prologue
    .line 1902
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsQuestion:Z

    return v0
.end method

.method public hasOnlyShowPeanutImageResponse()Z
    .locals 1

    .prologue
    .line 1987
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasOnlyShowPeanutImageResponse:Z

    return v0
.end method

.method public hasPrimaryType()Z
    .locals 1

    .prologue
    .line 1919
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasPrimaryType:Z

    return v0
.end method

.method public hasSearchResultsUnnecessary()Z
    .locals 1

    .prologue
    .line 1953
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasSearchResultsUnnecessary:Z

    return v0
.end method

.method public hasServerName()Z
    .locals 1

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasServerName:Z

    return v0
.end method

.method public hasStructuredResponse()Z
    .locals 1

    .prologue
    .line 1815
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasStructuredResponse:Z

    return v0
.end method

.method public hasTextResponse()Z
    .locals 1

    .prologue
    .line 1646
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse:Z

    return v0
.end method

.method public hasWebSearchType()Z
    .locals 1

    .prologue
    .line 1936
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasWebSearchType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2059
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2229
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2230
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2234
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2235
    :sswitch_0
    return-object p0

    .line 2240
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setServerName(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2244
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setConfidence(F)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2248
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$Text;-><init>()V

    .line 2249
    .local v1, value:Lcom/google/majel/proto/PeanutProtos$Text;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2250
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setTextResponse(Lcom/google/majel/proto/PeanutProtos$Text;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2254
    .end local v1           #value:Lcom/google/majel/proto/PeanutProtos$Text;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$Image;-><init>()V

    .line 2255
    .local v1, value:Lcom/google/majel/proto/PeanutProtos$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2256
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->addImageResponse(Lcom/google/majel/proto/PeanutProtos$Image;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2260
    .end local v1           #value:Lcom/google/majel/proto/PeanutProtos$Image;
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$Url;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$Url;-><init>()V

    .line 2261
    .local v1, value:Lcom/google/majel/proto/PeanutProtos$Url;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2262
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->addUrlResponse(Lcom/google/majel/proto/PeanutProtos$Url;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2266
    .end local v1           #value:Lcom/google/majel/proto/PeanutProtos$Url;
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v1}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    .line 2267
    .local v1, value:Lcom/google/majel/proto/LatLngProtos$LatLng;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2268
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->addPlaceResponse(Lcom/google/majel/proto/LatLngProtos$LatLng;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2272
    .end local v1           #value:Lcom/google/majel/proto/LatLngProtos$LatLng;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setIsQuestion(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2276
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setPrimaryType(I)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2280
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setDebug(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2284
    :sswitch_a
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;-><init>()V

    .line 2285
    .local v1, value:Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2286
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->addActionResponse(Lcom/google/majel/proto/PeanutProtos$ClientSideAction;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2290
    .end local v1           #value:Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setFinalScore(F)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 2294
    :sswitch_c
    new-instance v1, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    invoke-direct {v1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;-><init>()V

    .line 2295
    .local v1, value:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2296
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setStructuredResponse(Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto/16 :goto_0

    .line 2300
    .end local v1           #value:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    :sswitch_d
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$Video;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$Video;-><init>()V

    .line 2301
    .local v1, value:Lcom/google/majel/proto/PeanutProtos$Video;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2302
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->addVideoResponse(Lcom/google/majel/proto/PeanutProtos$Video;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto/16 :goto_0

    .line 2306
    .end local v1           #value:Lcom/google/majel/proto/PeanutProtos$Video;
    :sswitch_e
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    .line 2307
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2308
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->addActionV2(Lcom/google/majel/proto/ActionV2Protos$ActionV2;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto/16 :goto_0

    .line 2312
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setWebSearchType(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto/16 :goto_0

    .line 2316
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setSearchResultsUnnecessary(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto/16 :goto_0

    .line 2320
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setHighConfidenceResponse(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto/16 :goto_0

    .line 2324
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setIsLoggable(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto/16 :goto_0

    .line 2328
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setOnlyShowPeanutImageResponse(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto/16 :goto_0

    .line 2332
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Peanut;->setImageResponseHeader(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto/16 :goto_0

    .line 2230
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x65 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xaa -> :sswitch_14
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
    .line 1577
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    move-result-object v0

    return-object v0
.end method

.method public setActionResponse(ILcom/google/majel/proto/PeanutProtos$ClientSideAction;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1843
    if-nez p2, :cond_0

    .line 1844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1846
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1847
    return-object p0
.end method

.method public setActionV2(ILcom/google/majel/proto/ActionV2Protos$ActionV2;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1876
    if-nez p2, :cond_0

    .line 1877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1879
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1880
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasConfidence:Z

    .line 1633
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    .line 1634
    return-object p0
.end method

.method public setDebug(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 2023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasDebug:Z

    .line 2024
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    .line 2025
    return-object p0
.end method

.method public setFinalScore(F)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasFinalScore:Z

    .line 1616
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    .line 1617
    return-object p0
.end method

.method public setHighConfidenceResponse(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasHighConfidenceResponse:Z

    .line 1973
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    .line 1974
    return-object p0
.end method

.method public setImageResponse(ILcom/google/majel/proto/PeanutProtos$Image;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1674
    if-nez p2, :cond_0

    .line 1675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1678
    return-object p0
.end method

.method public setImageResponseHeader(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasImageResponseHeader:Z

    .line 1703
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    .line 1704
    return-object p0
.end method

.method public setIsLoggable(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 2006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsLoggable:Z

    .line 2007
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    .line 2008
    return-object p0
.end method

.method public setIsQuestion(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsQuestion:Z

    .line 1905
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    .line 1906
    return-object p0
.end method

.method public setOnlyShowPeanutImageResponse(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasOnlyShowPeanutImageResponse:Z

    .line 1990
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    .line 1991
    return-object p0
.end method

.method public setPlaceResponse(ILcom/google/majel/proto/LatLngProtos$LatLng;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1757
    if-nez p2, :cond_0

    .line 1758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1761
    return-object p0
.end method

.method public setPrimaryType(I)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasPrimaryType:Z

    .line 1922
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    .line 1923
    return-object p0
.end method

.method public setSearchResultsUnnecessary(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasSearchResultsUnnecessary:Z

    .line 1956
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    .line 1957
    return-object p0
.end method

.method public setServerName(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasServerName:Z

    .line 1599
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    .line 1600
    return-object p0
.end method

.method public setStructuredResponse(Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1818
    if-nez p1, :cond_0

    .line 1819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1821
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasStructuredResponse:Z

    .line 1822
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse_:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 1823
    return-object p0
.end method

.method public setTextResponse(Lcom/google/majel/proto/PeanutProtos$Text;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1649
    if-nez p1, :cond_0

    .line 1650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1652
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse:Z

    .line 1653
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse_:Lcom/google/majel/proto/PeanutProtos$Text;

    .line 1654
    return-object p0
.end method

.method public setUrlResponse(ILcom/google/majel/proto/PeanutProtos$Url;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1724
    if-nez p2, :cond_0

    .line 1725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1728
    return-object p0
.end method

.method public setVideoResponse(ILcom/google/majel/proto/PeanutProtos$Video;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1790
    if-nez p2, :cond_0

    .line 1791
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1794
    return-object p0
.end method

.method public setWebSearchType(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "value"

    .prologue
    .line 1938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasWebSearchType:Z

    .line 1939
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    .line 1940
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
    .line 2065
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasServerName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2066
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2068
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasConfidence()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2069
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 2071
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2072
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2074
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Image;

    .line 2075
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$Image;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2077
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$Image;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getUrlResponseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Url;

    .line 2078
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$Url;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 2080
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$Url;
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getPlaceResponseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 2081
    .local v0, element:Lcom/google/majel/proto/LatLngProtos$LatLng;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 2083
    .end local v0           #element:Lcom/google/majel/proto/LatLngProtos$LatLng;
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsQuestion()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2084
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getIsQuestion()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2086
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasPrimaryType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2087
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getPrimaryType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2089
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasDebug()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2090
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getDebug()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2092
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getActionResponseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 2093
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 2095
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasFinalScore()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2096
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getFinalScore()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 2098
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasStructuredResponse()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2099
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getStructuredResponse()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2101
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getVideoResponseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Video;

    .line 2102
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$Video;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_4

    .line 2104
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$Video;
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getActionV2List()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 2105
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_5

    .line 2107
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasWebSearchType()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2108
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getWebSearchType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2110
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasSearchResultsUnnecessary()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2111
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getSearchResultsUnnecessary()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2113
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasHighConfidenceResponse()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2114
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getHighConfidenceResponse()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2116
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasIsLoggable()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2117
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getIsLoggable()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2119
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasOnlyShowPeanutImageResponse()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2120
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getOnlyShowPeanutImageResponse()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2122
    :cond_12
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasImageResponseHeader()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2123
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2125
    :cond_13
    return-void
.end method

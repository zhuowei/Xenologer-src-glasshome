.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EcoutezLocalResult"
.end annotation


# static fields
.field public static final ACTION_BIKING_URL_FIELD_NUMBER:I = 0x1c

.field public static final ACTION_DRIVING_URL_FIELD_NUMBER:I = 0x19

.field public static final ACTION_TRANSIT_URL_FIELD_NUMBER:I = 0x1b

.field public static final ACTION_WALKING_URL_FIELD_NUMBER:I = 0x1a

.field public static final ADDRESS1_FIELD_NUMBER:I = 0xa

.field public static final ADDRESS2_FIELD_NUMBER:I = 0xb

.field public static final ADDRESS_FIELD_NUMBER:I = 0x9

.field public static final ADDRESS_FOR_MAP_IMAGE_URL_FIELD_NUMBER:I = 0x20

.field public static final ALIAS_FIELD_NUMBER:I = 0x21

.field public static final AUTHORITY_FIELD_NUMBER:I = 0xe

.field public static final BUSINESS_DOMAIN_FIELD_NUMBER:I = 0x3

.field public static final BUSINESS_URL_FIELD_NUMBER:I = 0x2

.field public static final CLUSTER_ID_FIELD_NUMBER:I = 0x17

.field public static final DEPRECATED_HOURS_FIELD_NUMBER:I = 0xd

.field public static final FEATURE_ID_FIELD_NUMBER:I = 0x22

.field public static final HOURS_FIELD_NUMBER:I = 0x1f

.field public static final IS_CHAIN_FIELD_NUMBER:I = 0x23

.field public static final LAT_DEGREES_FIELD_NUMBER:I = 0x5

.field public static final LAT_SPAN_DEGREES_FIELD_NUMBER:I = 0x1d

.field public static final LNG_DEGREES_FIELD_NUMBER:I = 0x6

.field public static final LNG_SPAN_DEGREES_FIELD_NUMBER:I = 0x1e

.field public static final MAPS_URL_FIELD_NUMBER:I = 0x18

.field public static final NEAR_LOCATION_FIELD_NUMBER:I = 0x7

.field public static final NUM_HALF_STARS_FIELD_NUMBER:I = 0x13

.field public static final NUM_REVIEWS_FIELD_NUMBER:I = 0x14

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0xc

.field public static final PLACE_PAGE_URL_FIELD_NUMBER:I = 0x4

.field public static final QUERY_FIELD_NUMBER:I = 0x8

.field public static final REVIEWS_TEXT_FIELD_NUMBER:I = 0x15

.field public static final REVIEW_SITE_FIELD_NUMBER:I = 0x16

.field public static final REVIEW_SNIPPET_FIELD_NUMBER:I = 0x12

.field public static final TITLE_FIELD_NUMBER:I = 0x1

.field public static final TRANSIT_STATION_NAME_FIELD_NUMBER:I = 0x11

.field public static final TRANSIT_STATION_TEXT_FIELD_NUMBER:I = 0xf

.field public static final TRANSIT_STATION_TYPE_FIELD_NUMBER:I = 0x10


# instance fields
.field private actionBikingUrl_:Ljava/lang/String;

.field private actionDrivingUrl_:Ljava/lang/String;

.field private actionTransitUrl_:Ljava/lang/String;

.field private actionWalkingUrl_:Ljava/lang/String;

.field private address1_:Ljava/lang/String;

.field private address2_:Ljava/lang/String;

.field private addressForMapImageUrl_:Ljava/lang/String;

.field private address_:Ljava/lang/String;

.field private alias_:Lcom/google/majel/proto/AliasProto$Alias;

.field private authority_:Ljava/lang/String;

.field private businessDomain_:Ljava/lang/String;

.field private businessUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private clusterId_:Ljava/lang/String;

.field private deprecatedHours_:Ljava/lang/String;

.field private featureId_:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

.field private hasActionBikingUrl:Z

.field private hasActionDrivingUrl:Z

.field private hasActionTransitUrl:Z

.field private hasActionWalkingUrl:Z

.field private hasAddress:Z

.field private hasAddress1:Z

.field private hasAddress2:Z

.field private hasAddressForMapImageUrl:Z

.field private hasAlias:Z

.field private hasAuthority:Z

.field private hasBusinessDomain:Z

.field private hasBusinessUrl:Z

.field private hasClusterId:Z

.field private hasDeprecatedHours:Z

.field private hasFeatureId:Z

.field private hasHours:Z

.field private hasIsChain:Z

.field private hasLatDegrees:Z

.field private hasLatSpanDegrees:Z

.field private hasLngDegrees:Z

.field private hasLngSpanDegrees:Z

.field private hasMapsUrl:Z

.field private hasNearLocation:Z

.field private hasNumHalfStars:Z

.field private hasNumReviews:Z

.field private hasPhoneNumber:Z

.field private hasPlacePageUrl:Z

.field private hasQuery:Z

.field private hasReviewSnippet:Z

.field private hasReviewsText:Z

.field private hasTitle:Z

.field private hasTransitStationName:Z

.field private hasTransitStationText:Z

.field private hasTransitStationType:Z

.field private hours_:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

.field private isChain_:Z

.field private latDegrees_:D

.field private latSpanDegrees_:D

.field private lngDegrees_:D

.field private lngSpanDegrees_:D

.field private mapsUrl_:Ljava/lang/String;

.field private nearLocation_:Ljava/lang/String;

.field private numHalfStars_:I

.field private numReviews_:I

.field private phoneNumber_:Ljava/lang/String;

.field private placePageUrl_:Ljava/lang/String;

.field private query_:Ljava/lang/String;

.field private reviewSite_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;",
            ">;"
        }
    .end annotation
.end field

.field private reviewSnippet_:Ljava/lang/String;

.field private reviewsText_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private transitStationName_:Ljava/lang/String;

.field private transitStationText_:Ljava/lang/String;

.field private transitStationType_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 3816
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3821
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    .line 3838
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    .line 3855
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    .line 3872
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    .line 3889
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    .line 3906
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    .line 3923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    .line 3940
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    .line 3957
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    .line 3974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    .line 3991
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    .line 4008
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    .line 4025
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    .line 4042
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    .line 4059
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    .line 4076
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    .line 4093
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    .line 4110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    .line 4127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    .line 4144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    .line 4161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    .line 4178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    .line 4195
    iput-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours_:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    .line 4215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    .line 4232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    .line 4249
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    .line 4266
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    .line 4283
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    .line 4300
    iput v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    .line 4317
    iput v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    .line 4334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    .line 4350
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite_:Ljava/util/List;

    .line 4384
    iput-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias_:Lcom/google/majel/proto/AliasProto$Alias;

    .line 4404
    iput-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId_:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 4424
    iput-boolean v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    .line 4592
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->cachedSize:I

    .line 3816
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4924
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4918
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    return-object v0
.end method


# virtual methods
.method public addReviewSite(Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4367
    if-nez p1, :cond_0

    .line 4368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4370
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite_:Ljava/util/List;

    .line 4373
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4374
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4439
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4440
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearBusinessUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4441
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearBusinessDomain()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4442
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearPlacePageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4443
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearMapsUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4444
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearActionDrivingUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4445
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearActionWalkingUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4446
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearActionTransitUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4447
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearActionBikingUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4448
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearClusterId()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4449
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearLatDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4450
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearLngDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4451
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearLatSpanDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4452
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearLngSpanDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4453
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearNearLocation()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4454
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearQuery()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4455
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearAddress()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4456
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearAddress1()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4457
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearAddress2()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4458
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearPhoneNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4459
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearAddressForMapImageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4460
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearDeprecatedHours()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4461
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearHours()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4462
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearAuthority()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4463
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearTransitStationText()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4464
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearTransitStationType()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4465
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearTransitStationName()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4466
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearReviewSnippet()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4467
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearNumHalfStars()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4468
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearNumReviews()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4469
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearReviewsText()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4470
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearReviewSite()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4471
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearAlias()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4472
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearFeatureId()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4473
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clearIsChain()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4474
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->cachedSize:I

    .line 4475
    return-object p0
.end method

.method public clearActionBikingUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionBikingUrl:Z

    .line 3967
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    .line 3968
    return-object p0
.end method

.method public clearActionDrivingUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionDrivingUrl:Z

    .line 3916
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    .line 3917
    return-object p0
.end method

.method public clearActionTransitUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionTransitUrl:Z

    .line 3950
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    .line 3951
    return-object p0
.end method

.method public clearActionWalkingUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionWalkingUrl:Z

    .line 3933
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    .line 3934
    return-object p0
.end method

.method public clearAddress()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress:Z

    .line 4103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    .line 4104
    return-object p0
.end method

.method public clearAddress1()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress1:Z

    .line 4120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    .line 4121
    return-object p0
.end method

.method public clearAddress2()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress2:Z

    .line 4137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    .line 4138
    return-object p0
.end method

.method public clearAddressForMapImageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddressForMapImageUrl:Z

    .line 4171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    .line 4172
    return-object p0
.end method

.method public clearAlias()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAlias:Z

    .line 4397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias_:Lcom/google/majel/proto/AliasProto$Alias;

    .line 4398
    return-object p0
.end method

.method public clearAuthority()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAuthority:Z

    .line 4225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    .line 4226
    return-object p0
.end method

.method public clearBusinessDomain()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessDomain:Z

    .line 3865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    .line 3866
    return-object p0
.end method

.method public clearBusinessUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessUrl:Z

    .line 3848
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    .line 3849
    return-object p0
.end method

.method public clearClusterId()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasClusterId:Z

    .line 3984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    .line 3985
    return-object p0
.end method

.method public clearDeprecatedHours()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasDeprecatedHours:Z

    .line 4188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    .line 4189
    return-object p0
.end method

.method public clearFeatureId()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasFeatureId:Z

    .line 4417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId_:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 4418
    return-object p0
.end method

.method public clearHours()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasHours:Z

    .line 4208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours_:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    .line 4209
    return-object p0
.end method

.method public clearIsChain()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4433
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasIsChain:Z

    .line 4434
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    .line 4435
    return-object p0
.end method

.method public clearLatDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatDegrees:Z

    .line 4001
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    .line 4002
    return-object p0
.end method

.method public clearLatSpanDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatSpanDegrees:Z

    .line 4035
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    .line 4036
    return-object p0
.end method

.method public clearLngDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngDegrees:Z

    .line 4018
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    .line 4019
    return-object p0
.end method

.method public clearLngSpanDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngSpanDegrees:Z

    .line 4052
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    .line 4053
    return-object p0
.end method

.method public clearMapsUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasMapsUrl:Z

    .line 3899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    .line 3900
    return-object p0
.end method

.method public clearNearLocation()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNearLocation:Z

    .line 4069
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    .line 4070
    return-object p0
.end method

.method public clearNumHalfStars()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4309
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumHalfStars:Z

    .line 4310
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    .line 4311
    return-object p0
.end method

.method public clearNumReviews()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4326
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumReviews:Z

    .line 4327
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    .line 4328
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPhoneNumber:Z

    .line 4154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    .line 4155
    return-object p0
.end method

.method public clearPlacePageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPlacePageUrl:Z

    .line 3882
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    .line 3883
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasQuery:Z

    .line 4086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    .line 4087
    return-object p0
.end method

.method public clearReviewSite()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite_:Ljava/util/List;

    .line 4378
    return-object p0
.end method

.method public clearReviewSnippet()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewSnippet:Z

    .line 4293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    .line 4294
    return-object p0
.end method

.method public clearReviewsText()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewsText:Z

    .line 4344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    .line 4345
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 3830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTitle:Z

    .line 3831
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    .line 3832
    return-object p0
.end method

.method public clearTransitStationName()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationName:Z

    .line 4276
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    .line 4277
    return-object p0
.end method

.method public clearTransitStationText()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationText:Z

    .line 4242
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    .line 4243
    return-object p0
.end method

.method public clearTransitStationType()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationType:Z

    .line 4259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    .line 4260
    return-object p0
.end method

.method public getActionBikingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getActionDrivingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getActionTransitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3941
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getActionWalkingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3924
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4094
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4111
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressForMapImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4162
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias_:Lcom/google/majel/proto/AliasProto$Alias;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4216
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4595
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 4597
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getSerializedSize()I

    .line 4599
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->cachedSize:I

    return v0
.end method

.method public getClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3975
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeprecatedHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4179
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureId()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1

    .prologue
    .line 4406
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId_:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    return-object v0
.end method

.method public getHours()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1

    .prologue
    .line 4197
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours_:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    return-object v0
.end method

.method public getIsChain()Z
    .locals 1

    .prologue
    .line 4425
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    return v0
.end method

.method public getLatDegrees()D
    .locals 2

    .prologue
    .line 3992
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    return-wide v0
.end method

.method public getLatSpanDegrees()D
    .locals 2

    .prologue
    .line 4026
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    return-wide v0
.end method

.method public getLngDegrees()D
    .locals 2

    .prologue
    .line 4009
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    return-wide v0
.end method

.method public getLngSpanDegrees()D
    .locals 2

    .prologue
    .line 4043
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    return-wide v0
.end method

.method public getMapsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3890
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getNearLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumHalfStars()I
    .locals 1

    .prologue
    .line 4301
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    return v0
.end method

.method public getNumReviews()I
    .locals 1

    .prologue
    .line 4318
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4145
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacePageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3873
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4077
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewSite(I)Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .locals 1
    .parameter "index"

    .prologue
    .line 4357
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    return-object v0
.end method

.method public getReviewSiteCount()I
    .locals 1

    .prologue
    .line 4355
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReviewSiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4353
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite_:Ljava/util/List;

    return-object v0
.end method

.method public getReviewSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4284
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4335
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 4604
    const/4 v2, 0x0

    .line 4605
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4606
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4609
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4610
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getBusinessUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4613
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessDomain()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4614
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getBusinessDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4617
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPlacePageUrl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4618
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getPlacePageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4621
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatDegrees()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4622
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLatDegrees()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 4625
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngDegrees()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4626
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLngDegrees()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 4629
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNearLocation()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4630
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getNearLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4633
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasQuery()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4634
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4637
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4638
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4641
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress1()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4642
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4645
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress2()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4646
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4649
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4650
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4653
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasDeprecatedHours()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4654
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getDeprecatedHours()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4657
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAuthority()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4658
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4661
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationText()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4662
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTransitStationText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4665
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationType()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4666
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTransitStationType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4669
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationName()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4670
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTransitStationName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4673
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewSnippet()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4674
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getReviewSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4677
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumHalfStars()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4678
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getNumHalfStars()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4681
    :cond_12
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumReviews()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4682
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getNumReviews()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4685
    :cond_13
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewsText()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4686
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getReviewsText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4689
    :cond_14
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getReviewSiteList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    .line 4690
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    const/16 v3, 0x16

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 4693
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    :cond_15
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasClusterId()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4694
    const/16 v3, 0x17

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4697
    :cond_16
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasMapsUrl()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4698
    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getMapsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4701
    :cond_17
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionDrivingUrl()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4702
    const/16 v3, 0x19

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getActionDrivingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4705
    :cond_18
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionWalkingUrl()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 4706
    const/16 v3, 0x1a

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getActionWalkingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4709
    :cond_19
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionTransitUrl()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4710
    const/16 v3, 0x1b

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getActionTransitUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4713
    :cond_1a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionBikingUrl()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4714
    const/16 v3, 0x1c

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getActionBikingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4717
    :cond_1b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatSpanDegrees()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4718
    const/16 v3, 0x1d

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLatSpanDegrees()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 4721
    :cond_1c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngSpanDegrees()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4722
    const/16 v3, 0x1e

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLngSpanDegrees()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 4725
    :cond_1d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasHours()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4726
    const/16 v3, 0x1f

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getHours()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4729
    :cond_1e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddressForMapImageUrl()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4730
    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddressForMapImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4733
    :cond_1f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAlias()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4734
    const/16 v3, 0x21

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAlias()Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4737
    :cond_20
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasFeatureId()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4738
    const/16 v3, 0x22

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getFeatureId()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4741
    :cond_21
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasIsChain()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4742
    const/16 v3, 0x23

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getIsChain()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4745
    :cond_22
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->cachedSize:I

    .line 4746
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4267
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitStationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitStationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4250
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    return-object v0
.end method

.method public hasActionBikingUrl()Z
    .locals 1

    .prologue
    .line 3959
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionBikingUrl:Z

    return v0
.end method

.method public hasActionDrivingUrl()Z
    .locals 1

    .prologue
    .line 3908
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionDrivingUrl:Z

    return v0
.end method

.method public hasActionTransitUrl()Z
    .locals 1

    .prologue
    .line 3942
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionTransitUrl:Z

    return v0
.end method

.method public hasActionWalkingUrl()Z
    .locals 1

    .prologue
    .line 3925
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionWalkingUrl:Z

    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 4095
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress:Z

    return v0
.end method

.method public hasAddress1()Z
    .locals 1

    .prologue
    .line 4112
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress1:Z

    return v0
.end method

.method public hasAddress2()Z
    .locals 1

    .prologue
    .line 4129
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress2:Z

    return v0
.end method

.method public hasAddressForMapImageUrl()Z
    .locals 1

    .prologue
    .line 4163
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddressForMapImageUrl:Z

    return v0
.end method

.method public hasAlias()Z
    .locals 1

    .prologue
    .line 4385
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAlias:Z

    return v0
.end method

.method public hasAuthority()Z
    .locals 1

    .prologue
    .line 4217
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAuthority:Z

    return v0
.end method

.method public hasBusinessDomain()Z
    .locals 1

    .prologue
    .line 3857
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessDomain:Z

    return v0
.end method

.method public hasBusinessUrl()Z
    .locals 1

    .prologue
    .line 3840
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessUrl:Z

    return v0
.end method

.method public hasClusterId()Z
    .locals 1

    .prologue
    .line 3976
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasClusterId:Z

    return v0
.end method

.method public hasDeprecatedHours()Z
    .locals 1

    .prologue
    .line 4180
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasDeprecatedHours:Z

    return v0
.end method

.method public hasFeatureId()Z
    .locals 1

    .prologue
    .line 4405
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasFeatureId:Z

    return v0
.end method

.method public hasHours()Z
    .locals 1

    .prologue
    .line 4196
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasHours:Z

    return v0
.end method

.method public hasIsChain()Z
    .locals 1

    .prologue
    .line 4426
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasIsChain:Z

    return v0
.end method

.method public hasLatDegrees()Z
    .locals 1

    .prologue
    .line 3993
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatDegrees:Z

    return v0
.end method

.method public hasLatSpanDegrees()Z
    .locals 1

    .prologue
    .line 4027
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatSpanDegrees:Z

    return v0
.end method

.method public hasLngDegrees()Z
    .locals 1

    .prologue
    .line 4010
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngDegrees:Z

    return v0
.end method

.method public hasLngSpanDegrees()Z
    .locals 1

    .prologue
    .line 4044
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngSpanDegrees:Z

    return v0
.end method

.method public hasMapsUrl()Z
    .locals 1

    .prologue
    .line 3891
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasMapsUrl:Z

    return v0
.end method

.method public hasNearLocation()Z
    .locals 1

    .prologue
    .line 4061
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNearLocation:Z

    return v0
.end method

.method public hasNumHalfStars()Z
    .locals 1

    .prologue
    .line 4302
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumHalfStars:Z

    return v0
.end method

.method public hasNumReviews()Z
    .locals 1

    .prologue
    .line 4319
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumReviews:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 4146
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPhoneNumber:Z

    return v0
.end method

.method public hasPlacePageUrl()Z
    .locals 1

    .prologue
    .line 3874
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPlacePageUrl:Z

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 4078
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasQuery:Z

    return v0
.end method

.method public hasReviewSnippet()Z
    .locals 1

    .prologue
    .line 4285
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewSnippet:Z

    return v0
.end method

.method public hasReviewsText()Z
    .locals 1

    .prologue
    .line 4336
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewsText:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 3823
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTitle:Z

    return v0
.end method

.method public hasTransitStationName()Z
    .locals 1

    .prologue
    .line 4268
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationName:Z

    return v0
.end method

.method public hasTransitStationText()Z
    .locals 1

    .prologue
    .line 4234
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationText:Z

    return v0
.end method

.method public hasTransitStationType()Z
    .locals 1

    .prologue
    .line 4251
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4479
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4754
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4755
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4759
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4760
    :sswitch_0
    return-object p0

    .line 4765
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4769
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setBusinessUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4773
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setBusinessDomain(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4777
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setPlacePageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4781
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setLatDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4785
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setLngDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4789
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setNearLocation(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4793
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setQuery(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4797
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setAddress(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4801
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setAddress1(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4805
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setAddress2(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4809
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setPhoneNumber(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4813
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setDeprecatedHours(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4817
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setAuthority(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 4821
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setTransitStationText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4825
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setTransitStationType(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4829
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setTransitStationName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4833
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setReviewSnippet(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4837
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setNumHalfStars(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4841
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setNumReviews(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4845
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setReviewsText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4849
    :sswitch_16
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;-><init>()V

    .line 4850
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4851
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addReviewSite(Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4855
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setClusterId(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4859
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setMapsUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4863
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setActionDrivingUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4867
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setActionWalkingUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4871
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setActionTransitUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4875
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setActionBikingUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4879
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setLatSpanDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4883
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setLngSpanDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4887
    :sswitch_1f
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;-><init>()V

    .line 4888
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4889
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setHours(Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4893
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setAddressForMapImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4897
    :sswitch_21
    new-instance v1, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v1}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    .line 4898
    .local v1, value:Lcom/google/majel/proto/AliasProto$Alias;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4899
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setAlias(Lcom/google/majel/proto/AliasProto$Alias;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4903
    .end local v1           #value:Lcom/google/majel/proto/AliasProto$Alias;
    :sswitch_22
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;-><init>()V

    .line 4904
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4905
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setFeatureId(Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4909
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->setIsChain(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 4755
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x29 -> :sswitch_5
        0x31 -> :sswitch_6
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
        0xa0 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xe9 -> :sswitch_1d
        0xf1 -> :sswitch_1e
        0xfa -> :sswitch_1f
        0x102 -> :sswitch_20
        0x10a -> :sswitch_21
        0x112 -> :sswitch_22
        0x118 -> :sswitch_23
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
    .line 3813
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    move-result-object v0

    return-object v0
.end method

.method public setActionBikingUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionBikingUrl:Z

    .line 3962
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    .line 3963
    return-object p0
.end method

.method public setActionDrivingUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionDrivingUrl:Z

    .line 3911
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    .line 3912
    return-object p0
.end method

.method public setActionTransitUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionTransitUrl:Z

    .line 3945
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    .line 3946
    return-object p0
.end method

.method public setActionWalkingUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionWalkingUrl:Z

    .line 3928
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    .line 3929
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4097
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress:Z

    .line 4098
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    .line 4099
    return-object p0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress1:Z

    .line 4115
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    .line 4116
    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress2:Z

    .line 4132
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    .line 4133
    return-object p0
.end method

.method public setAddressForMapImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddressForMapImageUrl:Z

    .line 4166
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    .line 4167
    return-object p0
.end method

.method public setAlias(Lcom/google/majel/proto/AliasProto$Alias;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4388
    if-nez p1, :cond_0

    .line 4389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4391
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAlias:Z

    .line 4392
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias_:Lcom/google/majel/proto/AliasProto$Alias;

    .line 4393
    return-object p0
.end method

.method public setAuthority(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAuthority:Z

    .line 4220
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    .line 4221
    return-object p0
.end method

.method public setBusinessDomain(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessDomain:Z

    .line 3860
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    .line 3861
    return-object p0
.end method

.method public setBusinessUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessUrl:Z

    .line 3843
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    .line 3844
    return-object p0
.end method

.method public setClusterId(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasClusterId:Z

    .line 3979
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    .line 3980
    return-object p0
.end method

.method public setDeprecatedHours(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasDeprecatedHours:Z

    .line 4183
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    .line 4184
    return-object p0
.end method

.method public setFeatureId(Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4408
    if-nez p1, :cond_0

    .line 4409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4411
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasFeatureId:Z

    .line 4412
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId_:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 4413
    return-object p0
.end method

.method public setHours(Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4199
    if-nez p1, :cond_0

    .line 4200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4202
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasHours:Z

    .line 4203
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours_:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    .line 4204
    return-object p0
.end method

.method public setIsChain(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasIsChain:Z

    .line 4429
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    .line 4430
    return-object p0
.end method

.method public setLatDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatDegrees:Z

    .line 3996
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    .line 3997
    return-object p0
.end method

.method public setLatSpanDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatSpanDegrees:Z

    .line 4030
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    .line 4031
    return-object p0
.end method

.method public setLngDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngDegrees:Z

    .line 4013
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    .line 4014
    return-object p0
.end method

.method public setLngSpanDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngSpanDegrees:Z

    .line 4047
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    .line 4048
    return-object p0
.end method

.method public setMapsUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasMapsUrl:Z

    .line 3894
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    .line 3895
    return-object p0
.end method

.method public setNearLocation(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNearLocation:Z

    .line 4064
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    .line 4065
    return-object p0
.end method

.method public setNumHalfStars(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumHalfStars:Z

    .line 4305
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    .line 4306
    return-object p0
.end method

.method public setNumReviews(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumReviews:Z

    .line 4322
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    .line 4323
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPhoneNumber:Z

    .line 4149
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    .line 4150
    return-object p0
.end method

.method public setPlacePageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPlacePageUrl:Z

    .line 3877
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    .line 3878
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasQuery:Z

    .line 4081
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    .line 4082
    return-object p0
.end method

.method public setReviewSite(ILcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4360
    if-nez p2, :cond_0

    .line 4361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4363
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4364
    return-object p0
.end method

.method public setReviewSnippet(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewSnippet:Z

    .line 4288
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    .line 4289
    return-object p0
.end method

.method public setReviewsText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewsText:Z

    .line 4339
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    .line 4340
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 3825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTitle:Z

    .line 3826
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    .line 3827
    return-object p0
.end method

.method public setTransitStationName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationName:Z

    .line 4271
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    .line 4272
    return-object p0
.end method

.method public setTransitStationText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationText:Z

    .line 4237
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    .line 4238
    return-object p0
.end method

.method public setTransitStationType(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 4253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationType:Z

    .line 4254
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    .line 4255
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4485
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4486
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4488
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4489
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getBusinessUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4491
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasBusinessDomain()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4492
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getBusinessDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4494
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPlacePageUrl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4495
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getPlacePageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4497
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatDegrees()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4498
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLatDegrees()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 4500
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngDegrees()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4501
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLngDegrees()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 4503
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNearLocation()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4504
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getNearLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4506
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasQuery()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4507
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4509
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4510
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4512
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress1()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4513
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4515
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddress2()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4516
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddress2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4518
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4519
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4521
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasDeprecatedHours()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4522
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getDeprecatedHours()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4524
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAuthority()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4525
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4527
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationText()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4528
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTransitStationText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4530
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationType()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4531
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTransitStationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4533
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasTransitStationName()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4534
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getTransitStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4536
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewSnippet()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4537
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getReviewSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4539
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumHalfStars()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4540
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getNumHalfStars()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4542
    :cond_12
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasNumReviews()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4543
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getNumReviews()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4545
    :cond_13
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasReviewsText()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4546
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getReviewsText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4548
    :cond_14
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getReviewSiteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    .line 4549
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 4551
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    :cond_15
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasClusterId()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4552
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getClusterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4554
    :cond_16
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasMapsUrl()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4555
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getMapsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4557
    :cond_17
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionDrivingUrl()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4558
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getActionDrivingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4560
    :cond_18
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionWalkingUrl()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4561
    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getActionWalkingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4563
    :cond_19
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionTransitUrl()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4564
    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getActionTransitUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4566
    :cond_1a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasActionBikingUrl()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4567
    const/16 v2, 0x1c

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getActionBikingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4569
    :cond_1b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLatSpanDegrees()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4570
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLatSpanDegrees()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 4572
    :cond_1c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasLngSpanDegrees()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4573
    const/16 v2, 0x1e

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getLngSpanDegrees()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 4575
    :cond_1d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasHours()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4576
    const/16 v2, 0x1f

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getHours()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4578
    :cond_1e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAddressForMapImageUrl()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4579
    const/16 v2, 0x20

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAddressForMapImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4581
    :cond_1f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasAlias()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4582
    const/16 v2, 0x21

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getAlias()Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4584
    :cond_20
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasFeatureId()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4585
    const/16 v2, 0x22

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getFeatureId()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4587
    :cond_21
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hasIsChain()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4588
    const/16 v2, 0x23

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->getIsChain()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4590
    :cond_22
    return-void
.end method

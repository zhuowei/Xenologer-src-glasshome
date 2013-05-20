.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayMediaAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;,
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;,
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;,
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;,
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    }
.end annotation


# static fields
.field public static final APP_ITEM_FIELD_NUMBER:I = 0x15

.field public static final BOOK_ITEM_FIELD_NUMBER:I = 0x8

.field public static final FINSKY_DOCID_FIELD_NUMBER:I = 0x12

.field public static final FINSKY_FETCH_DOCID_FIELD_NUMBER:I = 0x13

.field public static final INTENT_FLAG_FIELD_NUMBER:I = 0x16

.field public static final INTENT_FLAG_INTENT_PURCHASE:I = 0x1

.field public static final INTENT_FLAG_INTENT_RENT:I = 0x2

.field public static final IS_FROM_SOUND_SEARCH_FIELD_NUMBER:I = 0x14

.field public static final ITEM_IMAGE_FIELD_NUMBER:I = 0xa

.field public static final ITEM_IMAGE_URL_FIELD_NUMBER:I = 0xb

.field public static final ITEM_NUMBER_OF_RATINGS_FIELD_NUMBER:I = 0x11

.field public static final ITEM_OWNED_BY_USER_FIELD_NUMBER:I = 0xd

.field public static final ITEM_PREVIEW_URL_FIELD_NUMBER:I = 0xc

.field public static final ITEM_PRICE_TAG_FIELD_NUMBER:I = 0xf

.field public static final ITEM_RATING_FIELD_NUMBER:I = 0x10

.field public static final ITEM_REMAINING_RENTAL_SECONDS_FIELD_NUMBER:I = 0xe

.field public static final MEDIA_SOURCE_FIELD_NUMBER:I = 0x3

.field public static final MEDIA_SOURCE_PLAY_STORE:I = 0x3

.field public static final MOVIE_ITEM_FIELD_NUMBER:I = 0x7

.field public static final MUSIC_ITEM_FIELD_NUMBER:I = 0x6

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final SUGGESTED_QUERY_FIELD_NUMBER:I = 0x9

.field public static final TARGET_FIELD_NUMBER:I = 0x5

.field public static final URL_FIELD_NUMBER:I = 0x4


# instance fields
.field private appItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

.field private bookItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

.field private cachedSize:I

.field private finskyDocid_:Ljava/lang/String;

.field private finskyFetchDocid_:Ljava/lang/String;

.field private hasAppItem:Z

.field private hasBookItem:Z

.field private hasFinskyDocid:Z

.field private hasFinskyFetchDocid:Z

.field private hasIsFromSoundSearch:Z

.field private hasItemImage:Z

.field private hasItemImageUrl:Z

.field private hasItemNumberOfRatings:Z

.field private hasItemOwnedByUser:Z

.field private hasItemPreviewUrl:Z

.field private hasItemRating:Z

.field private hasItemRemainingRentalSeconds:Z

.field private hasMediaSource:Z

.field private hasMovieItem:Z

.field private hasMusicItem:Z

.field private hasName:Z

.field private hasSuggestedQuery:Z

.field private hasTarget:Z

.field private hasUrl:Z

.field private intentFlag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isFromSoundSearch_:Z

.field private itemImageUrl_:Ljava/lang/String;

.field private itemImage_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private itemNumberOfRatings_:I

.field private itemOwnedByUser_:Z

.field private itemPreviewUrl_:Ljava/lang/String;

.field private itemPriceTag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;",
            ">;"
        }
    .end annotation
.end field

.field private itemRating_:D

.field private itemRemainingRentalSeconds_:J

.field private mediaSource_:I

.field private movieItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

.field private musicItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

.field private name_:Ljava/lang/String;

.field private suggestedQuery_:Ljava/lang/String;

.field private target_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4454
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    .line 5379
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    .line 5396
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 5416
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 5436
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 5456
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 5476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    .line 5493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    .line 5510
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    .line 5544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    .line 5561
    iput-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemOwnedByUser_:Z

    .line 5578
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    .line 5594
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag_:Ljava/util/List;

    .line 5628
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    .line 5645
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    .line 5662
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    .line 5679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    .line 5696
    iput-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    .line 5713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    .line 5729
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag_:Ljava/util/List;

    .line 5852
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->cachedSize:I

    .line 4454
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6079
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6073
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    return-object v0
.end method


# virtual methods
.method public addIntentFlag(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2
    .parameter "value"

    .prologue
    .line 5743
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag_:Ljava/util/List;

    .line 5746
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5747
    return-object p0
.end method

.method public addItemPriceTag(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5611
    if-nez p1, :cond_0

    .line 5612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5614
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag_:Ljava/util/List;

    .line 5617
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5618
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5755
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5756
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearMediaSource()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5757
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearMusicItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5758
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearMovieItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5759
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearBookItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5760
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearAppItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5761
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearSuggestedQuery()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5762
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5763
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearItemImage()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5764
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearItemImageUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5765
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearItemPreviewUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5766
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearItemOwnedByUser()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5767
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearItemRemainingRentalSeconds()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5768
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearItemPriceTag()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5769
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearItemRating()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5770
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearItemNumberOfRatings()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5771
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearFinskyDocid()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5772
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearFinskyFetchDocid()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5773
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearIsFromSoundSearch()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5774
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearTarget()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5775
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clearIntentFlag()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 5776
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->cachedSize:I

    .line 5777
    return-object p0
.end method

.method public clearAppItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasAppItem:Z

    .line 5469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 5470
    return-object p0
.end method

.method public clearBookItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasBookItem:Z

    .line 5449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 5450
    return-object p0
.end method

.method public clearFinskyDocid()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyDocid:Z

    .line 5672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    .line 5673
    return-object p0
.end method

.method public clearFinskyFetchDocid()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyFetchDocid:Z

    .line 5689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    .line 5690
    return-object p0
.end method

.method public clearIntentFlag()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5750
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag_:Ljava/util/List;

    .line 5751
    return-object p0
.end method

.method public clearIsFromSoundSearch()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5705
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasIsFromSoundSearch:Z

    .line 5706
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    .line 5707
    return-object p0
.end method

.method public clearItemImage()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImage:Z

    .line 5520
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5521
    return-object p0
.end method

.method public clearItemImageUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImageUrl:Z

    .line 5537
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    .line 5538
    return-object p0
.end method

.method public clearItemNumberOfRatings()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5654
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemNumberOfRatings:Z

    .line 5655
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    .line 5656
    return-object p0
.end method

.method public clearItemOwnedByUser()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5570
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemOwnedByUser:Z

    .line 5571
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemOwnedByUser_:Z

    .line 5572
    return-object p0
.end method

.method public clearItemPreviewUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemPreviewUrl:Z

    .line 5554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    .line 5555
    return-object p0
.end method

.method public clearItemPriceTag()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5621
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag_:Ljava/util/List;

    .line 5622
    return-object p0
.end method

.method public clearItemRating()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2

    .prologue
    .line 5637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRating:Z

    .line 5638
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    .line 5639
    return-object p0
.end method

.method public clearItemRemainingRentalSeconds()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2

    .prologue
    .line 5587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRemainingRentalSeconds:Z

    .line 5588
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    .line 5589
    return-object p0
.end method

.method public clearMediaSource()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5388
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMediaSource:Z

    .line 5389
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    .line 5390
    return-object p0
.end method

.method public clearMovieItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMovieItem:Z

    .line 5429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 5430
    return-object p0
.end method

.method public clearMusicItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMusicItem:Z

    .line 5409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 5410
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasName:Z

    .line 5372
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    .line 5373
    return-object p0
.end method

.method public clearSuggestedQuery()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasSuggestedQuery:Z

    .line 5486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    .line 5487
    return-object p0
.end method

.method public clearTarget()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasTarget:Z

    .line 5723
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    .line 5724
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 5502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasUrl:Z

    .line 5503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    .line 5504
    return-object p0
.end method

.method public getAppItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    return-object v0
.end method

.method public getBookItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 5438
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5855
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 5857
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getSerializedSize()I

    .line 5859
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->cachedSize:I

    return v0
.end method

.method public getFinskyDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5663
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getFinskyFetchDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5680
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentFlag(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 5736
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIntentFlagCount()I
    .locals 1

    .prologue
    .line 5734
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntentFlagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5732
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag_:Ljava/util/List;

    return-object v0
.end method

.method public getIsFromSoundSearch()Z
    .locals 1

    .prologue
    .line 5697
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    return v0
.end method

.method public getItemImage()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 5511
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getItemImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5528
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemNumberOfRatings()I
    .locals 1

    .prologue
    .line 5646
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    return v0
.end method

.method public getItemOwnedByUser()Z
    .locals 1

    .prologue
    .line 5562
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemOwnedByUser_:Z

    return v0
.end method

.method public getItemPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5545
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPriceTag(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1
    .parameter "index"

    .prologue
    .line 5601
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    return-object v0
.end method

.method public getItemPriceTagCount()I
    .locals 1

    .prologue
    .line 5599
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPriceTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5597
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag_:Ljava/util/List;

    return-object v0
.end method

.method public getItemRating()D
    .locals 2

    .prologue
    .line 5629
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    return-wide v0
.end method

.method public getItemRemainingRentalSeconds()J
    .locals 2

    .prologue
    .line 5579
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    return-wide v0
.end method

.method public getMediaSource()I
    .locals 1

    .prologue
    .line 5380
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    return v0
.end method

.method public getMovieItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 5418
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    return-object v0
.end method

.method public getMusicItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5398
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5363
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 5864
    const/4 v3, 0x0

    .line 5865
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5866
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5869
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMediaSource()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5870
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getMediaSource()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 5873
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5874
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5877
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasTarget()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5878
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getTarget()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5881
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMusicItem()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5882
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getMusicItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5885
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMovieItem()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5886
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getMovieItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5889
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasBookItem()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5890
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getBookItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5893
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasSuggestedQuery()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5894
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5897
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImage()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5898
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemImage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5901
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImageUrl()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5902
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5905
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemPreviewUrl()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5906
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemPreviewUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5909
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemOwnedByUser()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5910
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemOwnedByUser()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 5913
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRemainingRentalSeconds()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5914
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemRemainingRentalSeconds()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 5917
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemPriceTagList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    .line 5918
    .local v1, element:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    const/16 v4, 0xf

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 5921
    .end local v1           #element:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRating()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5922
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemRating()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v3, v4

    .line 5925
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemNumberOfRatings()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5926
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemNumberOfRatings()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 5929
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyDocid()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5930
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getFinskyDocid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5933
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyFetchDocid()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5934
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getFinskyFetchDocid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5937
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasIsFromSoundSearch()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5938
    const/16 v4, 0x14

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getIsFromSoundSearch()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 5941
    :cond_12
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasAppItem()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5942
    const/16 v4, 0x15

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getAppItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5946
    :cond_13
    const/4 v0, 0x0

    .line 5947
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getIntentFlagList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5948
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 5951
    .end local v1           #element:Ljava/lang/Integer;
    :cond_14
    add-int/2addr v3, v0

    .line 5952
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getIntentFlagList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 5954
    iput v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->cachedSize:I

    .line 5955
    return v3
.end method

.method public getSuggestedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5477
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5714
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5494
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppItem()Z
    .locals 1

    .prologue
    .line 5457
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasAppItem:Z

    return v0
.end method

.method public hasBookItem()Z
    .locals 1

    .prologue
    .line 5437
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasBookItem:Z

    return v0
.end method

.method public hasFinskyDocid()Z
    .locals 1

    .prologue
    .line 5664
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyDocid:Z

    return v0
.end method

.method public hasFinskyFetchDocid()Z
    .locals 1

    .prologue
    .line 5681
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyFetchDocid:Z

    return v0
.end method

.method public hasIsFromSoundSearch()Z
    .locals 1

    .prologue
    .line 5698
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasIsFromSoundSearch:Z

    return v0
.end method

.method public hasItemImage()Z
    .locals 1

    .prologue
    .line 5512
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImage:Z

    return v0
.end method

.method public hasItemImageUrl()Z
    .locals 1

    .prologue
    .line 5529
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImageUrl:Z

    return v0
.end method

.method public hasItemNumberOfRatings()Z
    .locals 1

    .prologue
    .line 5647
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemNumberOfRatings:Z

    return v0
.end method

.method public hasItemOwnedByUser()Z
    .locals 1

    .prologue
    .line 5563
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemOwnedByUser:Z

    return v0
.end method

.method public hasItemPreviewUrl()Z
    .locals 1

    .prologue
    .line 5546
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemPreviewUrl:Z

    return v0
.end method

.method public hasItemRating()Z
    .locals 1

    .prologue
    .line 5630
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRating:Z

    return v0
.end method

.method public hasItemRemainingRentalSeconds()Z
    .locals 1

    .prologue
    .line 5580
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRemainingRentalSeconds:Z

    return v0
.end method

.method public hasMediaSource()Z
    .locals 1

    .prologue
    .line 5381
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMediaSource:Z

    return v0
.end method

.method public hasMovieItem()Z
    .locals 1

    .prologue
    .line 5417
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMovieItem:Z

    return v0
.end method

.method public hasMusicItem()Z
    .locals 1

    .prologue
    .line 5397
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMusicItem:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 5364
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasName:Z

    return v0
.end method

.method public hasSuggestedQuery()Z
    .locals 1

    .prologue
    .line 5478
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasSuggestedQuery:Z

    return v0
.end method

.method public hasTarget()Z
    .locals 1

    .prologue
    .line 5715
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasTarget:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 5495
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5781
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5963
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5964
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5968
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5969
    :sswitch_0
    return-object p0

    .line 5974
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 5978
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setMediaSource(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 5982
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 5986
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setTarget(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 5990
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;-><init>()V

    .line 5991
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5992
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setMusicItem(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 5996
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;-><init>()V

    .line 5997
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5998
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setMovieItem(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 6002
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    :sswitch_7
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;-><init>()V

    .line 6003
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6004
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setBookItem(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 6008
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setSuggestedQuery(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 6012
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setItemImage(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 6016
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setItemImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 6020
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setItemPreviewUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 6024
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setItemOwnedByUser(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto :goto_0

    .line 6028
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setItemRemainingRentalSeconds(J)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto/16 :goto_0

    .line 6032
    :sswitch_e
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;-><init>()V

    .line 6033
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6034
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->addItemPriceTag(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto/16 :goto_0

    .line 6038
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setItemRating(D)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto/16 :goto_0

    .line 6042
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setItemNumberOfRatings(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto/16 :goto_0

    .line 6046
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setFinskyDocid(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto/16 :goto_0

    .line 6050
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setFinskyFetchDocid(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto/16 :goto_0

    .line 6054
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setIsFromSoundSearch(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto/16 :goto_0

    .line 6058
    :sswitch_14
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;-><init>()V

    .line 6059
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6060
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->setAppItem(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto/16 :goto_0

    .line 6064
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->addIntentFlag(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    goto/16 :goto_0

    .line 5964
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x68 -> :sswitch_c
        0x70 -> :sswitch_d
        0x7a -> :sswitch_e
        0x81 -> :sswitch_f
        0x88 -> :sswitch_10
        0x92 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa0 -> :sswitch_13
        0xaa -> :sswitch_14
        0xb0 -> :sswitch_15
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
    .line 4451
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    move-result-object v0

    return-object v0
.end method

.method public setAppItem(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5460
    if-nez p1, :cond_0

    .line 5461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5463
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasAppItem:Z

    .line 5464
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 5465
    return-object p0
.end method

.method public setBookItem(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5440
    if-nez p1, :cond_0

    .line 5441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5443
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasBookItem:Z

    .line 5444
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 5445
    return-object p0
.end method

.method public setFinskyDocid(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyDocid:Z

    .line 5667
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    .line 5668
    return-object p0
.end method

.method public setFinskyFetchDocid(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyFetchDocid:Z

    .line 5684
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    .line 5685
    return-object p0
.end method

.method public setIntentFlag(II)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5739
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5740
    return-object p0
.end method

.method public setIsFromSoundSearch(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasIsFromSoundSearch:Z

    .line 5701
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    .line 5702
    return-object p0
.end method

.method public setItemImage(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImage:Z

    .line 5515
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5516
    return-object p0
.end method

.method public setItemImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImageUrl:Z

    .line 5532
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    .line 5533
    return-object p0
.end method

.method public setItemNumberOfRatings(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemNumberOfRatings:Z

    .line 5650
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    .line 5651
    return-object p0
.end method

.method public setItemOwnedByUser(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemOwnedByUser:Z

    .line 5566
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemOwnedByUser_:Z

    .line 5567
    return-object p0
.end method

.method public setItemPreviewUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemPreviewUrl:Z

    .line 5549
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    .line 5550
    return-object p0
.end method

.method public setItemPriceTag(ILcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5604
    if-nez p2, :cond_0

    .line 5605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5607
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5608
    return-object p0
.end method

.method public setItemRating(D)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRating:Z

    .line 5633
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    .line 5634
    return-object p0
.end method

.method public setItemRemainingRentalSeconds(J)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRemainingRentalSeconds:Z

    .line 5583
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    .line 5584
    return-object p0
.end method

.method public setMediaSource(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMediaSource:Z

    .line 5384
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    .line 5385
    return-object p0
.end method

.method public setMovieItem(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5420
    if-nez p1, :cond_0

    .line 5421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5423
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMovieItem:Z

    .line 5424
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 5425
    return-object p0
.end method

.method public setMusicItem(Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5400
    if-nez p1, :cond_0

    .line 5401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5403
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMusicItem:Z

    .line 5404
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem_:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 5405
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasName:Z

    .line 5367
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    .line 5368
    return-object p0
.end method

.method public setSuggestedQuery(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasSuggestedQuery:Z

    .line 5481
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    .line 5482
    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasTarget:Z

    .line 5718
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    .line 5719
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasUrl:Z

    .line 5498
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    .line 5499
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
    .line 5787
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5788
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5790
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMediaSource()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5791
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getMediaSource()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5793
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5794
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5796
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5797
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5799
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMusicItem()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5800
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getMusicItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5802
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasMovieItem()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5803
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getMovieItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5805
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasBookItem()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5806
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getBookItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5808
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasSuggestedQuery()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5809
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5811
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5812
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemImage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 5814
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemImageUrl()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5815
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5817
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemPreviewUrl()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5818
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemPreviewUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5820
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemOwnedByUser()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5821
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemOwnedByUser()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5823
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRemainingRentalSeconds()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5824
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemRemainingRentalSeconds()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 5826
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemPriceTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    .line 5827
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 5829
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemRating()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5830
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemRating()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 5832
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasItemNumberOfRatings()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5833
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getItemNumberOfRatings()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5835
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyDocid()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5836
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getFinskyDocid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5838
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasFinskyFetchDocid()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5839
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getFinskyFetchDocid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5841
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasIsFromSoundSearch()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5842
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getIsFromSoundSearch()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5844
    :cond_12
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->hasAppItem()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5845
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getAppItem()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5847
    :cond_13
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->getIntentFlagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5848
    .local v0, element:Ljava/lang/Integer;
    const/16 v2, 0x16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_1

    .line 5850
    .end local v0           #element:Ljava/lang/Integer;
    :cond_14
    return-void
.end method

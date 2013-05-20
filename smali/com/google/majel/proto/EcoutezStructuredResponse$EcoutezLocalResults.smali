.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EcoutezLocalResults"
.end annotation


# static fields
.field public static final ACTION_TYPE_CALL:I = 0x4

.field public static final ACTION_TYPE_DIRECTIONS:I = 0x2

.field public static final ACTION_TYPE_FIELD_NUMBER:I = 0x3

.field public static final ACTION_TYPE_MAP:I = 0x1

.field public static final ACTION_TYPE_NAVIGATION:I = 0x3

.field public static final ACTION_TYPE_REMINDER:I = 0x5

.field public static final LOCAL_RESULT_FIELD_NUMBER:I = 0x1

.field public static final MAPS_URL_FIELD_NUMBER:I = 0x6

.field public static final ORIGIN_FIELD_NUMBER:I = 0x4

.field public static final PREVIEW_IMAGE_FIELD_NUMBER:I = 0x7

.field public static final PREVIEW_IMAGE_URL_FIELD_NUMBER:I = 0x2

.field public static final TRANSPORTATION_METHOD_FIELD_NUMBER:I = 0x5


# instance fields
.field private actionType_:I

.field private cachedSize:I

.field private hasActionType:Z

.field private hasMapsUrl:Z

.field private hasPreviewImage:Z

.field private hasPreviewImageUrl:Z

.field private hasTransportationMethod:Z

.field private localResult_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;",
            ">;"
        }
    .end annotation
.end field

.field private mapsUrl_:Ljava/lang/String;

.field private origin_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;",
            ">;"
        }
    .end annotation
.end field

.field private previewImageUrl_:Ljava/lang/String;

.field private previewImage_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private transportationMethod_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5058
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5069
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult_:Ljava/util/List;

    .line 5102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin_:Ljava/util/List;

    .line 5136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    .line 5153
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    .line 5187
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    .line 5204
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    .line 5260
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->cachedSize:I

    .line 5058
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5364
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5358
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    return-object v0
.end method


# virtual methods
.method public addLocalResult(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "value"

    .prologue
    .line 5086
    if-nez p1, :cond_0

    .line 5087
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5089
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult_:Ljava/util/List;

    .line 5092
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5093
    return-object p0
.end method

.method public addOrigin(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "value"

    .prologue
    .line 5119
    if-nez p1, :cond_0

    .line 5120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5122
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin_:Ljava/util/List;

    .line 5125
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5126
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 5219
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->clearLocalResult()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 5220
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->clearOrigin()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 5221
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->clearPreviewImageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 5222
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->clearPreviewImage()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 5223
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->clearMapsUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 5224
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->clearActionType()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 5225
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->clearTransportationMethod()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 5226
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->cachedSize:I

    .line 5227
    return-object p0
.end method

.method public clearActionType()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5196
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasActionType:Z

    .line 5197
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    .line 5198
    return-object p0
.end method

.method public clearLocalResult()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 5096
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult_:Ljava/util/List;

    .line 5097
    return-object p0
.end method

.method public clearMapsUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 5179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasMapsUrl:Z

    .line 5180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    .line 5181
    return-object p0
.end method

.method public clearOrigin()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 5129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin_:Ljava/util/List;

    .line 5130
    return-object p0
.end method

.method public clearPreviewImage()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 5162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImage:Z

    .line 5163
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5164
    return-object p0
.end method

.method public clearPreviewImageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 5145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImageUrl:Z

    .line 5146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    .line 5147
    return-object p0
.end method

.method public clearTransportationMethod()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5213
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasTransportationMethod:Z

    .line 5214
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    .line 5215
    return-object p0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 5188
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5263
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->cachedSize:I

    if-gez v0, :cond_0

    .line 5265
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getSerializedSize()I

    .line 5267
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->cachedSize:I

    return v0
.end method

.method public getLocalResult(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "index"

    .prologue
    .line 5076
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    return-object v0
.end method

.method public getLocalResultCount()I
    .locals 1

    .prologue
    .line 5074
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLocalResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5072
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult_:Ljava/util/List;

    return-object v0
.end method

.method public getMapsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5171
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "index"

    .prologue
    .line 5109
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    return-object v0
.end method

.method public getOriginCount()I
    .locals 1

    .prologue
    .line 5107
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOriginList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5105
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin_:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewImage()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 5154
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5137
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 5272
    const/4 v2, 0x0

    .line 5273
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getLocalResultList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 5274
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 5277
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImageUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5278
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5281
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasActionType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5282
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getActionType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5285
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getOriginList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 5286
    .restart local v0       #element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 5289
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasTransportationMethod()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5290
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getTransportationMethod()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5293
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasMapsUrl()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5294
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getMapsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5297
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5298
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getPreviewImage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5301
    :cond_6
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->cachedSize:I

    .line 5302
    return v2
.end method

.method public getTransportationMethod()I
    .locals 1

    .prologue
    .line 5205
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    return v0
.end method

.method public hasActionType()Z
    .locals 1

    .prologue
    .line 5189
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasActionType:Z

    return v0
.end method

.method public hasMapsUrl()Z
    .locals 1

    .prologue
    .line 5172
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasMapsUrl:Z

    return v0
.end method

.method public hasPreviewImage()Z
    .locals 1

    .prologue
    .line 5155
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImage:Z

    return v0
.end method

.method public hasPreviewImageUrl()Z
    .locals 1

    .prologue
    .line 5138
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImageUrl:Z

    return v0
.end method

.method public hasTransportationMethod()Z
    .locals 1

    .prologue
    .line 5206
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasTransportationMethod:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5231
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5310
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5311
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5315
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5316
    :sswitch_0
    return-object p0

    .line 5321
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    .line 5322
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5323
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->addLocalResult(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    goto :goto_0

    .line 5327
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    goto :goto_0

    .line 5331
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->setActionType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    goto :goto_0

    .line 5335
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    .line 5336
    .restart local v1       #value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5337
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->addOrigin(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    goto :goto_0

    .line 5341
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->setTransportationMethod(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    goto :goto_0

    .line 5345
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->setMapsUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    goto :goto_0

    .line 5349
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->setPreviewImage(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    goto :goto_0

    .line 5311
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 5055
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    move-result-object v0

    return-object v0
.end method

.method public setActionType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "value"

    .prologue
    .line 5191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasActionType:Z

    .line 5192
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    .line 5193
    return-object p0
.end method

.method public setLocalResult(ILcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5079
    if-nez p2, :cond_0

    .line 5080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5082
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5083
    return-object p0
.end method

.method public setMapsUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "value"

    .prologue
    .line 5174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasMapsUrl:Z

    .line 5175
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    .line 5176
    return-object p0
.end method

.method public setOrigin(ILcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5112
    if-nez p2, :cond_0

    .line 5113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5115
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5116
    return-object p0
.end method

.method public setPreviewImage(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "value"

    .prologue
    .line 5157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImage:Z

    .line 5158
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5159
    return-object p0
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "value"

    .prologue
    .line 5140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImageUrl:Z

    .line 5141
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    .line 5142
    return-object p0
.end method

.method public setTransportationMethod(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .parameter "value"

    .prologue
    .line 5208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasTransportationMethod:Z

    .line 5209
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    .line 5210
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
    .line 5237
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getLocalResultList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 5238
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 5240
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImageUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5241
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5243
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasActionType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5244
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getActionType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5246
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getOriginList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 5247
    .restart local v0       #element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 5249
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasTransportationMethod()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5250
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getTransportationMethod()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5252
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasMapsUrl()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5253
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getMapsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5255
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->hasPreviewImage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5256
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->getPreviewImage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 5258
    :cond_6
    return-void
.end method

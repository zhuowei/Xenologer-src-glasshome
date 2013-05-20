.class public final Lcom/google/majel/proto/ActionV2Protos$Location;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x5

.field public static final ADDRESS_FOR_MAP_IMAGE_URL_FIELD_NUMBER:I = 0xb

.field public static final ALIAS_FIELD_NUMBER:I = 0xa

.field public static final CLUSTER_ID_FIELD_NUMBER:I = 0x7

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final LAT_DEGREES_FIELD_NUMBER:I = 0x1

.field public static final LAT_SPAN_DEGREES_FIELD_NUMBER:I = 0x8

.field public static final LNG_DEGREES_FIELD_NUMBER:I = 0x2

.field public static final LNG_SPAN_DEGREES_FIELD_NUMBER:I = 0x9

.field public static final MAPS_URL_FIELD_NUMBER:I = 0x4

.field public static final ORIGINAL_DESCRIPTION_FIELD_NUMBER:I = 0x6


# instance fields
.field private addressForMapImageUrl_:Ljava/lang/String;

.field private address_:Ljava/lang/String;

.field private alias_:Lcom/google/majel/proto/AliasProto$Alias;

.field private cachedSize:I

.field private clusterId_:Ljava/lang/String;

.field private description_:Ljava/lang/String;

.field private hasAddress:Z

.field private hasAddressForMapImageUrl:Z

.field private hasAlias:Z

.field private hasClusterId:Z

.field private hasDescription:Z

.field private hasLatDegrees:Z

.field private hasLatSpanDegrees:Z

.field private hasLngDegrees:Z

.field private hasLngSpanDegrees:Z

.field private hasMapsUrl:Z

.field private hasOriginalDescription:Z

.field private latDegrees_:D

.field private latSpanDegrees_:D

.field private lngDegrees_:D

.field private lngSpanDegrees_:D

.field private mapsUrl_:Ljava/lang/String;

.field private originalDescription_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1175
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1180
    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    .line 1197
    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    .line 1214
    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    .line 1231
    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    .line 1248
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    .line 1265
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    .line 1282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    .line 1299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    .line 1316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    .line 1333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    .line 1350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias_:Lcom/google/majel/proto/AliasProto$Alias;

    .line 1425
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->cachedSize:I

    .line 1175
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1559
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1553
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearLatDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1369
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearLngDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1370
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearLatSpanDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1371
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearLngSpanDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1372
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearDescription()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1373
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearOriginalDescription()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1374
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearMapsUrl()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1375
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearAddress()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1376
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearAddressForMapImageUrl()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1377
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearClusterId()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1378
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clearAlias()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1379
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->cachedSize:I

    .line 1380
    return-object p0
.end method

.method public clearAddress()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddress:Z

    .line 1309
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    .line 1310
    return-object p0
.end method

.method public clearAddressForMapImageUrl()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddressForMapImageUrl:Z

    .line 1326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    .line 1327
    return-object p0
.end method

.method public clearAlias()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAlias:Z

    .line 1363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias_:Lcom/google/majel/proto/AliasProto$Alias;

    .line 1364
    return-object p0
.end method

.method public clearClusterId()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasClusterId:Z

    .line 1343
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    .line 1344
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasDescription:Z

    .line 1258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    .line 1259
    return-object p0
.end method

.method public clearLatDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatDegrees:Z

    .line 1190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    .line 1191
    return-object p0
.end method

.method public clearLatSpanDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatSpanDegrees:Z

    .line 1224
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    .line 1225
    return-object p0
.end method

.method public clearLngDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngDegrees:Z

    .line 1207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    .line 1208
    return-object p0
.end method

.method public clearLngSpanDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngSpanDegrees:Z

    .line 1241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    .line 1242
    return-object p0
.end method

.method public clearMapsUrl()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasMapsUrl:Z

    .line 1292
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    .line 1293
    return-object p0
.end method

.method public clearOriginalDescription()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasOriginalDescription:Z

    .line 1275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    .line 1276
    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressForMapImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias_:Lcom/google/majel/proto/AliasProto$Alias;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->cachedSize:I

    if-gez v0, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getSerializedSize()I

    .line 1432
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->cachedSize:I

    return v0
.end method

.method public getClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatDegrees()D
    .locals 2

    .prologue
    .line 1181
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    return-wide v0
.end method

.method public getLatSpanDegrees()D
    .locals 2

    .prologue
    .line 1215
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    return-wide v0
.end method

.method public getLngDegrees()D
    .locals 2

    .prologue
    .line 1198
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    return-wide v0
.end method

.method public getLngSpanDegrees()D
    .locals 2

    .prologue
    .line 1232
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    return-wide v0
.end method

.method public getMapsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1437
    const/4 v0, 0x0

    .line 1438
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatDegrees()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatDegrees()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngDegrees()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1443
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngDegrees()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1446
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1447
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1450
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasMapsUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1451
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getMapsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1454
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1455
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1458
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasOriginalDescription()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1459
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getOriginalDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1462
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasClusterId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1463
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1466
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatSpanDegrees()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1467
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatSpanDegrees()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1470
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngSpanDegrees()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1471
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngSpanDegrees()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1474
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAlias()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1475
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAlias()Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1478
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddressForMapImageUrl()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1479
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddressForMapImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1482
    :cond_a
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->cachedSize:I

    .line 1483
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 1301
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddress:Z

    return v0
.end method

.method public hasAddressForMapImageUrl()Z
    .locals 1

    .prologue
    .line 1318
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddressForMapImageUrl:Z

    return v0
.end method

.method public hasAlias()Z
    .locals 1

    .prologue
    .line 1351
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAlias:Z

    return v0
.end method

.method public hasClusterId()Z
    .locals 1

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasClusterId:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 1250
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasDescription:Z

    return v0
.end method

.method public hasLatDegrees()Z
    .locals 1

    .prologue
    .line 1182
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatDegrees:Z

    return v0
.end method

.method public hasLatSpanDegrees()Z
    .locals 1

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatSpanDegrees:Z

    return v0
.end method

.method public hasLngDegrees()Z
    .locals 1

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngDegrees:Z

    return v0
.end method

.method public hasLngSpanDegrees()Z
    .locals 1

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngSpanDegrees:Z

    return v0
.end method

.method public hasMapsUrl()Z
    .locals 1

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasMapsUrl:Z

    return v0
.end method

.method public hasOriginalDescription()Z
    .locals 1

    .prologue
    .line 1267
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasOriginalDescription:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1384
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1491
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1492
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1496
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$Location;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1497
    :sswitch_0
    return-object p0

    .line 1502
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/ActionV2Protos$Location;->setLatDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1506
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/ActionV2Protos$Location;->setLngDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1510
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$Location;->setDescription(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1514
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$Location;->setMapsUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1518
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$Location;->setAddress(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1522
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$Location;->setOriginalDescription(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1526
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$Location;->setClusterId(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1530
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/ActionV2Protos$Location;->setLatSpanDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1534
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/ActionV2Protos$Location;->setLngSpanDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1538
    :sswitch_a
    new-instance v1, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v1}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    .line 1539
    .local v1, value:Lcom/google/majel/proto/AliasProto$Alias;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1540
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$Location;->setAlias(Lcom/google/majel/proto/AliasProto$Alias;)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1544
    .end local v1           #value:Lcom/google/majel/proto/AliasProto$Alias;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$Location;->setAddressForMapImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 1492
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x41 -> :sswitch_8
        0x49 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
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
    .line 1172
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$Location;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddress:Z

    .line 1304
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    .line 1305
    return-object p0
.end method

.method public setAddressForMapImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddressForMapImageUrl:Z

    .line 1321
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    .line 1322
    return-object p0
.end method

.method public setAlias(Lcom/google/majel/proto/AliasProto$Alias;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1354
    if-nez p1, :cond_0

    .line 1355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1357
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAlias:Z

    .line 1358
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias_:Lcom/google/majel/proto/AliasProto$Alias;

    .line 1359
    return-object p0
.end method

.method public setClusterId(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasClusterId:Z

    .line 1338
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    .line 1339
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasDescription:Z

    .line 1253
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    .line 1254
    return-object p0
.end method

.method public setLatDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatDegrees:Z

    .line 1185
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    .line 1186
    return-object p0
.end method

.method public setLatSpanDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatSpanDegrees:Z

    .line 1219
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    .line 1220
    return-object p0
.end method

.method public setLngDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngDegrees:Z

    .line 1202
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    .line 1203
    return-object p0
.end method

.method public setLngSpanDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngSpanDegrees:Z

    .line 1236
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    .line 1237
    return-object p0
.end method

.method public setMapsUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasMapsUrl:Z

    .line 1287
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    .line 1288
    return-object p0
.end method

.method public setOriginalDescription(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->hasOriginalDescription:Z

    .line 1270
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    .line 1271
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatDegrees()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatDegrees()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngDegrees()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngDegrees()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 1396
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1397
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1399
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasMapsUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1400
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getMapsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1402
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1403
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1405
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasOriginalDescription()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1406
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getOriginalDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1408
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasClusterId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1409
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1411
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatSpanDegrees()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1412
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatSpanDegrees()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 1414
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngSpanDegrees()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1415
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngSpanDegrees()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 1417
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAlias()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1418
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAlias()Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1420
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddressForMapImageUrl()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1421
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddressForMapImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1423
    :cond_a
    return-void
.end method

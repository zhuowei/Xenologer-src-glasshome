.class public Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$SpeechLocationHelperImpl;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParamsBuilder.java"

# interfaces
.implements Lcom/google/android/speech/helper/SpeechLocationHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeechLocationHelperImpl"
.end annotation


# static fields
.field private static final E7:D = 1.0E7

.field private static final LOCATION_PREFIX:Ljava/lang/String; = "w "

.field private static final MILLIMETERS_IN_A_METER:D = 1000.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXGeoLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 12
    .parameter "location"

    .prologue
    const-wide v10, 0x416312d000000000L

    .line 133
    new-instance v5, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    .line 135
    .local v5, locationBuilder:Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    new-instance v2, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v2}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 137
    .local v2, latLngBuilder:Llocation/unified/LocationDescriptorProto$LatLng;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 138
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 140
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v2, v8}, Llocation/unified/LocationDescriptorProto$LatLng;->setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 141
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v2, v8}, Llocation/unified/LocationDescriptorProto$LatLng;->setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 142
    invoke-virtual {v5, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLatlng(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 143
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    .line 144
    .local v6, timestampMs:J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setTimestamp(J)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 146
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v8, v10

    double-to-float v8, v8

    invoke-virtual {v5, v8}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRadius(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 162
    const-string v8, "levelId"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    const-string v8, "levelId"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, levelId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$SpeechLocationHelperImpl;->parseFeatureId(Ljava/lang/String;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v1

    .line 165
    .local v1, id:Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v5, v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLevelFeatureId(Llocation/unified/LocationDescriptorProto$FeatureIdProto;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 175
    .end local v1           #id:Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .end local v3           #levelId:Ljava/lang/String;
    :cond_1
    const-string v8, "levelNumberE3"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 176
    const-string v8, "levelNumberE3"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 177
    .local v4, levelNumberE3:I
    int-to-float v8, v4

    const/high16 v9, 0x447a

    div-float/2addr v8, v9

    invoke-virtual {v5, v8}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLevelNumber(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 181
    .end local v4           #levelNumberE3:I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "w "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->toByteArray()[B

    move-result-object v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static isFirstBitSet(Ljava/lang/String;)Z
    .locals 4
    .parameter "value"

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 245
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 246
    .local v0, firstNumber:I
    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    .line 247
    const/4 v1, 0x1

    .line 250
    .end local v0           #firstNumber:I
    :cond_0
    return v1
.end method

.method private static maskFirstBit(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, firstNumber:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v2, v0, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseFeatureId(Ljava/lang/String;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 192
    if-nez p0, :cond_0

    .line 193
    invoke-static {}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null FeatureId"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 212
    :goto_0
    return-object v1

    .line 197
    :cond_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, split:[Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v5, :cond_1

    aget-object v4, v2, v6

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v2, v7

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    :try_start_0
    new-instance v1, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;-><init>()V

    .line 202
    .local v1, result:Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$SpeechLocationHelperImpl;->parseHexUnsignedLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->setCellId(J)Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 203
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$SpeechLocationHelperImpl;->parseHexUnsignedLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->setFprint(J)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v1           #result:Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid FeatureId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 208
    goto :goto_0

    .line 211
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid FeatureId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 212
    goto :goto_0
.end method

.method public static parseHexUnsignedLong(Ljava/lang/String;)J
    .locals 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 224
    invoke-static {p0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$SpeechLocationHelperImpl;->isFirstBitSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {p0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$SpeechLocationHelperImpl;->maskFirstBit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, newValue:Ljava/lang/String;
    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000

    add-long/2addr v1, v3

    .line 228
    .end local v0           #newValue:Ljava/lang/String;
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_0
.end method


# virtual methods
.method public getXGeoLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/google/glass/location/LocationHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 125
    .local v0, location:Landroid/location/Location;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$SpeechLocationHelperImpl;->getXGeoLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldSendLocation()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherCondition"
.end annotation


# static fields
.field public static final CONDITION_TYPE_CLEAR:I = 0xa

.field public static final CONDITION_TYPE_CLOUDY:I = 0x2f

.field public static final CONDITION_TYPE_FOG:I = 0x55

.field public static final CONDITION_TYPE_HEAVY_RAIN:I = 0x57

.field public static final CONDITION_TYPE_HEAVY_SNOW:I = 0x58

.field public static final CONDITION_TYPE_LIGHT_RAIN:I = 0xa2

.field public static final CONDITION_TYPE_LIGHT_SNOW:I = 0x94

.field public static final CONDITION_TYPE_MIST:I = 0x102

.field public static final CONDITION_TYPE_PARTLY_CLOUDY:I = 0x106

.field public static final CONDITION_TYPE_RAIN:I = 0x5e

.field public static final CONDITION_TYPE_SLEET:I = 0x91

.field public static final CONDITION_TYPE_SNOW:I = 0x75

.field public static final CONDITION_TYPE_SUNNY:I = 0x8a

.field public static final CONDITION_TYPE_THUNDERSTORM:I = 0x8b

.field public static final CONDITION_TYPE_UNKNOWN:I = 0x0

.field public static final CONDITION_TYPE_WINDY:I = 0x123

.field public static final IMAGE_HEIGHT_FIELD_NUMBER:I = 0x5

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x3

.field public static final IMAGE_WIDTH_FIELD_NUMBER:I = 0x4

.field public static final TEXT_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasImageHeight:Z

.field private hasImageUrl:Z

.field private hasImageWidth:Z

.field private hasText:Z

.field private hasType:Z

.field private imageHeight_:I

.field private imageUrl_:Ljava/lang/String;

.field private imageWidth_:I

.field private text_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 188
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    .line 239
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    .line 256
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->cachedSize:I

    .line 165
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->clearType()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 272
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->clearText()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 273
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->clearImageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 274
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->clearImageWidth()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 275
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->clearImageHeight()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->cachedSize:I

    .line 277
    return-object p0
.end method

.method public clearImageHeight()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageHeight:Z

    .line 266
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    .line 267
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageUrl:Z

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public clearImageWidth()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageWidth:Z

    .line 249
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    .line 250
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasText:Z

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasType:Z

    .line 198
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    .line 199
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->cachedSize:I

    if-gez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getSerializedSize()I

    .line 311
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->cachedSize:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageWidth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageHeight()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->cachedSize:I

    .line 338
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    return v0
.end method

.method public hasImageHeight()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageHeight:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageUrl:Z

    return v0
.end method

.method public hasImageWidth()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageWidth:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasText:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 347
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 351
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    :sswitch_0
    return-object p0

    .line 357
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->setType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    goto :goto_0

    .line 361
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->setText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    goto :goto_0

    .line 365
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->setImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    goto :goto_0

    .line 369
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->setImageWidth(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    goto :goto_0

    .line 373
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->setImageHeight(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    goto :goto_0

    .line 347
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 162
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v0

    return-object v0
.end method

.method public setImageHeight(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .parameter "value"

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageHeight:Z

    .line 261
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    .line 262
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .parameter "value"

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageUrl:Z

    .line 227
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setImageWidth(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .parameter "value"

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageWidth:Z

    .line 244
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    .line 245
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .parameter "value"

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasText:Z

    .line 210
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public setType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .parameter "value"

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasType:Z

    .line 193
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    .line 194
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageWidth()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 299
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->hasImageHeight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->getImageHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 302
    :cond_4
    return-void
.end method

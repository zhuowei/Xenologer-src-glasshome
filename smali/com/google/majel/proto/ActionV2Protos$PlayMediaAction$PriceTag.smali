.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PriceTag"
.end annotation


# static fields
.field public static final PRICE_FIELD_NUMBER:I = 0x2

.field public static final PRICE_TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasPrice:Z

.field private hasPriceType:Z

.field private priceType_:Ljava/lang/String;

.field private price_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5236
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    .line 5258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    .line 5294
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->cachedSize:I

    .line 5236
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1

    .prologue
    .line 5273
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->clearPriceType()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    .line 5274
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->clearPrice()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    .line 5275
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->cachedSize:I

    .line 5276
    return-object p0
.end method

.method public clearPrice()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1

    .prologue
    .line 5267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPrice:Z

    .line 5268
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    .line 5269
    return-object p0
.end method

.method public clearPriceType()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1

    .prologue
    .line 5250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPriceType:Z

    .line 5251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    .line 5252
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5297
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->cachedSize:I

    if-gez v0, :cond_0

    .line 5299
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->getSerializedSize()I

    .line 5301
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->cachedSize:I

    return v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5259
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5242
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5306
    const/4 v0, 0x0

    .line 5307
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPriceType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5308
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->getPriceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5311
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPrice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5312
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5315
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->cachedSize:I

    .line 5316
    return v0
.end method

.method public hasPrice()Z
    .locals 1

    .prologue
    .line 5260
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPrice:Z

    return v0
.end method

.method public hasPriceType()Z
    .locals 1

    .prologue
    .line 5243
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPriceType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5280
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5324
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5325
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5329
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5330
    :sswitch_0
    return-object p0

    .line 5335
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->setPriceType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    goto :goto_0

    .line 5339
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->setPrice(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    goto :goto_0

    .line 5325
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 5233
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5354
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5348
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    return-object v0
.end method

.method public setPrice(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1
    .parameter "value"

    .prologue
    .line 5262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPrice:Z

    .line 5263
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->price_:Ljava/lang/String;

    .line 5264
    return-object p0
.end method

.method public setPriceType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .locals 1
    .parameter "value"

    .prologue
    .line 5245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPriceType:Z

    .line 5246
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->priceType_:Ljava/lang/String;

    .line 5247
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
    .line 5286
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPriceType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5287
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->getPriceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5289
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5290
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5292
    :cond_1
    return-void
.end method

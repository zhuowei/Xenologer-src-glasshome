.class public final Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ClientInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowserParams"
.end annotation


# static fields
.field public static final GOOGLE_DOMAIN_FIELD_NUMBER:I = 0x4

.field public static final HEIGHT_PIXELS_FIELD_NUMBER:I = 0x2

.field public static final SEARCH_LANGUAGE_FIELD_NUMBER:I = 0x5

.field public static final USER_AGENT_FIELD_NUMBER:I = 0x3

.field public static final USE_METRIC_UNITS_FIELD_NUMBER:I = 0x6

.field public static final USE_PRECISE_GEOLOCATION_FIELD_NUMBER:I = 0x7

.field public static final WIDTH_PIXELS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private googleDomain_:Ljava/lang/String;

.field private hasGoogleDomain:Z

.field private hasHeightPixels:Z

.field private hasSearchLanguage:Z

.field private hasUseMetricUnits:Z

.field private hasUsePreciseGeolocation:Z

.field private hasUserAgent:Z

.field private hasWidthPixels:Z

.field private heightPixels_:I

.field private searchLanguage_:Ljava/lang/String;

.field private useMetricUnits_:Z

.field private usePreciseGeolocation_:Z

.field private userAgent_:Ljava/lang/String;

.field private widthPixels_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 233
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    .line 250
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    .line 318
    iput-boolean v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->cachedSize:I

    .line 228
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->clearWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 351
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->clearHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 352
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->clearUserAgent()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 353
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->clearGoogleDomain()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 354
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->clearSearchLanguage()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 355
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->clearUseMetricUnits()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 356
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->clearUsePreciseGeolocation()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 357
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->cachedSize:I

    .line 358
    return-object p0
.end method

.method public clearGoogleDomain()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasGoogleDomain:Z

    .line 294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    .line 295
    return-object p0
.end method

.method public clearHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasHeightPixels:Z

    .line 260
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    .line 261
    return-object p0
.end method

.method public clearSearchLanguage()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasSearchLanguage:Z

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public clearUseMetricUnits()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUseMetricUnits:Z

    .line 328
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    .line 329
    return-object p0
.end method

.method public clearUsePreciseGeolocation()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUsePreciseGeolocation:Z

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    .line 346
    return-object p0
.end method

.method public clearUserAgent()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUserAgent:Z

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    .line 278
    return-object p0
.end method

.method public clearWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasWidthPixels:Z

    .line 243
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    .line 244
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getSerializedSize()I

    .line 398
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->cachedSize:I

    return v0
.end method

.method public getGoogleDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    return v0
.end method

.method public getSearchLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasWidthPixels()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getWidthPixels()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasHeightPixels()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getHeightPixels()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUserAgent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasGoogleDomain()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getGoogleDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasSearchLanguage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 421
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getSearchLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUseMetricUnits()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 425
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getUseMetricUnits()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUsePreciseGeolocation()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 429
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getUsePreciseGeolocation()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_6
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->cachedSize:I

    .line 433
    return v0
.end method

.method public getUseMetricUnits()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    return v0
.end method

.method public getUsePreciseGeolocation()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    return v0
.end method

.method public hasGoogleDomain()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasGoogleDomain:Z

    return v0
.end method

.method public hasHeightPixels()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasHeightPixels:Z

    return v0
.end method

.method public hasSearchLanguage()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasSearchLanguage:Z

    return v0
.end method

.method public hasUseMetricUnits()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUseMetricUnits:Z

    return v0
.end method

.method public hasUsePreciseGeolocation()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUsePreciseGeolocation:Z

    return v0
.end method

.method public hasUserAgent()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUserAgent:Z

    return v0
.end method

.method public hasWidthPixels()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasWidthPixels:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 442
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 446
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    :sswitch_0
    return-object p0

    .line 452
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->setWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    goto :goto_0

    .line 456
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->setHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    goto :goto_0

    .line 460
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->setUserAgent(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    goto :goto_0

    .line 464
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->setGoogleDomain(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    goto :goto_0

    .line 468
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->setSearchLanguage(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    goto :goto_0

    .line 472
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->setUseMetricUnits(Z)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    goto :goto_0

    .line 476
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->setUsePreciseGeolocation(Z)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    goto :goto_0

    .line 442
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
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
    .line 225
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    move-result-object v0

    return-object v0
.end method

.method public setGoogleDomain(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasGoogleDomain:Z

    .line 289
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    .line 290
    return-object p0
.end method

.method public setHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasHeightPixels:Z

    .line 255
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    .line 256
    return-object p0
.end method

.method public setSearchLanguage(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasSearchLanguage:Z

    .line 306
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public setUseMetricUnits(Z)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUseMetricUnits:Z

    .line 323
    iput-boolean p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    .line 324
    return-object p0
.end method

.method public setUsePreciseGeolocation(Z)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUsePreciseGeolocation:Z

    .line 340
    iput-boolean p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    .line 341
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUserAgent:Z

    .line 272
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public setWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasWidthPixels:Z

    .line 238
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    .line 239
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
    .line 368
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasWidthPixels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getWidthPixels()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasHeightPixels()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getHeightPixels()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUserAgent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 377
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasGoogleDomain()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getGoogleDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 380
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasSearchLanguage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getSearchLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 383
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUseMetricUnits()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getUseMetricUnits()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 386
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->hasUsePreciseGeolocation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 387
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->getUsePreciseGeolocation()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 389
    :cond_6
    return-void
.end method

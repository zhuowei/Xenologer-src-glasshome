.class public final Lcom/google/majel/proto/MajelProtos$MajelResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MajelProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/MajelProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelResponse"
.end annotation


# static fields
.field public static final DEBUG_FIELD_NUMBER:I = 0x2

.field public static final PEANUT_FIELD_NUMBER:I = 0x1

.field public static final QUERY_ID_FIELD_NUMBER:I = 0x3

.field public static final SET_COOKIE_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private debug_:Ljava/lang/String;

.field private hasDebug:Z

.field private hasQueryId:Z

.field private peanut_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$Peanut;",
            ">;"
        }
    .end annotation
.end field

.field private queryId_:Ljava/lang/String;

.field private setCookie_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CookieProtos$MajelCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut_:Ljava/util/List;

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    .line 298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    .line 314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie_:Ljava/util/List;

    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->cachedSize:I

    .line 243
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    return-object v0
.end method


# virtual methods
.method public addPeanut(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut_:Ljava/util/List;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-object p0
.end method

.method public addSetCookie(Lcom/google/majel/proto/CookieProtos$MajelCookie;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie_:Ljava/util/List;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->clearPeanut()Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 347
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->clearDebug()Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 348
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->clearQueryId()Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 349
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->clearSetCookie()Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->cachedSize:I

    .line 351
    return-object p0
.end method

.method public clearDebug()Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasDebug:Z

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public clearPeanut()Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut_:Ljava/util/List;

    .line 275
    return-object p0
.end method

.method public clearQueryId()Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasQueryId:Z

    .line 308
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public clearSetCookie()Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie_:Ljava/util/List;

    .line 342
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getSerializedSize()I

    .line 382
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->cachedSize:I

    return v0
.end method

.method public getDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    return-object v0
.end method

.method public getPeanut(I)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .parameter "index"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    return-object v0
.end method

.method public getPeanutCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPeanutList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/PeanutProtos$Peanut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut_:Ljava/util/List;

    return-object v0
.end method

.method public getQueryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 387
    const/4 v2, 0x0

    .line 388
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 389
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$Peanut;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 392
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$Peanut;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getDebug()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasQueryId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getQueryId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 400
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getSetCookieList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 401
    .local v0, element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 404
    .end local v0           #element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_3
    iput v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->cachedSize:I

    .line 405
    return v2
.end method

.method public getSetCookie(I)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .parameter "index"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    return-object v0
.end method

.method public getSetCookieCount()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSetCookieList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CookieProtos$MajelCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie_:Ljava/util/List;

    return-object v0
.end method

.method public hasDebug()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasDebug:Z

    return v0
.end method

.method public hasQueryId()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasQueryId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 414
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 418
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    :sswitch_0
    return-object p0

    .line 424
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    .line 425
    .local v1, value:Lcom/google/majel/proto/PeanutProtos$Peanut;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 426
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->addPeanut(Lcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    goto :goto_0

    .line 430
    .end local v1           #value:Lcom/google/majel/proto/PeanutProtos$Peanut;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setDebug(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    goto :goto_0

    .line 434
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setQueryId(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    goto :goto_0

    .line 438
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v1}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    .line 439
    .local v1, value:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 440
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->addSetCookie(Lcom/google/majel/proto/CookieProtos$MajelCookie;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    goto :goto_0

    .line 414
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 240
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v0

    return-object v0
.end method

.method public setDebug(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasDebug:Z

    .line 286
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public setPeanut(ILcom/google/majel/proto/PeanutProtos$Peanut;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 257
    if-nez p2, :cond_0

    .line 258
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-object p0
.end method

.method public setQueryId(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasQueryId:Z

    .line 303
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    .line 304
    return-object p0
.end method

.method public setSetCookie(ILcom/google/majel/proto/CookieProtos$MajelCookie;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 324
    if-nez p2, :cond_0

    .line 325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
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
    .line 361
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 362
    .local v0, element:Lcom/google/majel/proto/PeanutProtos$Peanut;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 364
    .end local v0           #element:Lcom/google/majel/proto/PeanutProtos$Peanut;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getDebug()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->hasQueryId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getQueryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getSetCookieList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 371
    .local v0, element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 373
    .end local v0           #element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_3
    return-void
.end method
